<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pelamar extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
        // Set timezone
        date_default_timezone_set('Asia/Jakarta');
        // Load Model
        $this->load->model('Model_pelamar');
        $this->load->model('Model_posisi');
        $this->load->model('Model_divisi');
        //sesion login
        if(($this->session->userdata('status_login') != "loginactive") && ($this->session->userdata('role') != 'admin')){
			redirect(base_url().'admin/login');
		}
        
    }

	public function index()
	{
		$head['title']          = 'DATA PELAMAR';

        // ambil data dari fungsi data_pelamar
		$filter = array(
			'tanggal_iklan' 	=> null, 
			'pos_id' 			=> 'all',
			'nama_pelamar' 		=> '',
            'status_pelamar'    => 'all',
		);

        $data['data_pelamar'] 			= $this->data_pelamar($filter);
        $data['data_posisi'] 			= $this->data_posisi();
        $data['pos_id_filter'] 			= set_value('pos_id_filter');
        $data['nama_pelamar_filter'] 	= set_value('nama_pelamar_filter');
        
        // view halaman
		$this->load->view('backend/templates/header', $head);
		$this->load->view('backend/templates/sidebar');
		$this->load->view('backend/pelamar/view_pelamar', $data);
		$this->load->view('backend/templates/footer');
	}

	public function data_pelamar($filter)
    {
        $data = $this->Model_pelamar->list_pelamar($filter);
        return $data;
    }

    public function data_posisi()
    {
        $data = $this->Model_posisi->list_posisi();
        return $data;
    }

    public function filter_pelamar()
	{
		// $tanggal_iklan_filter 	= date("Y-m-d", strtotime($this->input->post('tanggal_iklan_filter')));
		$tanggal_iklan_filter 	= 'all';
		$pos_id_filter 			= $this->input->post('pos_id_filter');
        $nama_pelamar_filter    = $this->input->post('nama_pelamar_filter');
		$status_pelamar 	    = $this->input->post('status_pelamar_filter');

		$filter = array(
            'tanggal_iklan'             => (!empty($tanggal_iklan_filter) ? $tanggal_iklan_filter : null),
            'pos_id'           			=> $pos_id_filter,
            'nama_pelamar'              => (!empty($nama_pelamar_filter) ? $nama_pelamar_filter : null),
            'status_pelamar'            => $status_pelamar
        );

		$head['title']                  = 'DATA PELAMAR';

        $data['data_pelamar'] 			= $this->data_pelamar($filter);
        $data['data_posisi'] 			= $this->data_posisi();
        $data['pos_id_filter'] 			= set_value('pos_id_filter', $pos_id_filter);
        $data['nama_pelamar_filter'] 	= set_value('nama_pelamar_filter', $nama_pelamar_filter);
        
        // view halaman
		$this->load->view('backend/templates/header', $head);
		$this->load->view('backend/templates/sidebar');
		$this->load->view('backend/pelamar/view_pelamar', $data);
		$this->load->view('backend/templates/footer');
	}

    public function detail_pelamar($pelamar_id)
    {
        $head['title']  = 'DETAIL DATA PELAMAR';
        $data['urlback'] = base_url('admin/pelamar/');
        $data['detail'] = $this->Model_pelamar->detail_pelamar($pelamar_id);
        $data['lulus'] = base_url('admin/pelamar/lulus/');
        $data['tolak'] = base_url('admin/pelamar/tolak/');
        $this->load->view('backend/templates/header', $head);
        $this->load->view('backend/templates/sidebar');
        $this->load->view('backend/pelamar/detail_pelamar', $data);
        $this->load->view('backend/templates/footer');
    }

    public function lulus($pelamar_id)
    {
        $data = array('status_pelamar' => '1');
        $where = array('pelamar_id' => $pelamar_id);
        $this->Model_pelamar->ubah_status_pelamar($where, $data);
    }

    public function tolak($pelamar_id)
    {
        $data = array('status_pelamar' => '2');
        $where = array('pelamar_id' => $pelamar_id);
        $this->Model_pelamar->ubah_status_pelamar($where, $data);
    }

}

/* End of file Pelamar.php */
/* Location: ./application/controllers/admin/Pelamar.php */