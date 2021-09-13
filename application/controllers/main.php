<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Main extends CI_Controller {

	public function home()
	{	
		$conteudo = array(array("view" => "conteudos/inicio"));
		$this->load->template($conteudo);
	}

	public function sobre()
	{
		$conteudo = array(array("view"=>"conteudos/sobre-texto.php"), 
							array("view"=>"conteudos/sobre-galeria.php")
						);
		$this->load->template($conteudo);
	}

	public function publicacoes()
	{	$this->load->model("publicacoes_model");
		$dados = array("publicacoes" => $this->publicacoes_model->buscaTodos());
		$conteudo = array(array("view" => "conteudos/publicacoes", "dados" => $dados));
		$this->load->template($conteudo);
	}

	public function noticias()
	{
		$this->load->model("noticias_model");
		$dados = array("noticias" => $this->noticias_model->buscaTodos());
		$conteudo = array(array("view" => "conteudos/noticias", "dados" => $dados));
		$this->load->template($conteudo);
	}
}