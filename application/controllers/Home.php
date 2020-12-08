<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {
	public function index()
	{
		$this->load->view('front/templates/header');
		$this->load->view('front/homeView');
		$this->load->view('front/templates/footer');
	}
	public function detail()
	{
		$this->load->view('front/templates/header');
		$this->load->view('front/detailView');
		$this->load->view('front/templates/footer');
	}
	public function button()
	{
		$this->load->view('front/templates/header');
		$this->load->view('back/button_form');
		$this->load->view('front/templates/footer');
	}
}
