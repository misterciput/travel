<?php
class Md_paket extends CI_Model {

	public function get_all_paket(){
		$this->db->from('paket');
		$this->db->order_by('id', 'desc');
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
}