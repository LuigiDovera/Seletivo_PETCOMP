<?php
class Administradores_model extends CI_Model {

	public function buscaTodos()
	{
		return $this->db->get("administradores")->result_array();
	}

	public function salva($administrador)
	{
		$this->db->insert("administradores", $administrador);
	}

	public function buscaPorEmailESenha($email, $senha)
	{
		$this->db->where("email", $email);
		$this->db->where("senha", $senha);
		$administrador = $this->db->get("administradores")->row_array();
		return $administrador;
	}

	public function busca($id)
	{
		return $this->db->get_where("administradores", array(
			"id" => $id
		))->row_array();
	}

	public function atualiza($administrador)
	{
		$this->db->update("administradores", 
			array(
			"nome" => $administrador["nome"],
			"email" => $administrador["email"],
			"senha" => $administrador["senha"]),
			array("id" => $administrador["id"])
		);
	}

	public function deleta($id)
	{
		$this->db->delete("administradores", array("id" => $id));
	}

}
?>