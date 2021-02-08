<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_iklan_lowongan extends CI_Model {

	var $tb_iklan_lowongan 		= 'iklan_lowongan';
	var $tb_perekrutan 			= 'perekrutan';
	var $tb_posisi 				= 'posisi';
	var $tb_divisi 				= 'divisi';
	
	public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}

	public function list_iklan_lowongan()
	{
		$this->db->select('ik.*');
		$this->db->select('COUNT(r.rekrut_id) AS jml_lowongan');
		$this->db->from($this->tb_iklan_lowongan.' ik');
		$this->db->join($this->tb_perekrutan.' r', 'r.iklan_id = ik.iklan_id', 'left');
		$this->db->join($this->tb_posisi.' p', 'r.pos_id = p.pos_id', 'left');
		$this->db->join($this->tb_divisi.' d', 'p.divisi_id = d.divisi_id', 'left');
		$this->db->where('ik.hapus', '0');
		$this->db->group_by('ik.iklan_id');
		$this->db->order_by('ik.tanggal_iklan DESC');
		$query = $this->db->get();

		return $query->result();
	}

	public function detail_iklan_lowongan($iklan_id)
	{
		// $this->db->select('ik.*');
		// $this->db->select('r.rekrut_id, r.pos_id, r.deskripsi_rekrut, r.status_rekrut, r.kapasitas, r.terisi');
		// $this->db->select('p.nama_posisi, d.nama_divisi');
		// $this->db->from($this->tb_iklan_lowongan.' ik');
		// $this->db->join($this->tb_perekrutan.' r', 'r.iklan_id = ik.iklan_id', 'left');
		// $this->db->join($this->tb_posisi.' p', 'r.pos_id = p.pos_id', 'left');
		// $this->db->join($this->tb_divisi.' d', 'p.divisi_id = d.divisi_id', 'left');
		// $this->db->where('ik.iklan_id', $iklan_id);
		// $this->db->where('ik.hapus', '0');
		// $this->db->group_by('ik.iklan_id');
		// $this->db->order_by('ik.tanggal_iklan DESC');

		$this->db->select('ik.*');
		$this->db->select('COUNT(r.rekrut_id) AS jml_lowongan');
		$this->db->from($this->tb_iklan_lowongan.' ik');
		$this->db->join($this->tb_perekrutan.' r', 'r.iklan_id = ik.iklan_id', 'left');
		$this->db->where('ik.iklan_id', $iklan_id);
		$this->db->where('ik.hapus', '0');
		$this->db->group_by('ik.iklan_id');
		$this->db->order_by('ik.tanggal_iklan DESC');

		$query = $this->db->get();

		return $query->row();
	}

	public function ambil_lowongan_periklan($iklan_id)
	{
		$this->db->select('pos.nama_posisi');
		$this->db->select('div.nama_divisi');
		$this->db->select('r.deskripsi_rekrut, r.status_rekrut, r.kapasitas, r.terisi, r.rekrut_id');
		$this->db->from($this->tb_iklan_lowongan.' ik');
		$this->db->join($this->tb_perekrutan.' r', 'r.iklan_id = ik.iklan_id', 'left');
		$this->db->join($this->tb_posisi.' pos', 'r.pos_id = pos.pos_id', 'left');
		$this->db->join($this->tb_divisi.' div', 'pos.divisi_id = div.divisi_id', 'left');
		$this->db->where('ik.iklan_id', $iklan_id);
		$this->db->where('r.hapus', '0');
		$this->db->order_by('ik.tanggal_iklan DESC');
		return $this->db->get()->result();
	}

	public function ambil_rekrut_byid($rekrut_id)
	{
		$this->db->select('pos.nama_posisi, pos.pos_id');
		$this->db->select('div.nama_divisi');
		$this->db->select('r.deskripsi_rekrut, r.status_rekrut, r.kapasitas, r.terisi, r.rekrut_id, r.iklan_id');
		$this->db->from($this->tb_perekrutan.' r');
		$this->db->join($this->tb_posisi.' pos', 'r.pos_id = pos.pos_id', 'left');
		$this->db->join($this->tb_divisi.' div', 'pos.divisi_id = div.divisi_id', 'left');
		$this->db->where('r.rekrut_id', $rekrut_id);
		$this->db->where('r.hapus', '0');
		return $this->db->get()->result();
	}

	public function ambil_posisi()
	{
		$this->db->select('pos.pos_id, pos.nama_posisi');
		$this->db->select('div.nama_divisi');
		$this->db->from($this->tb_posisi.' pos');
		$this->db->join($this->tb_divisi.' div', 'pos.divisi_id = div.divisi_id', 'left');
		$this->db->where('pos.hapus', '0');
		return $this->db->get()->result();
	}

	public function simpan_iklan_lowongan($data)
	{
		$this->db->insert($this->tb_iklan_lowongan, $data);
		return $this->db->insert_id();
	}

	public function ubah_iklan_lowongan($where, $data)
	{
		$this->db->update($this->tb_iklan_lowongan, $data, $where);
		return $this->db->affected_rows();
	}

	public function hapus_iklan_lowongan($iklan_id)
	{
		$data = array(
			'status_iklan' 	=> '2',
			'hapus' 		=> '1',
		);
		$where = array(
			'iklan_id' 		=> $iklan_id,
			'hapus' 		=> '0'
		);
		$this->db->update($this->tb_iklan_lowongan, $data, $where);
		return $this->db->affected_rows();
	}

	public function simpan_lowongan_periklan($data)
	{
		$this->db->insert($this->tb_perekrutan, $data);
		return $this->db->insert_id();
	}

	public function ubah_lowongan_periklan($where, $data)
	{
		$this->db->update($this->tb_perekrutan, $data, $where);
		return $this->db->affected_rows();
	}
}
