<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Table extends CI_Controller {
	public function index()
	{
		$data['title'] = 'TABLE EXAMPLE';
		$this->load->view('backend/templates/header', $data);
		$this->load->view('backend/templates/sidebar');
		$this->load->view('backend/table');
		$this->load->view('backend/templates/footer');
	}
}
