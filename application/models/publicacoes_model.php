<?php
class Publicacoes_model extends CI_Model {

    public function buscaTodos(){
        return $this->db->get("publicacoes")->result_array();
    }


}