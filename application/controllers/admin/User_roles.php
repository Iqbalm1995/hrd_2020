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

			$row[] = '-';

			//add html for action
			// if ($user_groups->id == 1) {
			// 	$row[] = '<div class="text-center">-</div>';
			// }else{
			// 	$row[] = '<div class="text-center">
			// 				<a class="btn btn-sm btn-primary" href="javascript:void(0)" 
			// 					title="Edit" 
			// 					onclick="edit_groups('."'".$user_groups->id."'".')">
			// 					<i class="glyphicon glyphicon-pencil"></i></a>

			// 				<a class="btn btn-sm btn-danger" href="javascript:void(0)" 
			// 					title="Hapus" 
			// 					onclick="delete_groups('."'".$user_groups->id."'".')">
			// 					<i class="glyphicon glyphicon-trash"></i></a>
			// 				</div>';
			// }

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


	// public function ajax_edit($id)
	// {
	// 	$data = $this->user_groups->get_by_id($id);
	// 	// $data->dob = ($data->dob == '0000-00-00') ? '' : $data->dob; // if 0000-00-00 set tu empty for datepicker compatibility
	// 	echo json_encode($data);
	// }

	// public function ajax_add()
	// {
	// 	$this->_validate();

	// 	$data = array(
	// 			'nama' 						=> $this->input->post('nama'),
	// 			'keterangan' 				=> $this->input->post('keterangan'),
	// 			'akses_inbox' 				=> $this->input->post('akses_inbox'),
	// 			'akses_karyawan' 			=> $this->input->post('akses_karyawan'),
	// 			'akses_simpanan' 			=> $this->input->post('akses_simpanan'),
	// 			'akses_pelunasan' 			=> $this->input->post('akses_pelunasan'),
	// 			'akses_penjualan' 			=> $this->input->post('akses_penjualan'),
	// 			'akses_peminjaman' 			=> $this->input->post('akses_peminjaman'),
	// 			'akses_keuangan' 			=> $this->input->post('akses_keuangan'),
	// 			'akses_drive' 				=> $this->input->post('akses_drive'),
	// 			'akses_kategori' 			=> $this->input->post('akses_kategori'),
	// 			'akses_setting' 			=> $this->input->post('akses_setting'),
	// 		);

	// 	$insert = $this->user_groups->save($data);

	// 	echo json_encode(array("status" => TRUE));
	// 	$this->session->set_flashdata('message1', '
	// 		<div class="alert alert-info alert-dismissible" role="alert">
    //           <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
    //           <strong>Berhasil <i class="glyphicon glyphicon-ok"></i></strong> Data telah di tambahkan
    //         </div>
	// 		');
	// }

	// public function ajax_update()
	// {
	// 	$this->_validate();

	// 	$data = array(
	// 			'nama' 						=> $this->input->post('nama'),
	// 			'keterangan' 				=> $this->input->post('keterangan'),
	// 			'akses_inbox' 				=> $this->input->post('akses_inbox'),
	// 			'akses_karyawan' 			=> $this->input->post('akses_karyawan'),
	// 			'akses_simpanan' 			=> $this->input->post('akses_simpanan'),
	// 			'akses_pelunasan' 			=> $this->input->post('akses_pelunasan'),
	// 			'akses_penjualan' 			=> $this->input->post('akses_penjualan'),
	// 			'akses_peminjaman' 			=> $this->input->post('akses_peminjaman'),
	// 			'akses_keuangan' 			=> $this->input->post('akses_keuangan'),
	// 			'akses_drive' 				=> $this->input->post('akses_drive'),
	// 			'akses_kategori' 			=> $this->input->post('akses_kategori'),
	// 			'akses_setting' 			=> $this->input->post('akses_setting'),
	// 		);

	// 	$this->user_groups->update(array('id' => $this->input->post('id')), $data);
	// 	echo json_encode(array("status" => TRUE));
	// 	$this->session->set_flashdata('message1', '
	// 		<div class="alert alert-info alert-dismissible" role="alert">
    //           <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
    //           <strong>Berhasil <i class="glyphicon glyphicon-ok"></i></strong> Data telah di ubah
    //         </div>
	// 		');
	// }

	// public function ajax_delete($id)
	// {
	// 	$this->user_groups->delete_by_id($id);
	// 	echo json_encode(array("status" => TRUE));
	// 	$this->session->set_flashdata('message1', '
	// 		<div class="alert alert-info alert-dismissible" role="alert">
    //           <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
    //           <strong>Berhasil <i class="glyphicon glyphicon-ok"></i></strong> Data telah di hapus
    //         </div>
	// 		');
	// }

	// public function ajax_bulk_delete()
	// {
	// 	$list_id = $this->input->post('id');
	// 	foreach ($list_id as $id) {
	// 		$this->user_groups->delete_by_id($id);
	// 	}
	// 	echo json_encode(array("status" => TRUE));
	// 	$this->session->set_flashdata('message1', '
	// 		<div class="alert alert-info alert-dismissible" role="alert">
    //           <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
    //           <strong>Berhasil <i class="glyphicon glyphicon-ok"></i></strong> Data telah di hapus
    //         </div>
	// 		');
	// }

	// private function _validate()
	// {
	// 	$data = array();
	// 	$data['error_string'] = array();
	// 	$data['inputerror'] = array();
	// 	$data['status'] = TRUE;

	// 	if($this->input->post('nama') == '')
	// 	{
	// 		$data['inputerror'][] = 'nama';
	// 		$data['error_string'][] = 'Nama Masih Kosong';
	// 		$data['status'] = FALSE;
	// 	}

	// 	if($this->input->post('keterangan') == '')
	// 	{
	// 		$data['inputerror'][] = 'keterangan';
	// 		$data['error_string'][] = 'Keterangan Masih Kosong';
	// 		$data['status'] = FALSE;
	// 	}

	// 	if($data['status'] === FALSE)
	// 	{
	// 		echo json_encode($data);
	// 		exit();
	// 	}
	// }

}
