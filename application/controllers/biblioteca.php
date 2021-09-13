<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Biblioteca extends CI_Controller {
    
    public function index()
    {
        $this->load->model("cadeiras_model");
		$dados = array("cadeiras" => $this->cadeiras_model->buscaTodos());
		$conteudo = array(array("view" => "conteudos/biblioteca-index.php", "dados" => $dados));
		$this->load->template($conteudo);
    }

    public function cadeira($codigo = -1)
    {   
        $this->load->model("cadeiras_model");
        $this->load->model("aulas_model");
        $cadeiras = $this->cadeiras_model->buscaTodos();
        $aulas = $this->aulas_model->buscaPorCadeira($codigo);

        $dados_index = array("cadeiras" => $cadeiras);
		$dados_aulas = array("aulas" => $aulas);
		$conteudo = array(
            array("view" => "conteudos/biblioteca-index.php", "dados" => $dados_index),
            array("view" => "conteudos/biblioteca-aulas.php", "dados" => $dados_aulas)
        );  
		$this->load->template($conteudo);
    }


}