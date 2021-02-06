<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {
	public function index()
	{
		$this->load->view('frontend/templates/header');
		$this->load->view('frontend/home');
		$this->load->view('frontend/templates/footer');
	}
	public function detail()
	{
		$this->load->view('frontend/templates/header');
		$this->load->view('frontend/detail');
		$this->load->view('frontend/templates/footer');
	}
	public function apply()
	{
		$this->load->view('frontend/templates/header');
		$this->load->view('frontend/apply');
		$this->load->view('frontend/templates/footer');
	}
}
