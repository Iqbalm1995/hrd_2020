<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

	public function index()
	{
		$data['title'] = 'LOGIN';
		$this->load->view('backend/templates/header', $data);
		$this->load->view('backend/login');
	}

}
