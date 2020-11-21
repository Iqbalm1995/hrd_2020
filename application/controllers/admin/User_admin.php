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
		$head['title_page'] = 'User Admin';
		
        $this->load->view('back/templates/header', $head);
		$this->load->view('back/templates/menu');
		$this->load->view('back/user/user_admin_view');
		$this->load->view('back/templates/footerChart');
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

			$row[] = '-';

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


	

}
