<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_ranking extends CI_Model {

	var $tb_divisi 		= 'divisi';
	
	public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}

	public function ambil()
	{
		
	}

}
