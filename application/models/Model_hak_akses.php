<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_hak_akses extends CI_Model {

	var $tb_hak_akses 		= 'hak_akses';
	
	public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}

	public function list_hak_akses()
	{
		$this->db->from($this->tb_hak_akses);
		$this->db->where('hapus', '0');
		$query = $this->db->get();

		return $query->result();
	}

	public function detail_hak_akses($akses_id)
	{
		$this->db->from($this->tb_hak_akses);
		$this->db->where('akses_id', $akses_id);
		$this->db->where('hapus', '0');
		$query = $this->db->get();

		return $query->row();
	}

	public function simpan_hak_akses($data)
	{
		$this->db->insert($this->tb_hak_akses, $data);
		return $this->db->insert_id();
	}

	public function ubah_hak_akses($where, $data)
	{
		$this->db->update($this->tb_hak_akses, $data, $where);
		return $this->db->affected_rows();
	}

	public function hapus_hak_akses($akses_id)
	{
		$data = array(
			'status_akses' 	=> '0',
			'hapus' 		=> '1',
		);
		$where = array(
			'akses_id' 		=> $akses_id,
			'hapus' 		=> '0'
		);
		$this->db->update($this->tb_hak_akses, $data, $where);
		return $this->db->affected_rows();
	}
}
