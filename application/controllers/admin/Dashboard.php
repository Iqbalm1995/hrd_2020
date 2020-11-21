<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {
	public function index()
	{
		$this->load->view('back/templates/header');
		$this->load->view('back/templates/menu');
		$this->load->view('back/dashboardView');
		$this->load->view('back/templates/footerChart');
	}
	public function table()
	{
		$this->load->view('back/templates/header');
		$this->load->view('back/templates/menu');
		$this->load->view('back/tableView');
		$this->load->view('back/templates/footer');
	}
}
