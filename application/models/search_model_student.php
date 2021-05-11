<?php

class Search_model_student extends CI_Model{
	public function get_search_by_name($data){
		$this->db->select('*');
		$this->db->from('student');
		$this->db->like('first_name',$data);
		$this->db->like('last_name',$data);
		$this->db->or_like('email',$data);
		$this->db->or_like('stream',$data);
		$this->db->or_like('job',$data);
		 $query = $this->db->get();
        return $query->result();
	}
}

?>