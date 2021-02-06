<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_posisi extends CI_Model {

	var $tb_posisi 		= 'posisi';
	var $tb_divisi 		= 'divisi';
	
	public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}

	public function list_posisi()
	{
		$this->db->select('p.*, d.nama_divisi');
		$this->db->from($this->tb_posisi.' p');
		$this->db->join($this->tb_divisi.' d', 'p.divisi_id = d.divisi_id');
		$this->db->where('p.hapus', '0');
		$this->db->order_by('d.nama_divisi ASC');
		$query = $this->db->get();

		return $query->result();
	}

	public function detail_posisi($pos_id)
	{
		$this->db->select('p.*, d.nama_divisi');
		$this->db->from($this->tb_posisi.' p');
		$this->db->join($this->tb_divisi.' d', 'p.divisi_id = d.divisi_id');
		$this->db->where('p.pos_id', $pos_id);
		$this->db->where('p.hapus', '0');
		$query = $this->db->get();

		return $query->row();
	}

	public function simpan_posisi($data)
	{
		$this->db->insert($this->tb_posisi, $data);
		return $this->db->insert_id();
	}

	public function ubah_posisi($where, $data)
	{
		$this->db->update($this->tb_posisi, $data, $where);
		return $this->db->affected_rows();
	}

	public function hapus_posisi($pos_id)
	{
		$data = array(
			'status_posisi' => '0',
			'hapus' 		=> '1',
		);
		$where = array(
			'pos_id' 		=> $pos_id,
			'hapus' 		=> '0'
		);
		$this->db->update($this->tb_posisi, $data, $where);
		return $this->db->affected_rows();
	}
}
