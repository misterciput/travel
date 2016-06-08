<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Paket extends CI_Controller {

	function __construct() {
       parent::__construct();
       $this->load->model('md_paket', 'paket');
   }

	public function index(){
		$data = array();
		$data['message'] = null;
		$data['url']=null;
		if($this->session->userdata('status')){
			$data['title'] = 'Paket';
			$data['view'] = 'view_paket';
			$data['paket'] = $this->paket->get_all_paket();
			$this->load->view('template', $data);
		}else{
			$this->load->view('view_login', $data);
		}
	}

	public function insert(){
		$data = array();
		$data['message'] = null;
		$data['url']=null;
		if($this->session->userdata('status')){
			$data['title'] = 'Tambah paket';
			$data['view'] = 'form_paket';

			$this->load->view('template', $data);
		}else{
			$this->load->view('view_login', $data);
		}
	}

	public function edit($id){
		$data = array();
		$data['message'] = null;
		$data['url']=null;
		if($this->session->userdata('status')){
			$result = $this->paket->get_paket_by_id($id);
			$data['id'] = $id;
			$data['judul'] = $result->judul;
			$data['kategori'] = $result->kategori;
			$data['isi'] = $result->isi;
			$data['headline'] = $result->headline;
			$data['show'] = $result->show;
			$data['tanggal'] = $result->tanggal;
			$data['img'] = $result->img;

			$data['title'] = 'Edit paket';
			$data['view'] = 'edit_paket';
			$this->load->view('template', $data);
		}else{
			$this->load->view('view_login', $data);
		}
	}

		public function do_insert(){
			$data = array();
			$data['message'] = null;
			$data['url']=null;
			if($this->session->userdata('status')){
				$config['upload_path'] = './assets/img/';
				$config['allowed_types'] = 'gif|jpg|png|jpeg';
				$config['max_width']  = '0';
				$config['max_height']  = '0';
				$config['encrypt_name'] = TRUE;

				$this->load->library('upload', $config);
				$this->upload->do_upload('img');
				$upload = $this->upload->data();
				$data = array(
					'judul' => $this->input->post('judul'),
					'kategori' => $this->input->post('kategori'),
					'isi' => $this->input->post('isi'),
					'headline' => $this->input->post('headline') ? 1 : 0,
					'show' => $this->input->post('show') ? 1 : 0,
					'img' => $upload['file_name'],
					'tanggal' => date('Y-m-d', strtotime($this->input->post('tanggal'))),
					'recdate' => date('Y-m-d h:i:s')
				);

				$this->paket->insert_paket($data);
				$data['paket'] = $this->paket->get_all_paket();
				$data['message'] = 'paket baru telah ditambahkan';
				$data['title'] = 'paket';
				$data['view'] = 'view_paket';
				$this->load->view('template', $data);
			}else{
				$this->load->view('view_login', $data);
			}
		}

		public function do_edit($id){
			$data = array();
			$data['message'] = null;
			$data['url']=null;
			if($this->session->userdata('status')){
				$config['upload_path'] = './assets/img/';
				$config['allowed_types'] = 'gif|jpg|png|jpeg';
				$config['max_width']  = '0';
				$config['max_height']  = '0';
				$config['encrypt_name'] = TRUE;

				$this->load->library('upload', $config);
				$this->upload->do_upload('img');
				$upload = $this->upload->data();
				$current_paket = $this->paket->get_paket_by_id($id);
				$data = array(
					'judul' => $this->input->post('judul'),
					'kategori' => $this->input->post('kategori'),
					'isi' => $this->input->post('isi'),
					'headline' => $this->input->post('headline') ? 1 : 0,
					'show' => $this->input->post('show') ? 1 : 0,
					'img' => $upload['file_name'],
					'tanggal' => date('Y-m-d', strtotime($this->input->post('tanggal'))),
					'recdate' => date('Y-m-d h:i:s')
				);
				$this->paket->update_paket($id, $data);
				$data['message'] = 'paket telah diubah';
				$data['paket'] = $this->paket->get_all_paket();
				$data['title'] = 'paket';
				$data['view'] = 'view_paket';
				$this->load->view('template', $data);
			}else{
				$this->load->view('view_login', $data);
			}
		}
	public function delete($id){
		$this->paket->delete_paket($id);
		$data['message'] = 'paket telah dihapus';
		$data['paket'] = $this->paket->get_all_paket();
		$data['title'] = 'paket';
		$data['view'] = 'view_paket';
		$this->load->view('template', $data);
	}
}