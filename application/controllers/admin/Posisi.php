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
        if(($this->session->userdata('status_login') != "loginactive") && ($this->session->userdata('role') != 'admin')){
			redirect(base_url().'admin/login');
		}
        
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

    public function detail_posisi($pos_id)
    {
        $data = $this->Model_posisi->detail_posisi($pos_id);
        return $data;
    }

    public function tambah_posisi()
    {
        // judul halaman
        $head['title']          = 'TAMBAH POSISI DIVISI';

        $data = array(
            'aksi'                      => 'tambah',
            'url_proses'                => base_url('admin/posisi/simpan_posisi'),
            'pos_id'                    => set_value('pos_id'),
            'nama_posisi'               => set_value('nama_posisi'),
            'deskripsi_posisi'          => set_value('deskripsi_posisi'),
            'status_posisi'             => set_value('status_posisi'),
            'divisi_id'                 => set_value('divisi_id')
        );

        $data['data_divisi'] = $this->data_divisi();
        
        // view halaman
        $this->load->view('backend/templates/header', $head);
        $this->load->view('backend/templates/sidebar');
        $this->load->view('backend/master/form_posisi', $data);
        $this->load->view('backend/templates/footer');
    }

    public function ubah_posisi($pos_id = null)
    {
        if($pos_id == null){
            $this->session->set_flashdata('message1', '
                <div class="ui red message">
                    <i class="close icon"></i>
                    <div class="header">
                        Gagal
                    </div>
                    <p>Error pada saat mengambil data</p>
                </div>
                ');
            redirect (base_url('admin/posisi'));
        }

        // judul halaman
        $head['title']          = 'UBAH POSISI DIVISI';

        // ambil data dari fungsi detail_posisi
        $get_data = $this->detail_posisi($pos_id);

        if ($get_data) {

            $data = array(
                'aksi'                      => 'ubah',
                'url_proses'                => base_url('admin/posisi/simpan_posisi'),
                'pos_id'                    => set_value('pos_id', $get_data->pos_id),
                'nama_posisi'               => set_value('nama_posisi', $get_data->nama_posisi),
                'deskripsi_posisi'          => set_value('deskripsi_posisi', $get_data->deskripsi_posisi),
                'status_posisi'             => set_value('status_posisi', $get_data->status_posisi),
                'divisi_id'                 => set_value('divisi_id', $get_data->divisi_id)
            );

            $data['data_divisi'] = $this->data_divisi();
            
            // view halaman
            $this->load->view('backend/templates/header', $head);
            $this->load->view('backend/templates/sidebar');
            $this->load->view('backend/master/form_posisi', $data);
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
            redirect (base_url('admin/posisi'));

        }
    }

    public function simpan_posisi()
    {

        $aksi_simpan = $this->input->post('aksi');
        
        $data = array(
            'nama_posisi'               => $this->input->post('nama_posisi'),
            'deskripsi_posisi'          => $this->input->post('deskripsi_posisi'),
            'status_posisi'             => $this->input->post('status_posisi'),
            'divisi_id'                 => $this->input->post('divisi_id')
        );

        // jika aksinya tambah
        if ($aksi_simpan == 'tambah') {

            $simpan = $this->Model_posisi->simpan_posisi($data);

        }elseif ($aksi_simpan == 'ubah') {
        // jika aksinya ubah
            $where = array('pos_id' => $this->input->post('pos_id'));

            $simpan = $this->Model_posisi->ubah_posisi($where, $data);
        }

        if ($simpan) {
            $this->session->set_flashdata('message1', '
                <div class="ui positive message">
                    <i class="close icon"></i>
                    <div class="header">
                        Berhasil
                    </div>
                    <p>Posisi Divisi berhasil ditambahkan.</p>
                </div>
                ');
            redirect (base_url('admin/posisi'));
        }else{
            $this->session->set_flashdata('message1', '
                <div class="ui negative message">
                    <i class="close icon"></i>
                    <div class="header">
                        Gagal
                    </div>
                    <p>Posisi Divisi gagal ditambahkan.</p>
                </div>
                ');
            redirect (base_url('admin/posisi'));
        }

    }

    public function hapus_posisi($pos_id = null)
    {
        if($pos_id == null){
            $this->session->set_flashdata('message1', '
                <div class="ui red message">
                    <i class="close icon"></i>
                    <div class="header">
                        Gagal
                    </div>
                    <p>Error pada saat mengambil data</p>
                </div>
                ');
            redirect (base_url('admin/posisi'));
        }

        // ambil data dari fungsi detail_posisi
        $get_data = $this->detail_posisi($pos_id);

        if ($get_data) {

            $hapus = $this->Model_posisi->hapus_posisi($pos_id);

            if ($hapus) {
                $this->session->set_flashdata('message1', '
                    <div class="ui positive message">
                        <i class="close icon"></i>
                        <div class="header">
                            Berhasil
                        </div>
                        <p>Posisi Divisi berhasil hapus.</p>
                    </div>
                    ');
                redirect (base_url('admin/posisi'));
            }else{
                $this->session->set_flashdata('message1', '
                    <div class="ui negative message">
                        <i class="close icon"></i>
                        <div class="header">
                            Gagal
                        </div>
                        <p>Posisi Divisi gagal hapus.</p>
                    </div>
                    ');
                redirect (base_url('admin/posisi'));
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
            redirect (base_url('admin/posisi'));

        }
    }
}