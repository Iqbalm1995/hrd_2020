<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_pelamar extends CI_Model {

	var $tb_pelamar 				= 'pelamar';
	var $tb_perekrutan_pelamar 		= 'perekrutan_pelamar';
	var $tb_perekrutan 				= 'perekrutan';
	var $tb_iklan_lowongan 			= 'iklan_lowongan';
	var $tb_posisi 					= 'posisi';
	var $tb_divisi 					= 'divisi';
	var $tb_hasil_tes_pelamar 		= 'hasil_tes_pelamar';
	var $tb_tes_ujian 				= 'tes_ujian';
	
	public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}

	public function list_pelamar($filter)
	{
		$this->db->select('plm.*');
		$this->db->select('pp.status_pelamar');
		$this->db->select('pos.nama_posisi, div.nama_divisi');
		$this->db->from($this->tb_pelamar.' plm');
		$this->db->join($this->tb_perekrutan_pelamar.' pp', 'pp.pelamar_id = plm.pelamar_id', 'left');
		$this->db->join($this->tb_perekrutan.' prt', 'prt.rekrut_id = pp.rekrut_id', 'left');
		$this->db->join($this->tb_iklan_lowongan.' ik', 'ik.iklan_id = prt.iklan_id', 'left');
		$this->db->join($this->tb_posisi.' pos', 'pos.pos_id = prt.pos_id', 'left');
		$this->db->join($this->tb_divisi.' div', 'div.divisi_id = pos.divisi_id', 'left');
		if ($filter['pos_id'] != 'all') {
			$this->db->where('prt.pos_id', $filter['pos_id']);
		}
		if ($filter['nama_pelamar'] != null) {
			$this->db->like('plm.nama_pelamar', $filter['nama_pelamar']);
		}
		$this->db->where('plm.hapus', '0');
		$this->db->where('prt.hapus', '0');
		$this->db->where('ik.hapus', '0');
		$this->db->group_by('plm.pelamar_id');
		$this->db->order_by('ik.tanggal_iklan DESC');
		$query = $this->db->get();

		return $query->result();
	}

    public function simpan_pelamar($data)
	{
		$this->db->insert($this->tb_pelamar, $data);
		return $this->db->insert_id();
	}

	public function simpan_perekrutan_pelamar($data)
	{
		$this->db->insert($this->tb_perekrutan_pelamar, $data);
		return $this->db->insert_id();
	}

}

/* End of file Model_pelamar.php */
/* Location: ./application/models/Model_pelamar.php */
