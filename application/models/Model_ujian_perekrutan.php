<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_ujian_perekrutan extends CI_Model {

	var $tb_pelamar 				= 'pelamar';
	var $tb_perekrutan_pelamar 		= 'perekrutan_pelamar';
	var $tb_perekrutan 				= 'perekrutan';
	var $tb_iklan_lowongan 			= 'iklan_lowongan';
	var $tb_posisi 					= 'posisi';
	var $tb_divisi 					= 'divisi';
	var $tb_hasil_tes_pelamar 		= 'hasil_tes_pelamar';
	var $tb_tes_ujian 				= 'tes_ujian';
	var $tb_tes_perekrutan 			= 'tes_perekrutan';

	public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}

	public function list_rekrut_pelamar($filter)
	{
		$this->db->select('ik.*');
		$this->db->select('prt.rekrut_id, prt.deskripsi_rekrut, prt.status_rekrut, prt.kapasitas, prt.terisi');
		$this->db->select('pos.nama_posisi, div.nama_divisi');
		$this->db->from($this->tb_perekrutan.' prt');
		$this->db->join($this->tb_iklan_lowongan.' ik', 'ik.iklan_id = prt.iklan_id', 'left');
		$this->db->join($this->tb_posisi.' pos', 'pos.pos_id = prt.pos_id', 'left');
		$this->db->join($this->tb_divisi.' div', 'div.divisi_id = pos.divisi_id', 'left');
		if ($filter['pos_id'] != 'all') {
			$this->db->where('prt.pos_id', $filter['pos_id']);
		}
		if ($filter['judul_iklan'] != null) {
			$this->db->like('ik.judul_iklan', $filter['judul_iklan']);
		}
		$this->db->where('prt.hapus', '0');
		$this->db->where('ik.hapus', '0');
		$this->db->group_by('prt.rekrut_id');
		$this->db->order_by('ik.tanggal_iklan DESC');
		$query = $this->db->get();

		return $query->result();
	}

	public function detail_rekrut_pelamar($rekrut_id)
	{
		$this->db->select('ik.*');
		$this->db->select('prt.rekrut_id, prt.deskripsi_rekrut, prt.status_rekrut, prt.kapasitas, prt.terisi');
		$this->db->select('pos.nama_posisi, div.nama_divisi');
		$this->db->from($this->tb_perekrutan.' prt');
		$this->db->join($this->tb_iklan_lowongan.' ik', 'ik.iklan_id = prt.iklan_id', 'left');
		$this->db->join($this->tb_posisi.' pos', 'pos.pos_id = prt.pos_id', 'left');
		$this->db->join($this->tb_divisi.' div', 'div.divisi_id = pos.divisi_id', 'left');
		$this->db->where('prt.rekrut_id', $rekrut_id);
		$this->db->where('prt.hapus', '0');
		$this->db->where('ik.hapus', '0');
		$this->db->group_by('prt.rekrut_id');
		$this->db->order_by('ik.tanggal_iklan DESC');
		$query = $this->db->get();

		return $query->row();
	}

	public function list_pelamar($rekrut_id)
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
		$this->db->where('prt.rekrut_id', $rekrut_id);
		$this->db->where('plm.hapus', '0');
		$this->db->where('prt.hapus', '0');
		$this->db->where('ik.hapus', '0');
		$this->db->group_by('plm.pelamar_id');
		$this->db->order_by('ik.tanggal_iklan DESC');
		$query = $this->db->get();

		return $query->result();
	}

	public function detail_pelamar($rekrut_id, $pelamar_id)
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
		$this->db->where('prt.rekrut_id', $rekrut_id);
		$this->db->where('plm.pelamar_id', $pelamar_id);
		$this->db->where('plm.hapus', '0');
		$this->db->where('prt.hapus', '0');
		$this->db->where('ik.hapus', '0');
		$this->db->group_by('plm.pelamar_id');
		$this->db->order_by('ik.tanggal_iklan DESC');
		$query = $this->db->get();

		return $query->row();
	}

	public function list_ujian_pelamar($rekrut_id, $pelamar_id)
	{
		$this->db->select('tu.*');
		$this->db->select('
			COALESCE((SELECT skor_wawancara FROM '.$this->tb_hasil_tes_pelamar.' WHERE tes_id = tu.tes_id AND pelamar_id = '.$pelamar_id.' ), 0) AS skor_wawancara
			');
		$this->db->select('
			COALESCE((SELECT skor_tes FROM '.$this->tb_hasil_tes_pelamar.' WHERE tes_id = tu.tes_id AND pelamar_id = '.$pelamar_id.'), 0) AS skor_tes
			');
		$this->db->select('
			(SELECT status_hasil_tes FROM '.$this->tb_hasil_tes_pelamar.' WHERE tes_id = tu.tes_id AND pelamar_id = '.$pelamar_id.') AS status_hasil_tes
			');
		$this->db->from($this->tb_tes_ujian.' tu');
		$this->db->join($this->tb_tes_perekrutan.' r', 'r.tes_id = tu.tes_id');
		$this->db->where('r.rekrut_id', $rekrut_id);
		$this->db->where('tu.hapus', '0');
		$this->db->where('tu.status_tes', '1');
		$this->db->group_by('tu.tes_id');
		$this->db->order_by('tu.nama_tes ASC');
		$query = $this->db->get();

		return $query->result();
	}

	public function hasil_tes_ujian($tes_id, $pelamar_id)
	{
		$this->db->from($this->tb_hasil_tes_pelamar);
		$this->db->where('tes_id', $tes_id);
		$this->db->where('pelamar_id', $pelamar_id);
		$this->db->order_by('tes_hasil_id DESC');
		$query = $this->db->get();

		return $query->row();
	}

    public function simpan_hasil_tes($data)
	{
		$this->db->insert($this->tb_hasil_tes_pelamar, $data);
		return $this->db->insert_id();
	}

	public function ubah_hasil_tes($where, $data)
	{
		$this->db->update($this->tb_hasil_tes_pelamar, $data, $where);
		return $this->db->affected_rows();
	}

}

/* End of file Model_ujian_perekrutan.php */
/* Location: ./application/models/Model_ujian_perekrutan.php */