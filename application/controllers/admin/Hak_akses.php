<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Hak_akses extends CI_Controller {
	public function index()
	{
		$data['title'] = 'DATA HAK AKSES';
		$this->load->view('backend/templates/header', $data);
		$this->load->view('backend/templates/sidebar');
		$this->load->view('backend/hak_akses/view_hak_akses');
		$this->load->view('backend/templates/footer');
	}
}