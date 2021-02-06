<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Posisi extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        // Set timezone
        date_default_timezone_set('Asia/Jakarta');
        // Load Model
        $this->load->model('Model_posisi');
        $this->load->model('Model_divisi');
        //sesion login
        // if(($this->session->userdata('status_login') != "loginactive") && ($this->session->userdata('role') != 'admin')){
		// 	redirect(base_url().'login');
		// }
        
    }

	public function index()
	{
        // judul halaman
        $head['title']          = 'DATA POSISI DIVISI';

        // ambil data dari fungsi data_posisi
        $data['data_posisi'] = $this->data_posisi();
        
        // view halaman
		$this->load->view('backend/templates/header', $head);
		$this->load->view('backend/templates/sidebar');
		$this->load->view('backend/master/view_posisi', $data);
		$this->load->view('backend/templates/footer');
    }
    
    public function data_posisi()
    {
        $data = $this->Model_posisi->list_posisi();
        return $data;
    }

    public function data_divisi()
    {
        $data = $this->Model_divisi->list_divisi();
        return $data;
    }
}