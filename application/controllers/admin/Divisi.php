<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Divisi extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        // Set timezone
        date_default_timezone_set('Asia/Jakarta');
        // Load Model
        $this->load->model('Model_divisi');
        //sesion login
        // if(($this->session->userdata('status_login') != "loginactive") && ($this->session->userdata('role') != 'admin')){
		// 	redirect(base_url().'login');
		// }
        
    }

	public function index()
	{
        // judul halaman
        $head['title']          = 'DATA MASTER DIVISI';

        // ambil data dari fungsi data_divisi
        $data['data_divisi'] = $this->data_divisi();
        
        // view halaman
		$this->load->view('backend/templates/header', $head);
		$this->load->view('backend/templates/sidebar');
		$this->load->view('backend/master/view_divisi', $data);
		$this->load->view('backend/templates/footer');
    }
    
    public function data_divisi()
    {
        $data = $this->Model_divisi->list_divisi();
        return $data;
    }
}