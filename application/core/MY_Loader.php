<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class MY_Loader extends CI_Loader {

	public function homeTemplate($nome, $dados = array())
	{
		$this->view("html_header.php");
		$this->view("principal/cabecalho.php");
		//$this->view($nome, $dados);
		//$this->view("principal/rodape.php");
		$this->view("html_footer.php");
	}

}