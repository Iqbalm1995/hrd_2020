<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
        // Set timezone
        date_default_timezone_set('Asia/Jakarta');
        // Load Model
        $this->load->model('Model_login');
        
    }

	public function index()
	{
		$data['title'] = 'LOGIN';
		$this->load->view('backend/templates/header', $data);
		$this->load->view('backend/login');
	}

	public function proses_login()
	{

		$username  		= $this->input->post('username');
		$password 		= $this->input->post('password');

        if (isset($username) && isset($password)) {

            $data_pengguna = $this->Model_login->cek_akun($username, $password);

            if ($data_pengguna) {

            	if ($data_pengguna->status_akses == '0') {
            		$this->session->set_flashdata('message1', '
	                <div class="ui negative message">
	                    <i class="close icon"></i>
	                    <div class="header">
	                        Login Gagal
	                    </div>
	                    <p>Akses akun anda sedang tidak aktif</p>
	                </div>
	                ');
	            	redirect(base_url().'admin/login');
            	}

            	if ($data_pengguna->status_pengguna == '0') {
            		$this->session->set_flashdata('message1', '
	                <div class="ui negative message">
	                    <i class="close icon"></i>
	                    <div class="header">
	                        Login Gagal
	                    </div>
	                    <p>Akun anda sedang tidak aktif</p>
	                </div>
	                ');
	            	redirect(base_url().'admin/login');
            	}

            	$data_session = array(
					'pengguna_id' 		=> $data_pengguna->pengguna_id,
					'nama_pengguna' 	=> $data_pengguna->nama_pengguna,
					'username' 			=> $data_pengguna->username,
					'email' 			=> $data_pengguna->email,
					'status_pengguna' 	=> $data_pengguna->status_pengguna,
					'status_akses' 		=> $data_pengguna->status_akses,
					'nama_akses' 		=> $data_pengguna->nama_akses,
					'status_login' 		=> "loginactive"
				);

				$this->session->set_userdata($data_session);
					
				redirect(base_url().'admin/dashboard');

            }else{
                $this->session->set_flashdata('message1', '
                <div class="ui negative message">
                    <i class="close icon"></i>
                    <div class="header">
                        Login Gagal
                    </div>
                    <p>Periksa kembali username dan password</p>
                </div>
                ');
            	redirect(base_url().'admin/login');
            }
        }else{
        	$this->session->set_flashdata('message1', '
            <div class="ui negative message">
                <i class="close icon"></i>
                <div class="header">
                    Login Gagal
                </div>
                <p>Periksa kembali username dan password</p>
            </div>
            ');
        	redirect(base_url().'admin/login');
        }
	}
	
	public function logout()
	{
		$data_session = array(
					'pengguna_id' 		=> '',
					'nama_pengguna' 	=> '',
					'username' 			=> '',
					'email' 			=> '',
					'status_pengguna' 	=> '',
					'status_akses' 		=> '',
					'nama_akses' 		=> '',
					'status_login' 		=> ''
				);
		$this->session->unset_userdata($data_session);
    	$this->session->sess_destroy();

	    redirect(base_url().'admin/login');
	}

}
