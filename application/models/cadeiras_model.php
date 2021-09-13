<?php
class Cadeiras_model extends CI_Model {

    public function buscaTodos()
    {
        return $this->db->get("cadeiras")->result_array();
    }

    public function buscaPorCodigo($codigo)
    {
        $this->db->where("codigo", $codigo);
        return $this->db->get("cadeiras")->row_array();
    }


}