<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
        // Set timezone
        date_default_timezone_set('Asia/Jakarta');
        //sesion login
        if(($this->session->userdata('status_login') != "loginactive") && ($this->session->userdata('role') != 'admin')){
			redirect(base_url().'admin/login');
		}
        
    }

	public function index()
	{
		$data['title'] = 'DASHBOARD';
		$this->load->view('backend/templates/header', $data);
		$this->load->view('backend/templates/sidebar');
		$this->load->view('backend/dashboard');
		$this->load->view('backend/templates/footerChart');
	}
}
