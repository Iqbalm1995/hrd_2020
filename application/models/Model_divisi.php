<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_divisi extends CI_Model {

	var $tb_divisi 		= 'divisi';
	
	public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}

	public function list_divisi()
	{
		$this->db->from($this->tb_divisi);
		$this->db->where('hapus', '0');
		$query = $this->db->get();

		return $query->result();
	}

	public function detail_divisi($divisi_id)
	{
		$this->db->from($this->tb_divisi);
		$this->db->where('divisi_id', $divisi_id);
		$this->db->where('hapus', '0');
		$query = $this->db->get();

		return $query->row();
	}

	public function simpan_divisi($data)
	{
		$this->db->insert($this->tb_divisi, $data);
		return $this->db->insert_id();
	}

	public function ubah_divisi($where, $data)
	{
		$this->db->update($this->tb_divisi, $data, $where);
		return $this->db->affected_rows();
	}

	public function hapus_divisi($divisi_id)
	{
		$data = array(
			'status_divisi' => '0',
			'hapus' 		=> '1',
		);
		$where = array(
			'divisi_id' 	=> $divisi_id,
			'hapus' 		=> '0'
		);
		$this->db->update($this->tb_divisi, $data, $where);
		return $this->db->affected_rows();
	}
}
