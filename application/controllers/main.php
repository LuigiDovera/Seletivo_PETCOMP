<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Main extends CI_Controller {

	public function home()
	{
		$this->load->template();
	}

	public function sobre()
	{
		$conteudo = array(array("nome"=>"conteudos/sobre-texto.php"), 
							array("nome"=>"conteudos/sobre-galeria.php")
						);
		$this->load->template($conteudo);
	}

	public function publicacoes()
	{	$this->load->model("publicacoes_model");
		$dados = array("publicacoes" => $this->publicacoes_model->buscaTodos());
		$conteudo = array(array("nome" => "conteudos/publicacoes", "dados" => $dados));
		$this->load->template($conteudo);
	}

	public function noticias()
	{
		$this->load->model("noticias_model");
		$dados = array("noticias" => $this->noticias_model->buscaTodos());
		$conteudo = array(array("nome" => "conteudos/noticias", "dados" => $dados));
		$this->load->template($conteudo);
	}
}