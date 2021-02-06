<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pengguna extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        // Set timezone
        date_default_timezone_set('Asia/Jakarta');
        // Load Model
        $this->load->model('Model_hak_akses');
        $this->load->model('Model_pengguna');
        //sesion login
        // if(($this->session->userdata('status_login') != "loginactive") && ($this->session->userdata('role') != 'admin')){
		// 	redirect(base_url().'login');
		// }
        
    }

	public function index()
	{
        // judul halaman
        $head['title']          = 'DATA PENGGUNA';

        // ambil data dari fungsi data_pengguna
        $data['data_pengguna'] = $this->data_pengguna();
        
        // view halaman
		$this->load->view('backend/templates/header', $head);
		$this->load->view('backend/templates/sidebar');
		$this->load->view('backend/pengguna/view_pengguna', $data);
		$this->load->view('backend/templates/footer');
    }
    
    public function data_pengguna()
    {
        $data = $this->Model_pengguna->list_pengguna();
        return $data;
    }

    public function data_hak_akses()
    {
        $data = $this->Model_hak_akses->list_hak_akses();
        return $data;
    }
}