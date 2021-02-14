<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Ujites_perekrutan extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
        // Set timezone
        date_default_timezone_set('Asia/Jakarta');
        // Load Model
        $this->load->model('Model_ujian_perekrutan');
        $this->load->model('Model_pelamar');
        $this->load->model('Model_posisi');
        $this->load->model('Model_divisi');
        $this->load->model('Model_tes_ujian');
        //sesion login
        if(($this->session->userdata('status_login') != "loginactive") && ($this->session->userdata('role') != 'admin')){
			redirect(base_url().'admin/login');
		}
        
    }

	public function index()
	{
		$head['title']          = 'DATA UJI TES KANDIDAT PELAMAR';

        // ambil data dari fungsi rekrut_pelamar
		$filter = array(
			'tanggal_iklan' 	=> null, 
			'pos_id' 			=> 'all',
			'judul_iklan' 		=> '',
            'status_pelamar'    => 'all',
		);

        $data['rekrut_pelamar'] 		= $this->rekrut_pelamar($filter);

        $data['data_posisi'] 			= $this->data_posisi();
        $data['pos_id_filter'] 			= set_value('pos_id_filter');
        $data['judul_iklan'] 			= set_value('judul_iklan');
        
        // view halaman
		$this->load->view('backend/templates/header', $head);
		$this->load->view('backend/templates/sidebar');
		$this->load->view('backend/ujian_perekrutan/view_ujian_perekrutan', $data);
		$this->load->view('backend/templates/footer');
	}

	public function rekrut_pelamar($filter)
    {
        $data = $this->Model_ujian_perekrutan->list_rekrut_pelamar($filter);
        return $data;
    }

    public function data_posisi()
    {
        $data = $this->Model_posisi->list_posisi();
        return $data;
    }


	public function detail_rekrut($rekrut_id)
    {
        $data = $this->Model_ujian_perekrutan->detail_rekrut_pelamar($rekrut_id);
        return $data;
    }

	public function list_pelamar_rekrut($rekrut_id)
    {
        $data = $this->Model_ujian_perekrutan->list_pelamar($rekrut_id);
        return $data;
    }

	public function detail_pelamar($rekrut_id, $pelamar_id)
    {
        $data = $this->Model_ujian_perekrutan->detail_pelamar($rekrut_id, $pelamar_id);
        return $data;
    }

	public function data_ujian_pelamar($rekrut_id, $pelamar_id)
    {
        $data = $this->Model_ujian_perekrutan->list_ujian_pelamar($rekrut_id, $pelamar_id);
        return $data;
    }

    public function detail_tes_ujian($tes_id)
    {
        $data = $this->Model_tes_ujian->detail_tes_ujian($tes_id);
        return $data;
    }

    public function detail_ujites($rekrut_id)
    {
        $data['detail_rekrut'] 			= $this->detail_rekrut($rekrut_id);

    	$head['title']          		= 'DETAIL UJI TES KANDIDAT PELAMAR';

        $data['list_pelamar_rekrut'] 			= $this->list_pelamar_rekrut($rekrut_id);
        
        // view halaman
		$this->load->view('backend/templates/header', $head);
		$this->load->view('backend/templates/sidebar');
		$this->load->view('backend/ujian_perekrutan/detail_ujian_perekrutan', $data);
		$this->load->view('backend/templates/footer');
    }

    public function rekrut_ujites($rekrut_id, $pelamar_id)
    {
        $data['detail_pelamar'] 			= $this->detail_pelamar($rekrut_id, $pelamar_id);
        $data['data_ujian_pelamar'] 		= $this->data_ujian_pelamar($rekrut_id, $pelamar_id);
        $data['rekrut_id'] 					= $rekrut_id;

    	$head['title']          		= 'DETAIL UJI TES KANDIDAT PELAMAR';
        
        // view halaman
		$this->load->view('backend/templates/header', $head);
		$this->load->view('backend/templates/sidebar');
		$this->load->view('backend/ujian_perekrutan/view_ujites_pelamar', $data);
		$this->load->view('backend/templates/footer');
    }

    public function form_nilai($tes_id, $pelamar_id, $rekrut_id)
    {
    	$data['detail_tes_ujian'] 		= $this->detail_tes_ujian($tes_id);
    	$data['pelamar_id'] 			= $pelamar_id;
    	$data['rekrut_id'] 				= $rekrut_id;

        $data_hasil = $this->Model_ujian_perekrutan->hasil_tes_ujian($tes_id, $pelamar_id);

        if (empty($data_hasil)) {
	        $data['config_form'] = array(
	            'aksi'                     	 => 'tambah',
	            'url_proses'                 => base_url('admin/ujites_perekrutan/simpan_nilai'),
	            'skor_wawancara'             => set_value('skor_wawancara'),
	            'skor_tes'                   => set_value('skor_tes'),
	            'status_hasil_tes'           => set_value('status_hasil_tes')
	        );
        }else{
	        $data['config_form'] = array(
	            'aksi'                     	 => 'ubah',
	            'url_proses'                 => base_url('admin/ujites_perekrutan/simpan_nilai'),
	            'skor_wawancara'             => set_value('skor_wawancara', $data_hasil->skor_wawancara),
	            'skor_tes'               	 => set_value('skor_tes', $data_hasil->skor_tes),
	            'status_hasil_tes'           => set_value('status_hasil_tes', $data_hasil->status_hasil_tes)
	        );
        }

    	$head['title']          		= 'FORM NILAI UJI TES KANDIDAT PELAMAR';
        
        // view halaman
		$this->load->view('backend/templates/header', $head);
		$this->load->view('backend/templates/sidebar');
		$this->load->view('backend/ujian_perekrutan/form_nilai', $data);
		$this->load->view('backend/templates/footer');
    }

    public function simpan_nilai()
    {
    	$aksi_simpan 		= $this->input->post('aksi');
    	$tes_id 			= $this->input->post('tes_id');
    	$pelamar_id 		= $this->input->post('pelamar_id');
    	$rekrut_id		 	= $this->input->post('rekrut_id');
    	$skor_wawancara 	= $this->input->post('skor_wawancara');
    	$skor_tes 			= $this->input->post('skor_tes');
    	$status_hasil_tes 	= $this->input->post('status_hasil_tes');

        $data = array(
            'pelamar_id'                	=> $pelamar_id,
            'tes_id'                		=> $tes_id,
            'skor_wawancara'                => $skor_wawancara,
            'skor_tes'                		=> $skor_tes,
            'status_hasil_tes'              => $status_hasil_tes,
        );

        // jika aksinya tambah
        if ($aksi_simpan == 'tambah') {

            $simpan = $this->Model_ujian_perekrutan->simpan_hasil_tes($data);

        }elseif ($aksi_simpan == 'ubah') {
        // jika aksinya ubah
            $where = array(
            	'pelamar_id' 	=> $pelamar_id,
            	'tes_id' 		=> $tes_id,
            );

            $simpan = $this->Model_ujian_perekrutan->ubah_hasil_tes($where, $data);
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
            redirect (base_url('admin/ujites_perekrutan/rekrut_ujites/'.$rekrut_id.'/'.$pelamar_id));
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
            redirect (base_url('admin/ujites_perekrutan/rekrut_ujites/'.$rekrut_id.'/'.$pelamar_id));
        }

    }

}

/* End of file Ujites_perekrutan.php */
/* Location: ./application/controllers/admin/Ujites_perekrutan.php */