<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Front_catalog extends CI_Controller {
	public function index()
	{
		$this->load->helper('url');
		$this->load->view('front_catalog');
	}
}
