<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Karyawan extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
        // Set timezone
        date_default_timezone_set('Asia/Jakarta');
        // Load Model
        $this->load->model('Model_karyawan');
        $this->load->model('Model_posisi');
        $this->load->model('Model_divisi');
        //sesion login
        if(($this->session->userdata('status_login') != "loginactive") && ($this->session->userdata('role') != 'admin')){
			redirect(base_url().'admin/login');
		}
        
    }

	public function index()
	{
		$head['title']          = 'DATA KARYAWAN';

        // ambil data dari fungsi data_karyawan
		$filter = array( 
			'pos_id' 			=> 'all',
			'nama_karyawan' 		=> '',
            'status_karyawan'    => 'all',
		);

        $data['data_karyawan'] 			= $this->data_karyawan($filter);
        $data['data_posisi'] 			= $this->data_posisi();
        $data['pos_id_filter'] 			= set_value('pos_id_filter');
        $data['nama_karyawan_filter'] 	= set_value('nama_karyawan_filter');
        
        // view halaman
		$this->load->view('backend/templates/header', $head);
		$this->load->view('backend/templates/sidebar');
		$this->load->view('backend/karyawan/view_karyawan', $data);
		$this->load->view('backend/templates/footer');
	}

	public function data_karyawan($filter)
    {
        $data = $this->Model_karyawan->list_karyawan($filter);
        return $data;
    }

	public function detail_data_karyawan($karyawan_id)
    {
        $data = $this->Model_karyawan->detail_karyawan($karyawan_id);
        return $data;
    }

    public function data_posisi()
    {
        $data = $this->Model_posisi->list_posisi();
        return $data;
    }

    public function filter_karyawan()
	{
		$pos_id_filter 				= $this->input->post('pos_id_filter');
        $nama_karyawan_filter    	= $this->input->post('nama_karyawan_filter');
		$status_karyawan 	    	= $this->input->post('status_karyawan_filter');

		$filter = array(
            'pos_id'           			=> $pos_id_filter,
            'nama_karyawan'             => (!empty($nama_karyawan_filter) ? $nama_karyawan_filter : null),
            'status_karyawan'           => $status_karyawan
        );

		$head['title']                  = 'DATA KARYAWAN';

        $data['data_karyawan'] 			= $this->data_karyawan($filter);
        $data['data_posisi'] 			= $this->data_posisi();
        $data['pos_id_filter'] 			= set_value('pos_id_filter', $pos_id_filter);
        $data['nama_karyawan_filter'] 	= set_value('nama_karyawan_filter', $nama_karyawan_filter);
        
        // view halaman
		$this->load->view('backend/templates/header', $head);
		$this->load->view('backend/templates/sidebar');
		$this->load->view('backend/karyawan/view_karyawan', $data);
		$this->load->view('backend/templates/footer');
	}

	public function detail_karyawan($karyawan_id)
	{
		$head['title']          		= 'DATA KARYAWAN';

        $data['detail'] 				= $this->detail_data_karyawan($karyawan_id);
        $data['urlback'] 				= base_url('admin/karyawan');
        
        // view halaman
		$this->load->view('backend/templates/header', $head);
		$this->load->view('backend/templates/sidebar');
		$this->load->view('backend/karyawan/detail_karyawan', $data);
		$this->load->view('backend/templates/footer');
	}

	public function tambah_karyawan()
    {
        // judul halaman
        $head['title']          = 'TAMBAH KARYAWAN';

        $data = array(
            'aksi'                      => 'tambah',
            'urlback'                   => base_url('admin/karyawan'),
            'url_proses'                => base_url('admin/karyawan/simpan_karyawan'),
            'karyawan_id'               => set_value('karyawan_id'),
            'pos_id'                	=> set_value('pos_id'),
            'nama_karyawan'           	=> set_value('nama_karyawan'),
            'jenis_kelamin'             => set_value('jenis_kelamin'),
            'tanggal_lahir'             => set_value('tanggal_lahir'),
            'tempat_lahir'              => set_value('tempat_lahir'),
            'status_menikah'            => set_value('status_menikah'),
            'agama'              		=> set_value('agama'),
            'alamat'              		=> set_value('alamat'),
            'no_hp'              		=> set_value('no_hp'),
            'email'              		=> set_value('email'),
            'status_karyawan'           => set_value('status_karyawan'),
        );

        $data['data_posisi'] 			= $this->data_posisi();
        
        // view halaman
        $this->load->view('backend/templates/header', $head);
        $this->load->view('backend/templates/sidebar');
        $this->load->view('backend/karyawan/form_karyawan', $data);
        $this->load->view('backend/templates/footer');
    }

    public function ubah_karyawan($karyawan_id = null)
    {
        if($karyawan_id == null){
            $this->session->set_flashdata('message1', '
                <div class="ui red message">
                    <i class="close icon"></i>
                    <div class="header">
                        Gagal
                    </div>
                    <p>Error pada saat mengambil data</p>
                </div>
                ');
            redirect (base_url('admin/karyawan'));
        }

        // judul halaman
        $head['title']          = 'UBAH KARYAWAN';

        // ambil data dari fungsi detail_divisi
        $get_data = $this->detail_data_karyawan($karyawan_id);

        if ($get_data) {

            $data = array(
                'aksi'                      => 'ubah',
            	'urlback'                   => base_url('admin/karyawan'),
                'url_proses'                => base_url('admin/karyawan/simpan_karyawan'),
                'karyawan_id'               => set_value('karyawan_id', $get_data->karyawan_id),
	            'pos_id'                	=> set_value('pos_id', $get_data->pos_id),
	            'nama_karyawan'           	=> set_value('nama_karyawan', $get_data->nama_karyawan),
	            'jenis_kelamin'             => set_value('jenis_kelamin', $get_data->jenis_kelamin),
	            'tanggal_lahir'             => set_value('tanggal_lahir', $get_data->tanggal_lahir),
	            'tempat_lahir'              => set_value('tempat_lahir', $get_data->tempat_lahir),
	            'status_menikah'            => set_value('status_menikah', $get_data->status_menikah),
	            'agama'              		=> set_value('agama', $get_data->agama),
	            'alamat'              		=> set_value('alamat', $get_data->alamat),
	            'no_hp'              		=> set_value('no_hp', $get_data->no_hp),
	            'email'              		=> set_value('email', $get_data->email),
	            'status_karyawan'           => set_value('status_karyawan', $get_data->status_karyawan),
            );
        	$data['data_posisi'] 			= $this->data_posisi();
            
            // view halaman
            $this->load->view('backend/templates/header', $head);
            $this->load->view('backend/templates/sidebar');
            $this->load->view('backend/karyawan/form_karyawan', $data);
            $this->load->view('backend/templates/footer');

        } else {

            $this->session->set_flashdata('message1', '
                <div class="ui positive message">
                    <i class="close icon"></i>
                    <div class="header">
                        Gagal
                    </div>
                    <p>Error pada saat mengambil data</p>
                </div>
                ');
            redirect (base_url('admin/karyawan'));

        }
    }

    public function simpan_karyawan()
    {

        $aksi_simpan = $this->input->post('aksi');
        
        $data = array(
            'karyawan_id'           => $this->input->post('karyawan_id'),
            'pos_id'           		=> $this->input->post('pos_id'),
            'nama_karyawan'         => $this->input->post('nama_karyawan'),
            'jenis_kelamin'         => $this->input->post('jenis_kelamin'),
            'tanggal_lahir'         => date("Y-m-d h:m:s", strtotime($this->input->post('tanggal_lahir'))),
            'tempat_lahir'          => $this->input->post('tempat_lahir'),
            'status_menikah'        => $this->input->post('status_menikah'),
            'agama'              	=> $this->input->post('agama'),
            'alamat'              	=> $this->input->post('alamat'),
            'no_hp'              	=> $this->input->post('no_hp'),
            'email'              	=> $this->input->post('email'),
            'status_karyawan'       => $this->input->post('status_karyawan'),
        );

        // jika aksinya tambah
        if ($aksi_simpan == 'tambah') {

            $simpan = $this->Model_karyawan->simpan_karyawan($data);

        }elseif ($aksi_simpan == 'ubah') {
        // jika aksinya ubah
            $where = array('karyawan_id' => $this->input->post('karyawan_id'));

            $simpan = $this->Model_karyawan->ubah_karyawan($where, $data);
        }

        if ($simpan) {
            $this->session->set_flashdata('message1', '
                <div class="ui positive message">
                    <i class="close icon"></i>
                    <div class="header">
                        Berhasil
                    </div>
                    <p>Karyawan berhasil simpan.</p>
                </div>
                ');
            redirect (base_url('admin/karyawan'));
        }else{
            $this->session->set_flashdata('message1', '
                <div class="ui negative message">
                    <i class="close icon"></i>
                    <div class="header">
                        Gagal
                    </div>
                    <p>Karyawan gagal simpan.</p>
                </div>
                ');
            redirect (base_url('admin/karyawan'));
        }

    }

    public function hapus_karyawan($karyawan_id = null)
    {
        if($karyawan_id == null){
            $this->session->set_flashdata('message1', '
                <div class="ui red message">
                    <i class="close icon"></i>
                    <div class="header">
                        Gagal
                    </div>
                    <p>Error pada saat mengambil data</p>
                </div>
                ');
            redirect (base_url('admin/karyawan'));
        }

        // ambil data dari fungsi detail_data_karyawan
        $get_data = $this->detail_data_karyawan($karyawan_id);

        if ($get_data) {

            $hapus = $this->Model_karyawan->hapus_karyawan($karyawan_id);

            if ($hapus) {
                $this->session->set_flashdata('message1', '
                    <div class="ui positive message">
                        <i class="close icon"></i>
                        <div class="header">
                            Berhasil
                        </div>
                        <p>Karyawan berhasil hapus.</p>
                    </div>
                    ');
                redirect (base_url('admin/karyawan'));
            }else{
                $this->session->set_flashdata('message1', '
                    <div class="ui negative message">
                        <i class="close icon"></i>
                        <div class="header">
                            Gagal
                        </div>
                        <p>Karyawan gagal hapus.</p>
                    </div>
                    ');
                redirect (base_url('admin/karyawan'));
            }

        } else {

            $this->session->set_flashdata('message1', '
                <div class="ui positive message">
                    <i class="close icon"></i>
                    <div class="header">
                        Gagal
                    </div>
                    <p>Error pada saat mengambil data</p>
                </div>
                ');
            redirect (base_url('admin/karyawan'));

        }
    }

}

/* End of file Karwayan.php */
/* Location: ./application/controllers/admin/Karwayan.php */