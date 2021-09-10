<?php
class Cardapio_itens_model extends CI_Model {
	
	public function buscaTodos()
	{
		return $this->db->get("cardapio_itens")->result_array();
	}

	public function salva($item)
	{
		$this->db->insert("cardapio_itens", $item);
	}
	
	public function busca($id)
	{
		return $this->db->get_where("cardapio_itens", array(
			"id" => $id
		))->row_array();
	}

	public function atualiza($item)
	{
		$this->db->update("cardapio_itens", 
			array(
			"nome" => $item["nome"],
			"preco" => $item["preco"]),
			array("id" => $item["id"])
		);
	}

	public function deleta($id)
	{
		$this->db->delete("cardapio_itens", array("id" => $id));
	}

}