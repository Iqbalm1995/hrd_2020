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
        if(($this->session->userdata('status_login') != "loginactive") && ($this->session->userdata('role') != 'admin')){
			redirect(base_url().'admin/login');
		}
        
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

    public function detail_pengguna($pengguna_id)
    {
        $data = $this->Model_pengguna->detail_pengguna($pengguna_id);
        return $data;
    }

    public function tambah_pengguna()
    {
        // judul halaman
        $head['title']          = 'TAMBAH PENGGUNA';

        $data = array(
            'aksi'                      => 'tambah',
            'url_proses'                => base_url('admin/pengguna/simpan_pengguna'),
            'pengguna_id'               => set_value('pengguna_id'),
            'nama_pengguna'             => set_value('nama_pengguna'),
            'username'                  => set_value('username'),
            'email'                     => set_value('email'),
            'status_pengguna'           => set_value('status_pengguna'),
            'akses_id'                  => set_value('akses_id'),
            'password'                  => set_value('password')
        );

        $data['data_hak_akses'] = $this->data_hak_akses();
        
        // view halaman
        $this->load->view('backend/templates/header', $head);
        $this->load->view('backend/templates/sidebar');
        $this->load->view('backend/pengguna/form_pengguna', $data);
        $this->load->view('backend/templates/footer');
    }

    public function ubah_pengguna($pengguna_id = null)
    {
        if($pengguna_id == null){
            $this->session->set_flashdata('message1', '
                <div class="ui red message">
                    <i class="close icon"></i>
                    <div class="header">
                        Gagal
                    </div>
                    <p>Error pada saat mengambil data</p>
                </div>
                ');
            redirect (base_url('admin/pengguna'));
        }elseif($pengguna_id == '1'){
            $this->session->set_flashdata('message1', '
                <div class="ui red message">
                    <i class="close icon"></i>
                    <div class="header">
                        Gagal
                    </div>
                    <p>Data Superadmin tidak bisa diubah</p>
                </div>
                ');
            redirect (base_url('admin/pengguna'));
        }

        // judul halaman
        $head['title']          = 'UBAH PENGGUNA';

        // ambil data dari fungsi detail_pengguna
        $get_data = $this->detail_pengguna($pengguna_id);

        if ($get_data) {

            $data = array(
                'aksi'                      => 'ubah',
                'url_proses'                => base_url('admin/pengguna/simpan_pengguna'),
                'pengguna_id'               => set_value('pengguna_id', $get_data->pengguna_id),
                'nama_pengguna'             => set_value('nama_pengguna', $get_data->nama_pengguna),
                'username'                  => set_value('username', $get_data->username),
                'email'                     => set_value('email', $get_data->email),
                'status_pengguna'           => set_value('status_pengguna', $get_data->status_pengguna),
                'akses_id'                  => set_value('akses_id', $get_data->akses_id),
                'password'                  => set_value('password')
            );

            $data['data_hak_akses'] = $this->data_hak_akses();
            
            // view halaman
            $this->load->view('backend/templates/header', $head);
            $this->load->view('backend/templates/sidebar');
            $this->load->view('backend/pengguna/form_pengguna', $data);
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
            redirect (base_url('admin/pengguna'));

        }
    }

    public function simpan_pengguna()
    {

        $aksi_simpan = $this->input->post('aksi');
        
        $data = array(
            'nama_pengguna'             => $this->input->post('nama_pengguna'),
            'username'                  => $this->input->post('username'),
            'email'                     => $this->input->post('email'),
            'status_pengguna'           => $this->input->post('status_pengguna'),
            'akses_id'                  => $this->input->post('akses_id'),
            'password'                  => password_hash($this->input->post('password'), PASSWORD_BCRYPT)
        );

        // jika aksinya tambah
        if ($aksi_simpan == 'tambah') {

            $simpan = $this->Model_pengguna->simpan_pengguna($data);

        }elseif ($aksi_simpan == 'ubah') {
        // jika aksinya ubah
            $where = array('pengguna_id' => $this->input->post('pengguna_id'));

            $simpan = $this->Model_pengguna->ubah_pengguna($where, $data);
        }

        if ($simpan) {
            $this->session->set_flashdata('message1', '
                <div class="ui positive message">
                    <i class="close icon"></i>
                    <div class="header">
                        Berhasil
                    </div>
                    <p>Pengguna berhasil ditambahkan.</p>
                </div>
                ');
            redirect (base_url('admin/pengguna'));
        }else{
            $this->session->set_flashdata('message1', '
                <div class="ui negative message">
                    <i class="close icon"></i>
                    <div class="header">
                        Gagal
                    </div>
                    <p>Pengguna gagal ditambahkan.</p>
                </div>
                ');
            redirect (base_url('admin/pengguna'));
        }

    }

    public function hapus_pengguna($pengguna_id = null)
    {
        if($pengguna_id == null){
            $this->session->set_flashdata('message1', '
                <div class="ui red message">
                    <i class="close icon"></i>
                    <div class="header">
                        Gagal
                    </div>
                    <p>Error pada saat mengambil data</p>
                </div>
                ');
            redirect (base_url('admin/pengguna'));
        }elseif($pengguna_id == '1'){
            $this->session->set_flashdata('message1', '
                <div class="ui red message">
                    <i class="close icon"></i>
                    <div class="header">
                        Gagal
                    </div>
                    <p>Data Superadmin tidak bisa dihapus</p>
                </div>
                ');
            redirect (base_url('admin/pengguna'));
        }

        // ambil data dari fungsi detail_pengguna
        $get_data = $this->detail_pengguna($pengguna_id);

        if ($get_data) {

            $hapus = $this->Model_pengguna->hapus_pengguna($pengguna_id);

            if ($hapus) {
                $this->session->set_flashdata('message1', '
                    <div class="ui positive message">
                        <i class="close icon"></i>
                        <div class="header">
                            Berhasil
                        </div>
                        <p>Pengguna berhasil hapus.</p>
                    </div>
                    ');
                redirect (base_url('admin/pengguna'));
            }else{
                $this->session->set_flashdata('message1', '
                    <div class="ui negative message">
                        <i class="close icon"></i>
                        <div class="header">
                            Gagal
                        </div>
                        <p>Pengguna gagal hapus.</p>
                    </div>
                    ');
                redirect (base_url('admin/pengguna'));
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
            redirect (base_url('admin/pengguna'));

        }
    }


}