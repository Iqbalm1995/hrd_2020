<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_karyawan extends CI_Model {

	var $tb_karyawan 		= 'karyawan';
	var $tb_posisi 			= 'posisi';
	var $tb_divisi 			= 'divisi';
	
	public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}

	public function list_karyawan($filter)
	{
		$this->db->select('kar.*');
		$this->db->select('pos.nama_posisi, div.nama_divisi');
		$this->db->from($this->tb_karyawan.' kar');
		$this->db->join($this->tb_posisi.' pos', 'pos.pos_id = kar.pos_id', 'left');
		$this->db->join($this->tb_divisi.' div', 'div.divisi_id = pos.divisi_id', 'left');
		if ($filter['pos_id'] != 'all') {
			$this->db->where('prt.pos_id', $filter['pos_id']);
		}
		if ($filter['nama_karyawan'] != null) {
			$this->db->like('kar.nama_karyawan', $filter['nama_karyawan']);
		}
		if ($filter['status_karyawan'] != 'all') {
			$this->db->where('kar.status_karyawan', $filter['status_karyawan']);
		}
		$this->db->where('kar.hapus', '0');
		$this->db->group_by('kar.karyawan_id');
		$this->db->order_by('kar.nama_karyawan ASC');
		$query = $this->db->get();

		return $query->result();
	}

	public function detail_karyawan($karyawan_id)
	{
		$this->db->select('kar.*');
		$this->db->select('pos.nama_posisi, div.nama_divisi');
		$this->db->from($this->tb_karyawan.' kar');
		$this->db->join($this->tb_posisi.' pos', 'pos.pos_id = kar.pos_id', 'left');
		$this->db->join($this->tb_divisi.' div', 'div.divisi_id = pos.divisi_id', 'left');
		$this->db->where('kar.karyawan_id', $karyawan_id);
		$this->db->where('kar.hapus', '0');
		$this->db->group_by('kar.karyawan_id');
		$this->db->order_by('kar.nama_karyawan ASC');
		$query = $this->db->get();

		return $query->row();
	}

	public function simpan_karyawan($data)
	{
		$this->db->insert($this->tb_karyawan, $data);
		return $this->db->insert_id();
	}

	public function ubah_karyawan($where, $data)
	{
		$this->db->update($this->tb_karyawan, $data, $where);
		return $this->db->affected_rows();
	}

	public function hapus_karyawan($karyawan_id)
	{
		$data = array(
			'hapus' 		=> '1',
		);
		$where = array(
			'karyawan_id' 	=> $karyawan_id,
			'hapus' 		=> '0'
		);
		$this->db->update($this->tb_karyawan, $data, $where);
		return $this->db->affected_rows();
	}
}
