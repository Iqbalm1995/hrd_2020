<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_tes_ujian extends CI_Model {

	var $tb_tes_ujian 		= 'tes_ujian';
	
	public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}

	public function list_tes_ujian()
	{
		$this->db->from($this->tb_tes_ujian);
		$this->db->where('hapus', '0');
		$query = $this->db->get();

		return $query->result();
	}

	public function detail_tes_ujian($tes_id)
	{
		$this->db->from($this->tb_tes_ujian);
		$this->db->where('tes_id', $tes_id);
		$this->db->where('hapus', '0');
		$query = $this->db->get();

		return $query->row();
	}

	public function simpan_tes_ujian($data)
	{
		$this->db->insert($this->tb_tes_ujian, $data);
		return $this->db->insert_id();
	}

	public function ubah_tes_ujian($where, $data)
	{
		$this->db->update($this->tb_tes_ujian, $data, $where);
		return $this->db->affected_rows();
	}

	public function hapus_tes_ujian($tes_id)
	{
		$data = array(
			'status_tes' 	=> '0',
			'hapus' 		=> '1',
		);
		$where = array(
			'tes_id' 		=> $tes_id,
			'hapus' 		=> '0'
		);
		$this->db->update($this->tb_tes_ujian, $data, $where);
		return $this->db->affected_rows();
	}
}
