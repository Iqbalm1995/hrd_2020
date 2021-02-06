<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_pengguna extends CI_Model {

	var $tb_pengguna 		= 'pengguna';
	var $tb_hak_akses 		= 'hak_akses';
	
	public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}

	public function list_pengguna()
	{
		$this->db->select('p.*, ha.nama_akses');
		$this->db->from($this->tb_pengguna.' p');
		$this->db->join($this->tb_hak_akses.' ha', 'p.akses_id = ha.akses_id');
		$this->db->where('p.hapus', '0');
		$query = $this->db->get();

		return $query->result();
	}

	public function detail_pengguna($pengguna_id)
	{
		$this->db->select('p.*, ha.nama_akses');
		$this->db->from($this->tb_pengguna.' p');
		$this->db->join($this->tb_hak_akses.' ha', 'p.akses_id = ha.akses_id');
		$this->db->where('p.pengguna_id', $pengguna_id);
		$this->db->where('p.hapus', '0');
		$query = $this->db->get();

		return $query->row();
	}

	public function simpan_pengguna($data)
	{
		$this->db->insert($this->tb_pengguna, $data);
		return $this->db->insert_id();
	}

	public function ubah_pengguna($where, $data)
	{
		$this->db->update($this->tb_pengguna, $data, $where);
		return $this->db->affected_rows();
	}

	public function hapus_pengguna($pengguna_id)
	{
		$data = array(
			'status_pengguna' 	=> '0',
			'hapus' 			=> '1',
		);
		$where = array(
			'pengguna_id' 		=> $pengguna_id,
			'hapus' 		=> '0'
		);
		$this->db->update($this->tb_pengguna, $data, $where);
		return $this->db->affected_rows();
	}
}
