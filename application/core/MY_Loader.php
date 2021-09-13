<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class MY_Loader extends CI_Loader {

	public function template($conteudos = array())
	{
		$this->view("html_header.php");
		$this->view("cabecalho.php");

		if($conteudos != array())
		{
			foreach ($conteudos as $conteudo)
			{	
				if(array_key_exists("dados", $conteudo)){
					$this->view($conteudo["view"], $conteudo["dados"]);					
				}
				else
				{
					$this->view($conteudo["view"]);
				}
			}
		}

		$this->view("rodape.php");	
		$this->view("html_footer.php");
	}
}