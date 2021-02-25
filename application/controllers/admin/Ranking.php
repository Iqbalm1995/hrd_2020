<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Ranking extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
        // Set timezone
        date_default_timezone_set('Asia/Jakarta');
        // Load Model
        $this->load->model('Model_ranking');
        //sesion login
        if(($this->session->userdata('status_login') != "loginactive") && ($this->session->userdata('role') != 'admin')){
			redirect(base_url().'admin/login');
		}
        
    }

	public function index()
	{
		$data['title'] = 'RANKING';
		$data['low'] = $this->Model_ranking->ambilselect();
		if ($this->input->post('rekrut_id') != 'all') {
			if (!is_null($this->input->post('rekrut_id'))) {
				$arrdata = explode(':', $this->input->post('rekrut_id'));
				$rekrut_id = $arrdata[0];
				$data['lowongan_nama'] = $arrdata[1];
				$data['rekrut_id'] = $arrdata[0];
				$data['list'] = $this->Model_ranking->listpelamar($rekrut_id);
			}
			if (!is_null($this->input->post('rank_rekrut_id'))) {
				$rekrut_id = $this->input->post('rank_rekrut_id');
				$jumlahbobot = $this->Model_ranking->sumbobot($rekrut_id);

				// fungsi membuat bobot baru dan fektornya
				foreach ($this->Model_ranking->listbobot($rekrut_id) as $databaru) {
					$bobotbaru = round($databaru->bobot_tes / $jumlahbobot->jumlah_bobot, 5);
					if ($databaru->jenis_tes == 0) {
						$bobotbaru = $bobotbaru * 1;
					}else{
						$bobotbaru = $bobotbaru * -1;
					}
					$listbobotbaru[] = (object) array(
						'tes_id' => $databaru->tes_id,
						'nama_tes' => $databaru->nama_tes,
						'deskripsi_tes' => $databaru->deskripsi_tes,
						'status_tes' => $databaru->status_tes,
						'jenis_tes' => $databaru->jenis_tes,
						'bobot_tes' => $databaru->bobot_tes,
						'bobot_tes_baru' => $bobotbaru
					);
				}
				$data['listbobot'] = $listbobotbaru;

				// fungsi menghitung nilai vektor S
				foreach ($this->Model_ranking->listpelamar($rekrut_id) as $lp) {
					$dataplmr[] = (object) array(
						'pelamar_id' => $lp->pelamar_id,
						'nama_pelamar' => $lp->nama_pelamar
					);
				}
				$jum_plmr = count($this->Model_ranking->listpelamar($rekrut_id));
				$resnil = [];
				$vek_v = 0;
				for ($i=0; $i < $jum_plmr; $i++) { 
					$pelamar_id = $dataplmr[$i]->pelamar_id;
					$nama_plr = $dataplmr[$i]->nama_pelamar;
					$vek_s = 1;
					$ib = 0;
					$jumlah_test = count($listbobotbaru);
					$testbobot = 0;
					$dataLog = [];
					foreach ($this->Model_ranking->ambilnilai($rekrut_id, $pelamar_id) as $dn) {
						$testbobot = $listbobotbaru[$ib]->bobot_tes_baru;
						$pangkat = pow($dn->skor_tes, $testbobot);
						$vek_s = $vek_s * $pangkat; 
						$datapush = array(
										'nama_t' => $dn->nama_tes,
										'skor_t' => $dn->skor_tes,
										'pangkat_t' => $testbobot
						);
						array_push($dataLog, $datapush);
						$ib++;
					}
					$resnil[$i] = [
						'id_plr'  => $pelamar_id,
						'nama_plr'=> $nama_plr,
						'datalog' => $dataLog
					];
					$where = array(
						'pelamar_id' => $pelamar_id,
						'rekrut_id' => $rekrut_id 
					);
					$vs = array('vektor_s' => $vek_s);
					$this->Model_ranking->ubahdata($where, $vs);
				}
				
				$datapp = $this->Model_ranking->ambilpp($rekrut_id);
				$sumvs =  $this->Model_ranking->sumvs($rekrut_id);
				$jmldtv = count($datapp);
				if ($jmldtv > 0) {
					foreach ($datapp as $pp) {
						$vv = $pp->vektor_s / $sumvs->jml_vek_s;
						$wherevv = array(
							'pelamar_id' => $pp->pelamar_id,
							'rekrut_id'	=> $pp->rekrut_id
						);
						$datavv = array(
							'vektor_v' => $vv
						);
						$this->Model_ranking->ubahdata($wherevv, $datavv);
					}
				}
				$data['logplr'] = $resnil;
				$data['ranking'] = $this->Model_ranking->ambilranking($rekrut_id);
			}
		}else {
			echo "<script>alert('Pilih Posisi Dahulu!')</script>";
		}
		$this->load->view('backend/templates/header', $data);
		$this->load->view('backend/templates/sidebar');
		$this->load->view('backend/ranking/index_ranking', $data);
		$this->load->view('backend/templates/footer');
	}

}
