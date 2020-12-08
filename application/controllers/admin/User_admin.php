<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User_admin extends CI_Controller {

	public function __construct()
	{
		parent::__construct();

		date_default_timezone_set('Asia/Jakarta');
		$this->load->model('admin/mo_user_groups','user_groups');
		$this->load->model('admin/mo_user_admin','user_admin');

		// if($this->session->userdata('status') != "login"){
		// 	redirect(base_url().'admin');
		// }
	}

	public function index()
	{
		$head['title_page'] = 'Pengguna';
		
        $this->load->view('back/templates/header', $head);
		$this->load->view('back/templates/menu');
		$this->load->view('back/user/user_admin_view');
		$this->load->view('back/templates/footerChart');
	}

	public function tambah()
	{
		$head['title_page'] = 'Tambah Pengguna';
		$data = array(
			'aksi' 						=> 'tambah',
			'action' 					=> base_url('admin/user_admin/proses_tambah'),
			'id' 						=> set_value('id'),
			'role_id' 					=> set_value('role_id'),
			'name' 						=> set_value('name'),
			'username' 					=> set_value('username'),
			'password' 					=> set_value('password'),
			'email' 					=> set_value('email'),
			'status' 					=> set_value('status')
		);
		$data['dataRoles'] 	= $this->user_admin->get_roles();
		
        $this->load->view('back/templates/header', $head);
		$this->load->view('back/templates/menu');
		$this->load->view('back/user/user_admin_form', $data);
		$this->load->view('back/templates/footerChart');
	}

	public function ubah($id = null)
	{
		if($id == null){
			$this->session->set_flashdata('message1', '
				<div class="ui red message">
					<i class="close icon"></i>
					<div class="header">
						Gagal
					</div>
					<p>Error pada saat mengambil data</p>
				</div>
				');
			redirect (base_url('admin/user_admin'));
		}elseif($id == '1'){
			$this->session->set_flashdata('message1', '
				<div class="ui red message">
					<i class="close icon"></i>
					<div class="header">
						Gagal
					</div>
					<p>Data Superadmin tidak bisa diubah</p>
				</div>
				');
			redirect (base_url('admin/user_admin'));
		}

		$head['title_page'] = 'Ubah Pengguna';
		
		$row = $this->user_admin->get_by_id($id);

		if ($row) {

			$data = array(
				'aksi' 						=> 'ubah',
				'action' 					=> base_url('admin/user_admin/proses_edit'),
				'id' 						=> set_value('id', $row->id),
				'role_id' 					=> set_value('role_id', $row->role_id),
				'name' 						=> set_value('name', $row->name),
				'username' 					=> set_value('username', $row->username),
				'password' 					=> set_value('password'),
				'email' 					=> set_value('email', $row->email),
				'status' 					=> set_value('status', $row->status)
			);
			$data['dataRoles'] 	= $this->user_admin->get_roles();

			$this->load->view('back/templates/header', $head);
			$this->load->view('back/templates/menu');
			$this->load->view('back/user/user_admin_form', $data);
			$this->load->view('back/templates/footerChart');

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
			redirect (base_url('admin/user_admin'));

		}

	}

	public function ajax_list()
	{

		$list = $this->user_admin->get_datatables();
		$data = array();
		$no = $_POST['start'];
		foreach ($list as $user_admin) {
			$no++;
			$row = array();

			$row[] = $no;
			$row[] = $user_admin->username;
			$row[] = $user_admin->email;
			$row[] = $user_admin->name;
			$row[] = $user_admin->role_name;

			switch ($user_admin->status) {
				case '0':
					$row[] = 'Non-Aktif';
					break;
				default:
					$row[] = 'Aktif';
					break;
			}

			//add html for action
			if ($user_admin->id == '1') {
				$row[] = '-';
			}else{
				$row[] = '<a class="mini ui teal button" href="'. base_url("admin/user_admin/ubah/".$user_admin->id) .'"><i class="pencil icon"></i>Ubah</a>
						  <a class="mini ui red button" href="'. base_url("admin/user_admin/hapus/".$user_admin->id) .'"><i class="trash icon"></i>Hapus</a>';
			}

			$data[] = $row;
		}

		$output = array(
						"draw" => $_POST['draw'],
						"recordsTotal" => $this->user_admin->count_all(),
						"recordsFiltered" => $this->user_admin->count_filtered(),
						"data" => $data,
				);
		//output to json format
		echo json_encode($output);
	}

	public function proses_tambah()
	{
		
		date_default_timezone_set('Asia/Jakarta');
		$username 			= $this->input->post('username');
		$email 				= $this->input->post('email');
		$password 			= password_hash($this->input->post('password'), PASSWORD_BCRYPT);
		$create_by			= '1'; //admin
		$create_at			= date("Y-m-d H:i:s");

		$data = array(
			'role_id' 					=> $this->input->post('role_id'),
			'name' 						=> $this->input->post('name'),
			'username' 					=> $username,
			'password' 					=> $password,
			'email' 					=> $email,
			'status' 					=> $this->input->post('status'),
			'create_by' 				=> $create_by,
			'create_at' 				=> $create_at
		);
		
		$check_username = $this->user_admin->check_username($username);
		if(!empty($check_username)){
			$this->session->set_flashdata('message1', '
				<div class="ui red message">
					<i class="close icon"></i>
					<div class="header">
						Gagal
					</div>
					<p>Cek form kembali, data <i>Username</i> yang sama tidak ditambahkan 2 kali</p>
				</div>
				');
			redirect (base_url('admin/user_admin/tambah'));
		}

		$check_email = $this->user_admin->check_email($email);
		if(!empty($check_email)){
			$this->session->set_flashdata('message1', '
				<div class="ui red message">
					<i class="close icon"></i>
					<div class="header">
						Gagal
					</div>
					<p>Cek form kembali, data <i>Email</i> yang sama tidak ditambahkan 2 kali</p>
				</div>
				');
			redirect (base_url('admin/user_admin/tambah'));
		}

		$save = $this->user_admin->save($data);

		if($save){
			$this->session->set_flashdata('message1', '
				<div class="ui positive message">
					<i class="close icon"></i>
					<div class="header">
						Berhasil
					</div>
					<p>Pengguna baru ditambahkan.</p>
				</div>
				');
			redirect (base_url('admin/user_admin'));
		}else{
			$this->session->set_flashdata('message1', '
				<div class="ui red message">
					<i class="close icon"></i>
					<div class="header">
						Gagal
					</div>
					<p>Cek form kembali, data <i>Username</i> atau <i>Email</i> yang sama tidak ditambahkan 2 kali</p>
				</div>
				');
			if (isset($_SERVER["HTTP_REFERER"])) {
				header("Location: " . $_SERVER["HTTP_REFERER"]);
			}else{
				redirect (base_url('admin/user_admin'));
			}
		}

		

	}

	public function proses_edit()
	{
		
		date_default_timezone_set('Asia/Jakarta');
		$username 			= $this->input->post('username');
		$email 				= $this->input->post('email');
		$password 			= password_hash($this->input->post('password'), PASSWORD_BCRYPT);
		$create_by			= '1'; //admin
		$create_at			= date("Y-m-d H:i:s");

		$data = array(
			'role_id' 					=> $this->input->post('role_id'),
			'name' 						=> $this->input->post('name'),
			'username' 					=> $username,
			'email' 					=> $email,
			'status' 					=> $this->input->post('status')
		);

		if(!empty($this->input->post('password'))){
			$data['password'] = $password;
		}

		$where = array('id' => $this->input->post('id'));

		$this->user_admin->update($where, $data);

		$this->session->set_flashdata('message1', '
			<div class="ui positive message">
				<i class="close icon"></i>
				<div class="header">
					Berhasil
				</div>
				<p>Pengguna berhasil diubah.</p>
			</div>
			');
		redirect (base_url('admin/user_admin'));

	}

	public function hapus($id = null)
	{
		if($id == null){
			$this->session->set_flashdata('message1', '
				<div class="ui red message">
					<i class="close icon"></i>
					<div class="header">
						Gagal
					</div>
					<p>Error pada saat mengambil data</p>
				</div>
				');
			redirect (base_url('admin/user_admin'));
		}elseif($id == '1'){
			$this->session->set_flashdata('message1', '
				<div class="ui red message">
					<i class="close icon"></i>
					<div class="header">
						Gagal
					</div>
					<p>Data Superadmin tidak bisa dihapus</p>
				</div>
				');
			redirect (base_url('admin/user_admin'));
		}
		
		$row = $this->user_admin->get_by_id($id);

		if(empty($row)){
			$this->session->set_flashdata('message1', '
				<div class="ui red message">
					<i class="close icon"></i>
					<div class="header">
						Gagal
					</div>
					<p>Data tidak ditemukan</p>
				</div>
				');
			redirect (base_url('admin/user_admin'));
		}
		
		date_default_timezone_set('Asia/Jakarta');
		$create_by			= '1'; //admin
		$create_at			= date("Y-m-d H:i:s");

		$data = array(
			'deleted' 		=> '1'
		);

		$where = array('id' => $id);

		$this->user_admin->update($where, $data);

		$this->session->set_flashdata('message1', '
			<div class="ui positive message">
				<i class="close icon"></i>
				<div class="header">
					Berhasil
				</div>
				<p>Pengguna berhasil dihapus.</p>
			</div>
			');
		redirect (base_url('admin/user_admin'));

	}
	

}
