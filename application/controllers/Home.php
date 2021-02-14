<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {
	public function __construct()
	{
	    parent::__construct();
	    // Set timezone
	    date_default_timezone_set('Asia/Jakarta');
	    // Load Model
	    $this->load->model('Model_iklan_lowongan');
	    $this->load->model('Model_posisi');
	    $this->load->model('Model_pelamar');
	    
	}

	public function index()
	{
		$data['result'] = $this->Model_iklan_lowongan->list_iklan_lowongan();
		$this->load->view('frontend/templates/header');
		$this->load->view('frontend/home', $data);
		$this->load->view('frontend/templates/footer');
	}
	public function detail($iklan_id)
	{
		$data['result'] = $this->Model_iklan_lowongan->detail_iklan_lowongan($iklan_id);
		$data['list'] = $this->Model_iklan_lowongan->ambil_lowongan_periklan($iklan_id);
		$this->load->view('frontend/templates/header');
		$this->load->view('frontend/detail', $data);
		$this->load->view('frontend/templates/footer');
	}
	public function apply($rekrut_id)
	{
		$data['rekrut_id'] = $rekrut_id;
		$data['action'] = base_url('home/simpan_apply');
		$this->load->view('frontend/templates/header');
		$this->load->view('frontend/apply', $data);
		$this->load->view('frontend/templates/footer');
	}
	public function simpan_apply()
	{
		$config['upload_path'] = 'assets/uploads/pelamar';
        $config['allowed_types'] = 'jpg|jpeg|png|svg|pdf|doc|docx|ppt|pptx';
        $config['encrypt_name'] = TRUE;
        $this->load->library('upload', $config);
        $this->upload->initialize($config);
        // Do upload Gambar Iklan
        if ($this->upload->do_upload('gambar_ktp')) {
        	$gambar_ktp =  $this->upload->data();
        	$dataGambar_ktp = $gambar_ktp['file_name'];
        	if ($this->upload->do_upload('gambar_foto_diri')) {
        		$gambar_foto_diri =  $this->upload->data();
        		$dataGambar_foto_diri = $gambar_foto_diri['file_name'];
        		if ($this->upload->do_upload('gambar_cv')) {
        			$gambar_cv =  $this->upload->data();
        			$dataGambar_cv = $gambar_cv['file_name'];
        			if ($this->upload->do_upload('gambar_catatan_kerja')) {
        				$gambar_catatan_kerja =  $this->upload->data();
        				$dataGambar_catatan_kerja = $gambar_catatan_kerja['file_name'];
        				if (empty($_FILES['gambar_sertifikat_pelatihan']['name'])) {
			        		$dataGambar_sertifikat_pelatihan = '';
			        	}else{
			        		$this->upload->do_upload('gambar_sertifikat_pelatihan');
			        		$gambar_sertifikat_pelatihan =  $this->upload->data();
			        		$dataGambar_sertifikat_pelatihan = $gambar_sertifikat_pelatihan['file_name'];
			        	}
        			}
        		}
        	}
        }
		$data = array(
			'nama_pelamar' => $this->input->post('nama_pelamar'),
			'jenis_kelamin' => $this->input->post('jenis_kelamin'),
			'tanggal_lahir' => date("Y-m-d h:m:s", strtotime($this->input->post('tanggal_lahir'))),
			'tempat_lahir' => $this->input->post('tempat_lahir'),
			'status_menikah' => $this->input->post('status_menikah'),
			'agama' => $this->input->post('agama'),
			'alamat' => $this->input->post('alamat'),
			'no_hp' => $this->input->post('no_hp'),
			'email' => $this->input->post('email'),
			'gambar_ktp' => $dataGambar_ktp,
			'gambar_foto_diri' => $dataGambar_foto_diri,
			'gambar_cv' => $dataGambar_cv,
			'gambar_catatan_kerja' => $dataGambar_catatan_kerja,
			'gambar_sertifikat_pelatihan' => $dataGambar_sertifikat_pelatihan
		);
		$last_rekrut_id = $this->Model_pelamar->simpan_pelamar($data);
		$data2 = array(
			'rekrut_id' => $last_rekrut_id,
			'status_pelamar' => '0'
		);
		if ($this->Model_pelamar->simpan_perekrutan_pelamar($data2)) {
			redirect(base_url('home/'));
		}else{
			echo "Gagal";
		}
	}
}
