<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {
	public function index()
	{
		$data['title'] = 'DASHBOARD';
		$this->load->view('backend/templates/header', $data);
		$this->load->view('backend/templates/sidebar');
		$this->load->view('backend/dashboard');
		$this->load->view('backend/templates/footerChart');
	}
}
