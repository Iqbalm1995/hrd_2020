<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Iklan_lowongan extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
        // Set timezone
        date_default_timezone_set('Asia/Jakarta');
        // Load Model
        $this->load->model('Model_iklan_lowongan');
        $this->load->model('Model_posisi');
        //sesion login
        if(($this->session->userdata('status_login') != "loginactive") && ($this->session->userdata('role') != 'admin')){
			redirect(base_url().'admin/login');
		}
        
    }

	public function index()
	{
        // judul halaman
        $head['title']          = 'DATA IKLAN LOWONGAN';

        // ambil data dari fungsi iklan_lowongan
        $data['iklan_lowongan'] = $this->data_iklan_lowongan();
        
        // view halaman
		$this->load->view('backend/templates/header', $head);
		$this->load->view('backend/templates/sidebar');
		$this->load->view('backend/perekrutan/view_iklan_lowongan', $data);
		$this->load->view('backend/templates/footer');
    }
    
    public function data_iklan_lowongan()
    {
        $data = $this->Model_iklan_lowongan->list_iklan_lowongan();
        return $data;
    }

    public function data_list_posisi()
    {
        $data = $this->Model_posisi->list_posisi();
        return $data;
    }

    public function detail_iklan_lowongan($iklan_id)
    {
        $data = $this->Model_iklan_lowongan->detail_iklan_lowongan($iklan_id);
        echo "<pre>";
        print_r($data);
        return $data;
    }

    public function tambah_iklan_lowongan()
    {
        // judul halaman
        $head['title']          = 'TAMBAH IKLAN LOWONGAN';

        $data = array(
            'aksi'                      => 'tambah',
            'url_proses'                => base_url('admin/iklan_lowongan/simpan_iklan_lowongan'),
            'iklan_id'                  => set_value('iklan_id'),
            'judul_iklan'               => set_value('judul_iklan'),
            'deskripsi_iklan'          	=> set_value('deskripsi_iklan'),
            'status_iklan'             	=> set_value('status_iklan'),
            'tanggal_iklan'            	=> set_value('tanggal_iklan'),
            'batas_waktu'            	=> set_value('batas_waktu'),
            'gambar_iklan'            	=> set_value('gambar_iklan'),
            'pos_id'                 	=> set_value('pos_id', '0')
        );

        $data['data_list_posisi'] = $this->data_list_posisi();
        
        // view halaman
        $this->load->view('backend/templates/header', $head);
        $this->load->view('backend/templates/sidebar');
        $this->load->view('backend/perekrutan/form_iklan_lowongan', $data);
        $this->load->view('backend/templates/footer');
    }

    public function ubah_iklan_lowongan($iklan_id = null)
    {
        if($iklan_id == null){
            $this->session->set_flashdata('message1', '
                <div class="ui red message">
                    <i class="close icon"></i>
                    <div class="header">
                        Gagal
                    </div>
                    <p>Error pada saat mengambil data</p>
                </div>
                ');
            redirect (base_url('admin/iklan_lowongan'));
        }

        // judul halaman
        $head['title']          = 'UBAH IKLAN LOWONGAN';

        // ambil data dari fungsi detail_iklan_lowongan
        $get_data = $this->detail_iklan_lowongan($iklan_id);

        if ($get_data) {

            $data = array(
                'aksi'                      => 'ubah',
                'url_proses'                => base_url('admin/iklan_lowongan/simpan_iklan_lowongan'),
                'iklan_id'                  => set_value('iklan_id', $get_data->iklan_id),
                'judul_iklan'               => set_value('judul_iklan', $get_data->judul_iklan),
                'deskripsi_iklan'          	=> set_value('deskripsi_iklan', $get_data->deskripsi_iklan),
                'status_iklan'             	=> set_value('status_iklan', $get_data->status_iklan),
                'tanggal_iklan'             => set_value('tanggal_iklan', $get_data->tanggal_iklan),
                'batas_waktu'             	=> set_value('batas_waktu', $get_data->batas_waktu),
                'gambar_iklan'             	=> set_value('gambar_iklan', $get_data->gambar_iklan),
                'pos_id'                 	=> set_value('pos_id', $get_data->pos_id)
            );

            $data['data_list_posisi'] = $this->data_list_posisi();
            
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
            redirect (base_url('admin/iklan_lowongan'));

        }
    }

    public function simpan_iklan_lowongan()
    {
        $config['upload_path'] = 'assets/uploads';
        $config['allowed_types'] = 'jpg|jpeg|png|svg';
        $this->load->library('upload', $config);
        $this->upload->initialize($config);
        // Do upload Gambar Iklan
        if($this->upload->do_upload('gambar_iklan')) {
           $fileData = $this->upload->data();
           $aksi_simpan = $this->input->post('aksi');
           $data = array(
               'judul_iklan'        => $this->input->post('judul_iklan'),
               'deskripsi_iklan'    => $this->input->post('deskripsi_iklan'),
               'status_iklan'       => $this->input->post('status_iklan'),
               'tanggal_iklan'      => date("Y-m-d h:m:s", strtotime($this->input->post('tanggal_iklan'))),
               'batas_waktu'        => date("Y-m-d h:m:s", strtotime($this->input->post('batas_waktu'))),
               'gambar_iklan'       => $fileData['file_name']
           );

           // jika aksinya tambah
           if ($aksi_simpan == 'tambah') {
               $simpan = $this->Model_iklan_lowongan->simpan_iklan_lowongan($data);
           }elseif ($aksi_simpan == 'ubah') {
           // jika aksinya ubah
               $where = array('iklan_id' => $this->input->post('iklan_id'));
               $simpan = $this->Model_iklan_lowongan->ubah_iklan_lowongan($where, $data);
           }

           if ($simpan) {
               $this->session->set_flashdata('message1', '
                   <div class="ui positive message">
                       <i class="close icon"></i>
                       <div class="header">
                           Berhasil
                       </div>
                       <p>Iklan berhasil ditambahkan.</p>
                   </div>
                   ');
               redirect (base_url('admin/iklan_lowongan'));
           }else{
               $this->session->set_flashdata('message1', '
                   <div class="ui negative message">
                       <i class="close icon"></i>
                       <div class="header">
                           Gagal
                       </div>
                       <p>Iklan Divisi gagal ditambahkan.</p>
                   </div>
                   ');
               redirect (base_url('admin/iklan_lowongan'));
           }

        }else{ // Jika upload Error -> Tampilkan Error
           echo $this->upload->display_errors();
        }
    }

    public function hapus_posisi($iklan_id = null)
    {
        if($iklan_id == null){
            $this->session->set_flashdata('message1', '
                <div class="ui red message">
                    <i class="close icon"></i>
                    <div class="header">
                        Gagal
                    </div>
                    <p>Error pada saat mengambil data</p>
                </div>
                ');
            redirect (base_url('admin/iklan_lowongan'));
        }

        // ambil data dari fungsi detail_posisi
        $get_data = $this->detail_posisi($iklan_id);

        if ($get_data) {

            $hapus = $this->Model_iklan_lowongan->hapus_tb_iklan_lowongan($iklan_id);

            if ($hapus) {
                $this->session->set_flashdata('message1', '
                    <div class="ui positive message">
                        <i class="close icon"></i>
                        <div class="header">
                            Berhasil
                        </div>
                        <p>Iklan Divisi berhasil hapus.</p>
                    </div>
                    ');
                redirect (base_url('admin/iklan_lowongan'));
            }else{
                $this->session->set_flashdata('message1', '
                    <div class="ui negative message">
                        <i class="close icon"></i>
                        <div class="header">
                            Gagal
                        </div>
                        <p>Iklan Divisi gagal hapus.</p>
                    </div>
                    ');
                redirect (base_url('admin/iklan_lowongan'));
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
            redirect (base_url('admin/iklan_lowongan'));

        }
    }

}

/* End of file Iklan_lowongan.php */
/* Location: ./application/controllers/admin/Iklan_lowongan.php */