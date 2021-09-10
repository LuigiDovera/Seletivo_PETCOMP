<?php
class Lazer_model extends CI_Model {

	public function buscaTodos()
	{
		return $this->db->get("lazer")->result_array();
	}

	public function salva($lazer)
	{
		$this->db->insert("lazer", $lazer);
	}

	public function busca($id)
	{
		return $this->db->get_where("lazer", array(
			"id" => $id
		))->row_array();
	}

	public function atualiza($atividade)
	{
		$this->db->update("lazer", 
			array(
			"nome" => $atividade["nome"],
			"descricao" => $atividade["descricao"]),
			array("id" => $atividade["id"])
		);
	}

	public function deleta($id)
	{
		$this->db->delete("lazer", array("id" => $id));
	}

}