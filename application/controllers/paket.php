<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Paket extends CI_Controller {

	function __construct() {
       parent::__construct();
       $this->load->model('md_paket', 'paket');
       $this->load->model('md_itinerary', 'itinerary');
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
			$data['title'] = 'Tambah Paket';
			$data['view'] = 'form_paket';
			$data['option_group'] = $this->paket->get_menu_group();

			$this->load->view('template', $data);
		}else{
			$this->load->view('view_login', $data);
		}
	}

	public function insert_itinerary($id){
		$data = array();
		$data['message'] = null;
		$data['url']=null;
		if($this->session->userdata('status')){
			$data['id'] = $id;
			$data['title'] = 'Tambah Itinerary';
			$data['view'] = 'form_itinerary';
			$this->load->view('template', $data);
		}else{
			$this->load->view('view_login', $data);
		}
	}

	public function edit($id, $data=FALSE){
		$data = array();
		if($this->session->userdata('status')){
			$result = $this->paket->get_paket_by_id($id);
			$data['id'] = $id;
			$data['nama_paket'] = $result->nama_paket;
			$data['menu_group'] = $result->menu_group;
			$data['description'] = $result->description;
			$data['package'] = $result->package;
			$data['currency'] = $result->currency;
			$data['price'] = $result->price;
			$data['is_active'] = $result->is_active;
			$data['person'] = $result->person;
			$data['option_group'] = $this->paket->get_menu_group();
			$data['itinerary'] = $this->itinerary->get_itinerary_by_paket($id);

			$data['title'] = 'Edit Paket';
			$data['view'] = 'edit_paket';
			$this->load->view('template', $data);
		}else{
			$this->load->view('view_login', $data);
		}
	}

	public function edit_itinerary($id_paket, $id){
		$data = array();
		if($this->session->userdata('status')){
			$result = $this->itinerary->get_itinerary_by_id($id);
			$data['id_paket'] = $id_paket;
			$data['id'] = $id;
			$data['title_itinerary'] = $result->title;
			$data['sequence'] = $result->sequence;
			$data['detail'] = $result->detail;

			$data['title'] = 'Edit Itinerary';
			$data['view'] = 'edit_itinerary';
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
				$data = array(
					'nama_paket' => $this->input->post('nama_paket'),
					'menu_group' => $this->input->post('menu_group'),
					'price' => $this->input->post('price'),
					'person' => $this->input->post('person'),
					'description' => $this->input->post('description'),
					'package' => $this->input->post('package'),
					'is_active' => $this->input->post('is_active') ? 1 : 0,
					'currency' => $this->input->post('currency'),
					'timestamp' => date('Y-m-d h:i:s')
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

		public function do_insert_itinerary(){
			$data = array();
			if($this->session->userdata('status')){
				$data = array(
					'title' => $this->input->post('title'),
					'sequence' => $this->input->post('sequence'),
					'detail' => $this->input->post('detail'),
					'id_paket' => $this->input->post('id_paket')
				);

				$this->itinerary->insert_itinerary($data);
				$data['message'] = 'Itinerary baru telah ditambahkan';
				$data['title'] = 'paket';
				$data['view'] = 'view_paket';
				$this->edit($data['id_paket'], $data);
			}else{
				$this->load->view('view_login', $data);
			}
		}

		public function do_edit($id){
			$data = array();
			$data['message'] = null;
			$data['url']=null;
			if($this->session->userdata('status')){
				$data = array(
					'nama_paket' => $this->input->post('nama_paket'),
					'menu_group' => $this->input->post('menu_group'),
					'price' => $this->input->post('price'),
					'person' => $this->input->post('person'),
					'description' => $this->input->post('description'),
					'package' => $this->input->post('package'),
					'is_active' => $this->input->post('is_active') ? 1 : 0,
					'currency' => $this->input->post('currency')
				);

				$this->paket->update_paket($id, $data);
				$data['message'] = 'Paket telah diubah';
				$data['paket'] = $this->paket->get_all_paket();
				$data['title'] = 'Paket';
				$data['view'] = 'view_paket';
				$this->load->view('template', $data);
			}else{
				$this->load->view('view_login', $data);
			}
		}

		public function do_edit_itinerary(){
			$data = array();
			if($this->session->userdata('status')){
				$id = $this->input->post('id');
				$data = array(
					'title' => $this->input->post('title'),
					'sequence' => $this->input->post('sequence'),
					'detail' => $this->input->post('detail')
				);

				$this->itinerary->update_itinerary($id, $data);
				$data['id_paket'] = $this->input->post('id_paket');
				$data['message'] = 'Itinerary telah diubah';
				$data['title'] = 'Paket';
				$data['view'] = 'view_paket';
				$this->edit($data['id_paket'], $data);
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