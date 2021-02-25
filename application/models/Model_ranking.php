<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_ranking extends CI_Model {

	// var $view_data			= 'view_data';
	var $tb_perekrutan			= 'perekrutan';
	var $tb_posisi				= 'posisi';
	var $tb_divisi 				= 'divisi';
	var $tb_perekrutan_pelamar	= 'perekrutan_pelamar';
	var $tb_pelamar 			= 'pelamar';
	var $tb_tes_ujian			= 'tes_ujian';
	var $tb_tes_perekrutan		= 'tes_perekrutan';
	var $tb_hasil_tes_pelamar	= 'hasil_tes_pelamar';
	
	public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}

	public function ambilselect()
	{
		$data = 
			$this->db->select("pr.rekrut_id, CONCAT(dv.nama_divisi, ' / ', ps.nama_posisi) AS nama_lowongan")
				 ->from($this->tb_perekrutan.' pr')
				 ->join($this->tb_posisi.' ps', 'pr.pos_id = ps.pos_id', 'left')
				 ->join($this->tb_divisi.' dv', 'ps.divisi_id = dv.divisi_id', 'left')
				 ->where('pr.hapus', '0')
				 ->get();
		return $data->result();
	}

	public function listpelamar($rekrut_id)
	{
		$data = $this->db->select('pp.pelamar_id, pe.nama_pelamar, pe.jenis_kelamin, pe.tanggal_lahir')
					 ->from($this->tb_perekrutan_pelamar.' pp')
					 ->join($this->tb_pelamar.' pe', 'pp.pelamar_id = pe.pelamar_id', 'left')
					 ->where('pe.hapus', '0')
					 ->where('pp.rekrut_id', $rekrut_id)
					 ->get();
		return $data->result();
	}

	public function listbobot($rekrut_id)
	{
		$data = $this->db->select('tu.*, tp.rekrut_id')
					 ->from($this->tb_tes_ujian.' tu')
					 ->join($this->tb_tes_perekrutan.' tp', 'tu.tes_id = tp.tes_id', 'left')
					 ->where('tu.hapus', '0')
					 ->where('tp.rekrut_id', $rekrut_id)
					 ->order_by('tu.tes_id')
					 ->get();
		return $data->result();
	}

	public function sumbobot($rekrut_id)
	{
		$data = $this->db->select('SUM(tu.bobot_tes) AS jumlah_bobot')
					 ->from($this->tb_tes_ujian.' tu')
					 ->join($this->tb_tes_perekrutan.' tp', 'tu.tes_id = tp.tes_id', 'left')
					 ->where('tu.hapus', '0')
					 ->where('tp.rekrut_id', $rekrut_id)
					 ->get();
		return $data->row();
	}

	public function ambilnilai($rekrut_id, $pelamar_id)
	{
		$data = $this->db->select('tu.tes_id, tu.nama_tes, tu.bobot_tes, tu.jenis_tes, ht.skor_tes, ht.pelamar_id, p.nama_pelamar, pp.rekrut_id')
					 ->from($this->tb_hasil_tes_pelamar.' ht')
					 ->join($this->tb_tes_ujian.' tu', 'ht.tes_id = tu.tes_id', 'left')
					 ->join($this->tb_pelamar.' p', 'ht.pelamar_id = p.pelamar_id', 'left')
					 ->join($this->tb_perekrutan_pelamar.' pp', 'p.pelamar_id = pp.pelamar_id', 'left')
					 ->where('p.hapus', '0')
					 ->where('tu.hapus', '0')
					 ->where('pp.rekrut_id', $rekrut_id)
					 ->where('ht.pelamar_id', $pelamar_id)
					 ->order_by('pp.pelamar_id')
					 ->order_by('tu.tes_id')
					 ->get();
		return $data->result();
	}

	public function ambilpp($rekrut_id)
	{
		$data = $this->db->select('*')
				 ->from($this->tb_perekrutan_pelamar)
				 ->where('rekrut_id', $rekrut_id)
				 ->get();
		return $data->result();
	}

	public function sumvs($rekrut_id)
	{
		$data = $this->db->select('SUM(vektor_s) AS jml_vek_s')
				 ->from($this->tb_perekrutan_pelamar)
				 ->where('rekrut_id', $rekrut_id)
				 ->group_by('rekrut_id')
				 ->get();
		return $data->row();
	}

	public function ubahdata($where, $data)
	{
		$this->db->update($this->tb_perekrutan_pelamar, $data, $where);
		return $this->db->affected_rows();
	}

	public function ambilranking($rekrut_id)
	{
		$data = $this->db->select('pp.*, p.nama_pelamar, p.tanggal_lahir')
				 ->from($this->tb_perekrutan_pelamar.' pp')
				 ->join($this->tb_pelamar.' p', 'pp.pelamar_id = p.pelamar_id', 'left')
				 ->where('pp.rekrut_id', $rekrut_id)
				 ->order_by('pp.vektor_v', 'DESC')
				 ->get();
		return $data->result();
	}

}
