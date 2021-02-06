<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Hak_akses extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        // Set timezone
        date_default_timezone_set('Asia/Jakarta');
        // Load Model
        $this->load->model('Model_hak_akses');
        //sesion login
        // if(($this->session->userdata('status_login') != "loginactive") && ($this->session->userdata('role') != 'admin')){
		// 	redirect(base_url().'login');
		// }
        
    }

	public function index()
	{
        // judul halaman
        $head['title']          = 'DATA HAK AKSES';

        // ambil data dari fungsi data_hak_akses
        $data['data_hak_akses'] = $this->data_hak_akses();
        
        // view halaman
		$this->load->view('backend/templates/header', $head);
		$this->load->view('backend/templates/sidebar');
		$this->load->view('backend/hak_akses/view_hak_akses', $data);
		$this->load->view('backend/templates/footer');
    }
    
    public function data_hak_akses()
    {
        $data = $this->Model_hak_akses->list_hak_akses();
        return $data;
    }
}