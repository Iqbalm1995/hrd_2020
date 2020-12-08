<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User_roles extends CI_Controller {

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
		$head['title_page'] = 'User Roles';
		
        $this->load->view('back/templates/header', $head);
		$this->load->view('back/templates/menu');
		$this->load->view('back/user/user_roles_view');
		$this->load->view('back/templates/footerChart');
	}

	public function tambah()
	{
		$head['title_page'] = 'Tambah Role';
		$data = array(
			'aksi' 						=> 'tambah',
			'action' 					=> base_url('admin/user_roles/proses_tambah'),
			'id' 						=> set_value('id'),
			'role_name' 				=> set_value('role_name'),
			'desc' 						=> set_value('desc'),
			'status' 					=> set_value('status')
		);
		
        $this->load->view('back/templates/header', $head);
		$this->load->view('back/templates/menu');
		$this->load->view('back/user/user_roles_form', $data);
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
			redirect (base_url('admin/user_roles'));
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
			redirect (base_url('admin/user_roles'));
		}

		$head['title_page'] = 'Ubah Role';
		
		$row = $this->user_groups->get_by_id($id);

		if ($row) {

			$data = array(
				'aksi' 						=> 'ubah',
				'action' 					=> base_url('admin/user_roles/proses_edit'),
				'id' 						=> set_value('id', $row->id),
				'role_name' 				=> set_value('role_name', $row->role_name),
				'desc' 						=> set_value('desc', $row->desc),
				'status' 					=> set_value('status', $row->status)
			);

			$this->load->view('back/templates/header', $head);
			$this->load->view('back/templates/menu');
			$this->load->view('back/user/user_roles_form', $data);
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
			redirect (base_url('admin/user_roles'));

		}

	}

	public function ajax_list()
	{

		$list = $this->user_groups->get_datatables();
		$data = array();
		$no = $_POST['start'];
		foreach ($list as $user_groups) {
			$no++;
			$row = array();

			$row[] = $no;
			$row[] = $user_groups->role_name;
			$row[] = $user_groups->desc;

			switch ($user_groups->status) {
				case '0':
					$row[] = 'Non-Aktif';
					break;
				default:
					$row[] = 'Aktif';
					break;
			}

			// $row[] = '-';

			//add html for action
			if ($user_groups->id == '1') {
				$row[] = '-';
			}else{
				$row[] = '<a class="mini ui teal button" href="'. base_url("admin/user_roles/ubah/".$user_groups->id) .'"><i class="pencil icon"></i>Ubah</a>
						  <a class="mini ui red button" href="'. base_url("admin/user_roles/hapus/".$user_groups->id) .'"><i class="trash icon"></i>Hapus</a>';
			}

			$data[] = $row;
		}

		$output = array(
						"draw" => $_POST['draw'],
						"recordsTotal" => $this->user_groups->count_all(),
						"recordsFiltered" => $this->user_groups->count_filtered(),
						"data" => $data,
				);
		//output to json format
		echo json_encode($output);
	}
	
	public function proses_tambah()
	{
		
		date_default_timezone_set('Asia/Jakarta');
		$create_by			= '1'; //admin
		$create_at			= date("Y-m-d H:i:s");

		$data = array(
			'role_name' 				=> $this->input->post('role_name'),
			'desc' 						=> $this->input->post('desc'),
			'status' 					=> $this->input->post('status'),
			'create_by' 				=> $create_by,
			'create_at' 				=> $create_at
		);

		$this->user_groups->save($data);

		$this->session->set_flashdata('message1', '
			<div class="ui positive message">
				<i class="close icon"></i>
				<div class="header">
					Berhasil
				</div>
				<p>Role / Hak akses berhasil ditambahkan.</p>
			</div>
			');
		redirect (base_url('admin/user_roles'));

	}

	public function proses_edit()
	{
		
		date_default_timezone_set('Asia/Jakarta');
		$create_by			= '1'; //admin
		$create_at			= date("Y-m-d H:i:s");

		$data = array(
			'role_name' 				=> $this->input->post('role_name'),
			'desc' 						=> $this->input->post('desc'),
			'status' 					=> $this->input->post('status')
		);

		$where = array('id' => $this->input->post('id'));

		$this->user_groups->update($where, $data);

		$this->session->set_flashdata('message1', '
			<div class="ui positive message">
				<i class="close icon"></i>
				<div class="header">
					Berhasil
				</div>
				<p>Role / Hak akses berhasil diubah.</p>
			</div>
			');
		redirect (base_url('admin/user_roles'));

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
			redirect (base_url('admin/user_roles'));
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
			redirect (base_url('admin/user_roles'));
		}
		
		$row = $this->user_groups->get_by_id($id);

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
			redirect (base_url('admin/user_roles'));
		}
		
		date_default_timezone_set('Asia/Jakarta');
		$create_by			= '1'; //admin
		$create_at			= date("Y-m-d H:i:s");

		$data = array(
			'deleted' 		=> '1'
		);

		$where = array('id' => $id);

		$this->user_groups->update($where, $data);

		$this->session->set_flashdata('message1', '
			<div class="ui positive message">
				<i class="close icon"></i>
				<div class="header">
					Berhasil
				</div>
				<p>Role / Hak akses berhasil dihapus.</p>
			</div>
			');
		redirect (base_url('admin/user_roles'));

	}


}
