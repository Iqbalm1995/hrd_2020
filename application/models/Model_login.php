<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_login extends CI_Model {

	var $tb_pengguna 		= 'pengguna';
	var $tb_hak_akses 		= 'hak_akses';
	
	public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}

	function cek_akun($username, $password) { 

		$this->db->select('p.*, ha.nama_akses, ha.status_akses');
		$this->db->from($this->tb_pengguna.' p');
		$this->db->join($this->tb_hak_akses.' ha', 'p.akses_id = ha.akses_id');
		$this->db->where('p.username', $username);
		// $this->db->where('ha.status_akses', '1');
		// $this->db->where('p.status_pengguna', '1');
		$this->db->where('p.hapus', '0');
	    $result = $this->cek_password($password);

	    if (!empty($result)) {
	        return $result;
	    } else {
	        return null;
	    }
	}

	function cek_password($password) {

	    $query = $this->db->get();
	    $result = $query->row();
	    if ($query->num_rows() > 0) {
	        $result = $query->row();
	        if (password_verify($password, $result->password)) {
	            //We're good
	            return $result;
	        } else {
	            //Wrong password
	            return array();
	        }

	    } else {
	        return array();
	    }

	}

}