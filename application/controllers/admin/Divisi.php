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

    public function detail_divisi($divisi_id)
    {
        $data = $this->Model_divisi->detail_divisi($divisi_id);
        return $data;
    }

    public function tambah_divisi()
    {
        // judul halaman
        $head['title']          = 'TAMBAH MASTER DIVISI';

        $data = array(
            'aksi'                      => 'tambah',
            'url_proses'                => base_url('admin/divisi/simpan_divisi'),
            'divisi_id'                  => set_value('divisi_id'),
            'nama_divisi'                => set_value('nama_divisi'),
            'deskripsi_divisi'           => set_value('deskripsi_divisi'),
            'status_divisi'              => set_value('status_divisi')
        );
        
        // view halaman
        $this->load->view('backend/templates/header', $head);
        $this->load->view('backend/templates/sidebar');
        $this->load->view('backend/master/form_divisi', $data);
        $this->load->view('backend/templates/footer');
    }

    public function ubah_divisi($divisi_id = null)
    {
        if($divisi_id == null){
            $this->session->set_flashdata('message1', '
                <div class="ui red message">
                    <i class="close icon"></i>
                    <div class="header">
                        Gagal
                    </div>
                    <p>Error pada saat mengambil data</p>
                </div>
                ');
            redirect (base_url('admin/divisi'));
        }

        // judul halaman
        $head['title']          = 'UBAH MASTER DIVISI';

        // ambil data dari fungsi detail_divisi
        $get_data = $this->detail_divisi($divisi_id);

        if ($get_data) {

            $data = array(
                'aksi'                      => 'ubah',
                'url_proses'                => base_url('admin/divisi/simpan_divisi'),
                'divisi_id'                 => set_value('divisi_id', $get_data->divisi_id),
                'nama_divisi'               => set_value('nama_divisi', $get_data->nama_divisi),
                'deskripsi_divisi'          => set_value('deskripsi_divisi', $get_data->deskripsi_divisi),
                'status_divisi'             => set_value('status_divisi', $get_data->status_divisi)
            );
            
            // view halaman
            $this->load->view('backend/templates/header', $head);
            $this->load->view('backend/templates/sidebar');
            $this->load->view('backend/master/form_divisi', $data);
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
            redirect (base_url('admin/divisi'));

        }
    }

    public function simpan_divisi()
    {

        $aksi_simpan = $this->input->post('aksi');
        
        $data = array(
            'nama_divisi'                => $this->input->post('nama_divisi'),
            'deskripsi_divisi'           => $this->input->post('deskripsi_divisi'),
            'status_divisi'              => $this->input->post('status_divisi')
        );

        // jika aksinya tambah
        if ($aksi_simpan == 'tambah') {

            $simpan = $this->Model_divisi->simpan_divisi($data);

        }elseif ($aksi_simpan == 'ubah') {
        // jika aksinya ubah
            $where = array('divisi_id' => $this->input->post('divisi_id'));

            $simpan = $this->Model_divisi->ubah_divisi($where, $data);
        }

        if ($simpan) {
            $this->session->set_flashdata('message1', '
                <div class="ui positive message">
                    <i class="close icon"></i>
                    <div class="header">
                        Berhasil
                    </div>
                    <p>Divisi berhasil ditambahkan.</p>
                </div>
                ');
            redirect (base_url('admin/divisi'));
        }else{
            $this->session->set_flashdata('message1', '
                <div class="ui negative message">
                    <i class="close icon"></i>
                    <div class="header">
                        Gagal
                    </div>
                    <p>Divisi gagal ditambahkan.</p>
                </div>
                ');
            redirect (base_url('admin/divisi'));
        }

    }

    public function hapus_divisi($divisi_id = null)
    {
        if($divisi_id == null){
            $this->session->set_flashdata('message1', '
                <div class="ui red message">
                    <i class="close icon"></i>
                    <div class="header">
                        Gagal
                    </div>
                    <p>Error pada saat mengambil data</p>
                </div>
                ');
            redirect (base_url('admin/divisi'));
        }

        // ambil data dari fungsi detail_divisi
        $get_data = $this->detail_divisi($divisi_id);

        if ($get_data) {

            $hapus = $this->Model_divisi->hapus_divisi($divisi_id);

            if ($hapus) {
                $this->session->set_flashdata('message1', '
                    <div class="ui positive message">
                        <i class="close icon"></i>
                        <div class="header">
                            Berhasil
                        </div>
                        <p>Divisi berhasil hapus.</p>
                    </div>
                    ');
                redirect (base_url('admin/divisi'));
            }else{
                $this->session->set_flashdata('message1', '
                    <div class="ui negative message">
                        <i class="close icon"></i>
                        <div class="header">
                            Gagal
                        </div>
                        <p>Divisi gagal hapus.</p>
                    </div>
                    ');
                redirect (base_url('admin/divisi'));
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
            redirect (base_url('admin/divisi'));

        }
    }

}