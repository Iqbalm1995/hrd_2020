<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Tes_ujian extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        // Set timezone
        date_default_timezone_set('Asia/Jakarta');
        // Load Model
        $this->load->model('Model_tes_ujian');
        //sesion login
        if(($this->session->userdata('status_login') != "loginactive") && ($this->session->userdata('role') != 'admin')){
			redirect(base_url().'admin/login');
		}
        
    }

	public function index()
	{
        // judul halaman
        $head['title']          = 'DATA TES UJIAN';

        // ambil data dari fungsi data_tes_ujian
        $data['data_tes_ujian'] = $this->data_tes_ujian();
        
        // view halaman
		$this->load->view('backend/templates/header', $head);
		$this->load->view('backend/templates/sidebar');
		$this->load->view('backend/master/view_tes_ujian', $data);
		$this->load->view('backend/templates/footer');
    }
    
    public function data_tes_ujian()
    {
        $data = $this->Model_tes_ujian->list_tes_ujian();
        return $data;
    }

    public function detail_tes_ujian($tes_id)
    {
        $data = $this->Model_tes_ujian->detail_tes_ujian($tes_id);
        return $data;
    }

    public function tambah_tes_ujian()
    {
        // judul halaman
        $head['title']          = 'TAMBAH TES UJIAN';

        $data = array(
            'aksi'                      => 'tambah',
            'url_proses'                => base_url('admin/tes_ujian/simpan_tes_ujian'),
            'tes_id'                    => set_value('tes_id'),
            'nama_tes'                  => set_value('nama_tes'),
            'deskripsi_tes'             => set_value('deskripsi_tes'),
            'status_tes'                => set_value('status_tes')
        );
        
        // view halaman
        $this->load->view('backend/templates/header', $head);
        $this->load->view('backend/templates/sidebar');
        $this->load->view('backend/master/form_tes_ujian', $data);
        $this->load->view('backend/templates/footer');
    }

    public function ubah_tes_ujian($tes_id = null)
    {
        if($tes_id == null){
            $this->session->set_flashdata('message1', '
                <div class="ui red message">
                    <i class="close icon"></i>
                    <div class="header">
                        Gagal
                    </div>
                    <p>Error pada saat mengambil data</p>
                </div>
                ');
            redirect (base_url('admin/tes_ujian'));
        }

        // judul halaman
        $head['title']          = 'UBAH TES UJIAN';

        // ambil data dari fungsi detail_tes_ujian
        $get_data = $this->detail_tes_ujian($tes_id);

        if ($get_data) {

            $data = array(
                'aksi'                      => 'ubah',
                'url_proses'                => base_url('admin/tes_ujian/simpan_tes_ujian'),
                'tes_id'                    => set_value('tes_id', $get_data->tes_id),
                'nama_tes'                  => set_value('nama_tes', $get_data->nama_tes),
                'deskripsi_tes'             => set_value('deskripsi_tes', $get_data->deskripsi_tes),
                'status_tes'                => set_value('status_tes', $get_data->status_tes)
            );
            
            // view halaman
            $this->load->view('backend/templates/header', $head);
            $this->load->view('backend/templates/sidebar');
            $this->load->view('backend/master/form_tes_ujian', $data);
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
            redirect (base_url('admin/tes_ujian'));

        }
    }

    public function simpan_tes_ujian()
    {

        $aksi_simpan = $this->input->post('aksi');
        
        $data = array(
            'nama_tes'                => $this->input->post('nama_tes'),
            'deskripsi_tes'           => $this->input->post('deskripsi_tes'),
            'status_tes'              => $this->input->post('status_tes')
        );

        // jika aksinya tambah
        if ($aksi_simpan == 'tambah') {

            $simpan = $this->Model_tes_ujian->simpan_tes_ujian($data);

        }elseif ($aksi_simpan == 'ubah') {
        // jika aksinya ubah
            $where = array('tes_id' => $this->input->post('tes_id'));

            $simpan = $this->Model_tes_ujian->ubah_tes_ujian($where, $data);
        }

        if ($simpan) {
            $this->session->set_flashdata('message1', '
                <div class="ui positive message">
                    <i class="close icon"></i>
                    <div class="header">
                        Berhasil
                    </div>
                    <p>Tes Ujian berhasil ditambahkan.</p>
                </div>
                ');
            redirect (base_url('admin/tes_ujian'));
        }else{
            $this->session->set_flashdata('message1', '
                <div class="ui negative message">
                    <i class="close icon"></i>
                    <div class="header">
                        Gagal
                    </div>
                    <p>Tes Ujian gagal ditambahkan.</p>
                </div>
                ');
            redirect (base_url('admin/tes_ujian'));
        }

    }

    public function hapus_tes_ujian($tes_id = null)
    {
        if($tes_id == null){
            $this->session->set_flashdata('message1', '
                <div class="ui red message">
                    <i class="close icon"></i>
                    <div class="header">
                        Gagal
                    </div>
                    <p>Error pada saat mengambil data</p>
                </div>
                ');
            redirect (base_url('admin/tes_ujian'));
        }

        // ambil data dari fungsi detail_tes_ujian
        $get_data = $this->detail_tes_ujian($tes_id);

        if ($get_data) {

            $hapus = $this->Model_tes_ujian->hapus_tes_ujian($tes_id);

            if ($hapus) {
                $this->session->set_flashdata('message1', '
                    <div class="ui positive message">
                        <i class="close icon"></i>
                        <div class="header">
                            Berhasil
                        </div>
                        <p>Tes Ujian berhasil hapus.</p>
                    </div>
                    ');
                redirect (base_url('admin/tes_ujian'));
            }else{
                $this->session->set_flashdata('message1', '
                    <div class="ui negative message">
                        <i class="close icon"></i>
                        <div class="header">
                            Gagal
                        </div>
                        <p>Tes Ujian gagal hapus.</p>
                    </div>
                    ');
                redirect (base_url('admin/tes_ujian'));
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
            redirect (base_url('admin/tes_ujian'));

        }
    }


}