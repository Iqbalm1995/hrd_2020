<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Mo_vacancy extends CI_Model {

	var $table_vacancy = 'vac_vacancy';
	var $view_vacancy = 'list_vacancy_view';
	var $column_order = array(null,
							  'vac_id',
							  'vac_job_title',
							  'vac_desc',
							  'vac_status',
							  'vac_due_date',
							  'vac_create_by',
							  'usr_role',
							  'vac_create_at',
							  'count_rec_pos'); //set column field database for datatable orderable
	var $column_search = array('vac_job_title', 'vac_desc', 'vac_status', 'vac_create_by', 'usr_role', 'vac_create_at'); //set column field database for datatable searchable just firstname , lastname , address are searchable
	var $order = array('vac_create_at' => 'desc'); // default order 

	public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}

	public function get_datas() 
	{
		return $this->db->get($this->view_vacancy)->result();
	}

	private function _get_datatables_query()
	{
		
		$this->db->from($this->view_vacancy);
        $this->db->group_by('vac_id');
        // $this->db->where('deleted =', '0');

		$i = 0;
		foreach ($this->column_search as $item) // loop column 
		{
			if($_POST['search']['value']) // if datatable send POST for search
			{
				
				if($i===0) // first loop
				{
					$this->db->group_start(); // open bracket. query Where with OR clause better with bracket. because maybe can combine with other WHERE with AND.
					$this->db->like($item, $_POST['search']['value']);
				}
				else
				{
					$this->db->or_like($item, $_POST['search']['value']);
				}

				if(count($this->column_search) - 1 == $i) //last loop
					$this->db->group_end(); //close bracket
			}
			$i++;
		}
		
		if(isset($_POST['order'])) // here order processing
		{
			$this->db->order_by($this->column_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
		} 
		else if(isset($this->order))
		{
			$order = $this->order;
			$this->db->order_by(key($order), $order[key($order)]);
		}
	}

	function get_datatables()
	{
		$this->_get_datatables_query();
		if($_POST['length'] != -1)
		$this->db->limit($_POST['length'], $_POST['start']);
		$query = $this->db->get();
		return $query->result();
	}

	function count_filtered()
	{
		$this->_get_datatables_query();
		$query = $this->db->get();
		return $query->num_rows();
	}

	public function count_all()
	{
		$this->db->from($this->view_vacancy);
        // $this->db->where('deleted =', '0');
		return $this->db->count_all_results();
	}

	public function get_by_id($id)
	{
		$this->db->from($this->table_vacancy);
        $this->db->where('deleted =', '0');
		$this->db->where('id',$id);
		$query = $this->db->get();

		return $query->row();
	}

	public function save($data)
	{
		$this->db->insert($this->table_vacancy, $data);
		return $this->db->insert_id();
	}

	public function update($where, $data)
	{
		$this->db->update($this->table_vacancy, $data, $where);
		return $this->db->affected_rows();
	}

	public function delete_by_id($id)
	{
		$this->db->where('id', $id);
		$this->db->delete($this->table_vacancy);
	}

	function cek($where,$table){		
		return $this->db->get_where($table,$where);
	}


}
