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
        if(($this->session->userdata('status_login') != "loginactive") && ($this->session->userdata('role') != 'admin')){
			redirect(base_url().'admin/login');
		}
        
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

    public function detail_hak_akses($akses_id)
    {
        $data = $this->Model_hak_akses->detail_hak_akses($akses_id);
        return $data;
    }

    public function tambah_hak_akses()
    {
        // judul halaman
        $head['title']          = 'TAMBAH HAK AKSES';

        $data = array(
            'aksi'                      => 'tambah',
            'url_proses'                => base_url('admin/hak_akses/simpan_hak_akses'),
            'akses_id'                  => set_value('akses_id'),
            'nama_akses'                => set_value('nama_akses'),
            'deskripsi_akses'           => set_value('deskripsi_akses'),
            'status_akses'              => set_value('status_akses')
        );
        
        // view halaman
        $this->load->view('backend/templates/header', $head);
        $this->load->view('backend/templates/sidebar');
        $this->load->view('backend/hak_akses/form_hak_akses', $data);
        $this->load->view('backend/templates/footer');
    }

    public function ubah_hak_akses($akses_id = null)
    {
        if($akses_id == null){
            $this->session->set_flashdata('message1', '
                <div class="ui red message">
                    <i class="close icon"></i>
                    <div class="header">
                        Gagal
                    </div>
                    <p>Error pada saat mengambil data</p>
                </div>
                ');
            redirect (base_url('admin/hak_akses'));
        }elseif($akses_id == '1'){
            $this->session->set_flashdata('message1', '
                <div class="ui red message">
                    <i class="close icon"></i>
                    <div class="header">
                        Gagal
                    </div>
                    <p>Data Superadmin tidak bisa diubah</p>
                </div>
                ');
            redirect (base_url('admin/hak_akses'));
        }

        // judul halaman
        $head['title']          = 'UBAH HAK AKSES';

        // ambil data dari fungsi detail_hak_akses
        $get_data = $this->detail_hak_akses($akses_id);

        if ($get_data) {

            $data = array(
                'aksi'                      => 'ubah',
                'url_proses'                => base_url('admin/hak_akses/simpan_hak_akses'),
                'akses_id'                  => set_value('akses_id', $get_data->akses_id),
                'nama_akses'                => set_value('nama_akses', $get_data->nama_akses),
                'deskripsi_akses'           => set_value('deskripsi_akses', $get_data->deskripsi_akses),
                'status_akses'              => set_value('status_akses', $get_data->status_akses)
            );
            
            // view halaman
            $this->load->view('backend/templates/header', $head);
            $this->load->view('backend/templates/sidebar');
            $this->load->view('backend/hak_akses/form_hak_akses', $data);
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
            redirect (base_url('admin/hak_akses'));

        }
    }

    public function simpan_hak_akses()
    {

        $aksi_simpan = $this->input->post('aksi');
        
        $data = array(
            'nama_akses'                => $this->input->post('nama_akses'),
            'deskripsi_akses'           => $this->input->post('deskripsi_akses'),
            'status_akses'              => $this->input->post('status_akses')
        );

        // jika aksinya tambah
        if ($aksi_simpan == 'tambah') {

            $simpan = $this->Model_hak_akses->simpan_hak_akses($data);

        }elseif ($aksi_simpan == 'ubah') {
        // jika aksinya ubah
            $where = array('akses_id' => $this->input->post('akses_id'));

            $simpan = $this->Model_hak_akses->ubah_hak_akses($where, $data);
        }

        if ($simpan) {
            $this->session->set_flashdata('message1', '
                <div class="ui positive message">
                    <i class="close icon"></i>
                    <div class="header">
                        Berhasil
                    </div>
                    <p>Hak akses berhasil ditambahkan.</p>
                </div>
                ');
            redirect (base_url('admin/hak_akses'));
        }else{
            $this->session->set_flashdata('message1', '
                <div class="ui negative message">
                    <i class="close icon"></i>
                    <div class="header">
                        Gagal
                    </div>
                    <p>Hak akses gagal ditambahkan.</p>
                </div>
                ');
            redirect (base_url('admin/hak_akses'));
        }

    }

    public function hapus_hak_akses($akses_id = null)
    {
        if($akses_id == null){
            $this->session->set_flashdata('message1', '
                <div class="ui red message">
                    <i class="close icon"></i>
                    <div class="header">
                        Gagal
                    </div>
                    <p>Error pada saat mengambil data</p>
                </div>
                ');
            redirect (base_url('admin/hak_akses'));
        }elseif($akses_id == '1'){
            $this->session->set_flashdata('message1', '
                <div class="ui red message">
                    <i class="close icon"></i>
                    <div class="header">
                        Gagal
                    </div>
                    <p>Data Superadmin tidak bisa dihapus</p>
                </div>
                ');
            redirect (base_url('admin/hak_akses'));
        }

        // ambil data dari fungsi detail_hak_akses
        $get_data = $this->detail_hak_akses($akses_id);

        if ($get_data) {

            $hapus = $this->Model_hak_akses->hapus_hak_akses($akses_id);

            if ($hapus) {
                $this->session->set_flashdata('message1', '
                    <div class="ui positive message">
                        <i class="close icon"></i>
                        <div class="header">
                            Berhasil
                        </div>
                        <p>Hak akses berhasil hapus.</p>
                    </div>
                    ');
                redirect (base_url('admin/hak_akses'));
            }else{
                $this->session->set_flashdata('message1', '
                    <div class="ui negative message">
                        <i class="close icon"></i>
                        <div class="header">
                            Gagal
                        </div>
                        <p>Hak akses gagal hapus.</p>
                    </div>
                    ');
                redirect (base_url('admin/hak_akses'));
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
            redirect (base_url('admin/hak_akses'));

        }
    }


}