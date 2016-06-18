<?php
class Md_paket extends CI_Model {

	public function get_all_paket(){
		$this->db->select('paket.*');
		$this->db->select('menu_group.name group_name');
		$this->db->from('paket');
		$this->db->order_by('paket.id', 'desc');
		$this->db->join('menu_group', 'paket.menu_group=menu_group.code');
		$result = $this->db->get();

		return $result->result();
	}

	public function insert_paket($data){

		$this->db->insert('paket', $data);
	}

	public function update_paket($id, $data){
		$this->db->where('id', $id);
		$this->db->update('paket', $data);
	}

	public function get_paket_by_id($id){
		$this->db->from('paket');
		$this->db->where('id', $id);
		$result = $this->db->get();
		$result = $result->result();

		return $result[0];
	}

	public function delete_paket($id){
		$this->db->delete('paket', array('id' => $id));
	}

	public function get_menu_group(){
		$result = $this->db->get('menu_group')->result();
		return $result;
	}

	public function get_provinsi(){
		$this->db->select('id_provinsi id');
		$this->db->select('nama nama');
		$this->db->from('provinsi');
		$result = $this->db->get()->result();

		return $result;
	}

	public function get_international(){
		$this->db->select('country_code id');
		$this->db->select('country_name nama');
		$this->db->from('country');
		$result = $this->db->get()->result();

		return $result;
	}

	public function get_umroh_haji(){
		$this->db->select('id_other id');
		$this->db->select('nama_other nama');
		$this->db->from('other');
		$this->db->where('code', 'UMH');
		$result = $this->db->get()->result();

		return $result;
	}

	public function get_special_trip(){
		$this->db->select('id_other id');
		$this->db->select('nama_other nama');
		$this->db->from('other');
		$this->db->where('code', 'SPT');
		$result = $this->db->get()->result();

		return $result;
	}
}