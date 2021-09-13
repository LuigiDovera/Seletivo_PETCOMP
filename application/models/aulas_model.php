<?php
class Aulas_model extends CI_Model {

    //retorna uma array com sub-arrays relacionando cada aula a sua respectiva cadeira
    //não usada
    public function buscaCadeirasAulas()
    {
        $this->load->model("cadeiras_model");
        $cadeiras_aulas = $this->cadeiras_model->buscaTodos();
        foreach ($cadeiras_aulas as $cadeira)
        {
            $this->db->where("cadeiras_codigo", $cadeira["codigo"]);
            $cadeira["aulas"] = $this->db->get("aulas")->result_array();
        }
        
        return $cadeiras_aulas;
    }

    //retorna todas as aulas de uma determinada cadeira
    public function buscaPorCadeira($cadeira_codigo)
    {
        $this->load->model("cadeiras_model");
        $cadeira = $this->cadeiras_model->buscaPorCodigo($cadeira_codigo);
        
        $this->db->where("cadeiras_codigo", $cadeira["codigo"]);
        return $this->db->get("aulas")->result_array();
    }



}