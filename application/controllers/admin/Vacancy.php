<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Vacancy extends CI_Controller {

	public function __construct()
	{
		parent::__construct();

		date_default_timezone_set('Asia/Jakarta');
		$this->load->model('admin/mo_user_groups','user_groups');
		$this->load->model('admin/mo_user_admin','user_admin');
		$this->load->model('admin/mo_division','division');
		$this->load->model('admin/mo_position','position');
		$this->load->model('admin/mo_vacancy','vacancy');

		// if($this->session->userdata('status') != "login"){
		// 	redirect(base_url().'admin');
		// }
    }
    
    public function index()
	{
		$head['title_page'] = 'Data Iklan Rekrutmen';
		
        $this->load->view('back/templates/header', $head);
		$this->load->view('back/templates/menu');
		$this->load->view('back/job/vacancy_view');
		$this->load->view('back/templates/footerChart');
    }

    public function ajax_list()
	{

		$list = $this->vacancy->get_datatables();
		$data = array();
		$no = $_POST['start'];
		foreach ($list as $vacancy) {
			$no++;
			$row = array();

			$row[] = $no;
			$row[] = '<strong>'.$vacancy->vac_job_title.'</strong>,&nbsp;<small><i> Oleh '.$vacancy->vac_create_by.' <strong>('.$vacancy->usr_role.')</strong></i></small>';
            // <div class="ui red horizontal label">Fruit</div>

            switch ($vacancy->vac_status) {
                case '1':
                    $row[] = '<div class="ui blue horizontal label">Open</div>';
                    break;
                case '2':
                    $row[] = '<div class="ui yellow horizontal label">Closed</div>';
                    break;
                case '3':
                    $row[] = '<div class="ui orange horizontal label">Out date</div>';
                    break;
                case '3':
                    $row[] = '<div class="ui red horizontal label">Non Aktif</div>';
                    break;

                default:
                    $row[] = '<div class="ui teal horizontal label">Draft</div>';
                    break;
            }

			//add html for action
			$row[] = '<div class="mini ui labeled button" tabindex="0">
                            <a class="mini ui olive button" href="'. base_url("admin/vacancy/recruit/".$vacancy->vac_id) .'">
                                <i class="bars icon"></i>Detail Data
                            </a>
                            <a class="mini ui basic left pointing label">
                                ('.$vacancy->count_rec_pos.') Lowogan
                            </a>
                          </div>';

			$data[] = $row;
		}

		$output = array(
						"draw" => $_POST['draw'],
						"recordsTotal" => $this->vacancy->count_all(),
						"recordsFiltered" => $this->vacancy->count_filtered(),
						"data" => $data,
				);
		//output to json format
		echo json_encode($output);
    }

}