<?php
class Noticias_model extends CI_Model {

    public function buscaTodos(){
        return $this->db->get("noticias")->result_array();
    }


}