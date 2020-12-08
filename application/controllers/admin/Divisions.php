<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Divisions extends CI_Controller {

	public function __construct()
	{
		parent::__construct();

		date_default_timezone_set('Asia/Jakarta');
		$this->load->model('admin/mo_user_groups','user_groups');
		$this->load->model('admin/mo_user_admin','user_admin');
		$this->load->model('admin/mo_division','division');
		$this->load->model('admin/mo_position','position');

		// if($this->session->userdata('status') != "login"){
		// 	redirect(base_url().'admin');
		// }
    }
    
    public function index()
	{
		$head['title_page'] = 'Master Divisi';
		
        $this->load->view('back/templates/header', $head);
		$this->load->view('back/templates/menu');
		$this->load->view('back/master/division_view');
		$this->load->view('back/templates/footerChart');
    }

    public function tambah()
	{
		$head['title_page'] = 'Tambah Divisi';
		$data = array(
			'aksi' 						=> 'tambah',
			'action' 					=> base_url('admin/divisions/proses_tambah'),
			'id' 						=> set_value('id'),
			'div_name' 				    => set_value('div_name'),
			'desc' 						=> set_value('desc')
		);
		
        $this->load->view('back/templates/header', $head);
		$this->load->view('back/templates/menu');
		$this->load->view('back/master/division_form', $data);
		$this->load->view('back/templates/footerChart');
	}
    

    public function ajax_list()
	{

		$list = $this->division->get_datatables();
		$data = array();
		$no = $_POST['start'];
		foreach ($list as $division) {
			$no++;
			$row = array();

			$row[] = $no;
			$row[] = $division->div_name;
			$row[] = $division->desc;

			//add html for action
			$row[] = '<a class="mini ui teal button" href="'. base_url("admin/divisions/ubah/".$division->id) .'"><i class="pencil icon"></i>Ubah</a>
                          <a class="mini ui red button" href="'. base_url("admin/divisions/hapus/".$division->id) .'"><i class="trash icon"></i>Hapus</a>
                          <a class="mini ui violet button" href="'. base_url("admin/divisions/positions/".$division->id) .'"><i class="bars icon"></i>Posisi Divisi</a>';

			$data[] = $row;
		}

		$output = array(
						"draw" => $_POST['draw'],
						"recordsTotal" => $this->division->count_all(),
						"recordsFiltered" => $this->division->count_filtered(),
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
			'div_name' 				    => $this->input->post('div_name'),
			'desc' 						=> $this->input->post('desc'),
			'status' 					=> '1',
			'create_by' 				=> $create_by,
			'create_at' 				=> $create_at
		);

		$this->division->save($data);

		$this->session->set_flashdata('message1', '
			<div class="ui positive message">
				<i class="close icon"></i>
				<div class="header">
					Berhasil
				</div>
				<p>Divisi berhasil ditambahkan.</p>
			</div>
			');
		redirect (base_url('admin/divisions'));

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
			redirect (base_url('admin/divisions'));
		}

		$head['title_page'] = 'Ubah Divisi';
		
		$row = $this->division->get_by_id($id);

		if ($row) {

			$data = array(
				'aksi' 						=> 'ubah',
				'action' 					=> base_url('admin/divisions/proses_edit'),
				'id' 						=> set_value('id', $row->id),
				'div_name' 				    => set_value('div_name', $row->div_name),
				'desc' 						=> set_value('desc', $row->desc)
			);

			$this->load->view('back/templates/header', $head);
			$this->load->view('back/templates/menu');
			$this->load->view('back/master/division_form', $data);
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
			redirect (base_url('admin/divisions'));

		}

	}

    public function proses_edit()
	{
		
		date_default_timezone_set('Asia/Jakarta');
		$create_by			= '1'; //admin
		$create_at			= date("Y-m-d H:i:s");

		$data = array(
			'div_name' 				    => $this->input->post('div_name'),
			'desc' 						=> $this->input->post('desc')
		);

		$where = array('id' => $this->input->post('id'));

		$this->division->update($where, $data);

		$this->session->set_flashdata('message1', '
			<div class="ui positive message">
				<i class="close icon"></i>
				<div class="header">
					Berhasil
				</div>
				<p>Divisi berhasil diubah.</p>
			</div>
			');
		redirect (base_url('admin/divisions'));

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
			redirect (base_url('admin/divisions'));
		}
		
		$row = $this->division->get_by_id($id);

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
			redirect (base_url('admin/divisions'));
		}
		
		date_default_timezone_set('Asia/Jakarta');
		$create_by			= '1'; //admin
		$create_at			= date("Y-m-d H:i:s");

		$data = array(
			'deleted' 		=> '1'
		);

		$where = array('id' => $id);

		$this->division->update($where, $data);

		$this->session->set_flashdata('message1', '
			<div class="ui positive message">
				<i class="close icon"></i>
				<div class="header">
					Berhasil
				</div>
				<p>Divisi berhasil dihapus.</p>
			</div>
			');
		redirect (base_url('admin/divisions'));

    }
    
    // positions
    public function positions($id = null)
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
			redirect (base_url('admin/divisions'));
		}

		$head['title_page'] = 'Detail Divisi';
		
		$row = $this->division->get_by_id($id);

		if ($row) {

			$data = array(
				'detailDivision' 		    => $row,
			);

			$this->load->view('back/templates/header', $head);
			$this->load->view('back/templates/menu');
			$this->load->view('back/master/position_view', $data);
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
			redirect (base_url('admin/divisions'));

		}

    }
    
    public function ajax_list_position()
	{
		$list = $this->position->get_datatables();
		$data = array();
		$no = $_POST['start'];
		foreach ($list as $position) {
			$no++;
			$row = array();

			$row[] = $no;
			$row[] = $position->pos_name;
			$row[] = $position->desc;

			//add html for action
			$row[] = '<a class="mini ui teal button" href="'. base_url("admin/divisions/ubahPosisi/".$position->id."/".$position->division_id) .'"><i class="pencil icon"></i>Ubah</a>
                          <a class="mini ui red button" href="'. base_url("admin/divisions/hapusPosisi/".$position->id."/".$position->division_id) .'"><i class="trash icon"></i>Hapus</a>';

			$data[] = $row;
		}

		$output = array(
						"draw" => $_POST['draw'],
						"recordsTotal" => $this->position->count_all(),
						"recordsFiltered" => $this->position->count_filtered(),
						"data" => $data,
				);
		//output to json format
		echo json_encode($output);
    }

    // tambahPosisi
    public function tambahPosisi($id = null)
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
			redirect (base_url('admin/divisions'));
		}

		$head['title_page'] = 'Tambah Divisi Posisi';
		
		$row = $this->division->get_by_id($id);

		if ($row) {

			$data = array(
				'detailDivision' 		    => $row,
				'aksi' 						=> 'tambah',
				'action' 					=> base_url('admin/divisions/proses_tambah_posisi'),
				'id' 						=> set_value('id'),
				'division_id' 				=> set_value('division_id', $id),
				'pos_name' 				    => set_value('pos_name'),
				'desc' 						=> set_value('desc')
			);

			$this->load->view('back/templates/header', $head);
			$this->load->view('back/templates/menu');
			$this->load->view('back/master/position_form', $data);
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
			redirect (base_url('admin/divisions'));

		}
    }
    
    // proses_tambah_posisi
    public function proses_tambah_posisi()
	{
		
		date_default_timezone_set('Asia/Jakarta');
		$division_id		= $this->input->post('division_id'); 
		$create_by			= '1'; //admin
		$create_at			= date("Y-m-d H:i:s");

		$data = array(
			'division_id' 				=> $division_id,
			'pos_name' 				    => $this->input->post('pos_name'),
			'desc' 						=> $this->input->post('desc'),
			'status' 					=> '1',
			'create_by' 				=> $create_by,
			'create_at' 				=> $create_at
		);

		$this->position->save($data);

		$this->session->set_flashdata('message1', '
			<div class="ui positive message">
				<i class="close icon"></i>
				<div class="header">
					Berhasil
				</div>
				<p>Divisi berhasil ditambahkan.</p>
			</div>
			');
		redirect (base_url('admin/divisions/positions/'.$division_id));

    }

    // ubahPosisi
    public function ubahPosisi($id = null, $div_id = null)
	{
        
        if($div_id == null){
			$this->session->set_flashdata('message1', '
				<div class="ui red message">
					<i class="close icon"></i>
					<div class="header">
						Gagal
					</div>
					<p>Error pada saat mengambil data</p>
				</div>
				');
			redirect (base_url('admin/divisions'));
        }
        
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
			redirect (base_url('admin/divisions/positions/'.$div_id));
        }

		$head['title_page'] = 'Ubah Data Posisi';
		
		$row                = $this->position->get_by_id($id);
		$detailDivision     = $this->division->get_by_id($div_id);

		if ($row) {

			$data = array(
				'detailDivision' 		    => $detailDivision,
				'aksi' 						=> 'ubah',
				'action' 					=> base_url('admin/divisions/proses_edit_posisi'),
				'id' 						=> set_value('id', $row->id),
				'division_id' 				=> set_value('division_id', $row->division_id),
				'pos_name' 				    => set_value('pos_name', $row->pos_name),
                'desc' 						=> set_value('desc', $row->desc)
			);

			$this->load->view('back/templates/header', $head);
			$this->load->view('back/templates/menu');
			$this->load->view('back/master/position_form', $data);
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
            redirect (base_url('admin/divisions/positions/'.$div_id));

		}

    }
    
    // proses_edit_posisi
    public function proses_edit_posisi()
	{
		
		date_default_timezone_set('Asia/Jakarta');
		$division_id		= $this->input->post('division_id'); 
		$create_by			= '1'; //admin
		$create_at			= date("Y-m-d H:i:s");

		$data = array(
			'pos_name' 				    => $this->input->post('pos_name'),
			'desc' 						=> $this->input->post('desc')
		);

		$where = array('id' => $this->input->post('id'));

		$this->position->update($where, $data);

		$this->session->set_flashdata('message1', '
			<div class="ui positive message">
				<i class="close icon"></i>
				<div class="header">
					Berhasil
				</div>
				<p>Divisi berhasil diubah.</p>
			</div>
			');
        redirect (base_url('admin/divisions/positions/'.$division_id));

    }

    // hapusPosisi
    public function hapusPosisi($id = null, $div_id = null)
	{
		if($div_id == null){
			$this->session->set_flashdata('message1', '
				<div class="ui red message">
					<i class="close icon"></i>
					<div class="header">
						Gagal
					</div>
					<p>Error pada saat mengambil data</p>
				</div>
				');
			redirect (base_url('admin/divisions'));
        }
        
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
			redirect (base_url('admin/divisions/positions/'.$div_id));
        }
		
		$row = $this->position->get_by_id($id);

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
            redirect (base_url('admin/divisions/positions/'.$div_id));
		}
		
		date_default_timezone_set('Asia/Jakarta');
		$create_by			= '1'; //admin
		$create_at			= date("Y-m-d H:i:s");

		$data = array(
			'deleted' 		=> '1'
		);

		$where = array('id' => $id);

		$this->position->update($where, $data);

		$this->session->set_flashdata('message1', '
			<div class="ui positive message">
				<i class="close icon"></i>
				<div class="header">
					Berhasil
				</div>
				<p>Divisi berhasil dihapus.</p>
			</div>
			');
        redirect (base_url('admin/divisions/positions/'.$div_id));

    }

}