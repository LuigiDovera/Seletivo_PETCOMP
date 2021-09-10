<h1>Relaxar ao ar livre</h1>
<p>Globo Hotel-Fazenda é a escolha certa para fugir do caos da cidade grande. Nossas acomodações darão a você e sua família a melhor experiência do campo, com toda a segurança e lazer em sua estadia. Diversão e tranquilidade para todas as idades. Faça sua reserva e venha aproveitar o ar livre da fazenda!</p>

<div class="galeria">
  <a target="_blank" href="<?= base_url("assets/img/pavao.jpg") ?>">
    <img src="<?= base_url("assets/img/pavao.jpg") ?>" width="600" height="400">
  </a>
</div>

<div class="galeria">
  <a target="_blank" href="<?= base_url("assets/img/porquinhos.jpg") ?>">
    <img src="<?= base_url("assets/img/porquinhos.jpg") ?>" width="600" height="400">
  </a>
</div>

<div class="galeria">
  <a target="_blank" href="<?= base_url("assets/img/passeio_cavalo.jpg") ?>">
    <img src="<?= base_url("assets/img/passeio_cavalo.jpg") ?>" width="600" height="400">
  </a>
</div>

<div class="galeria">
  <a target="_blank" href="<?= base_url("assets/img/montain-bike.jpg") ?>">
    <img src="<?= base_url("assets/img/montain-bike.jpg") ?>" width="600" height="400">
  </a>
</div>

<div class="galeria">
  <a target="_blank" href="<?= base_url("assets/img/charrete.jpg") ?>">
    <img src="<?= base_url("assets/img/charrete.jpg") ?>" width="600" height="400">
  </a>
</div>

<h1>Lazer para toda a família</h1>
<table class="tabela">
	<?php foreach($atividades as $atividade) : ?>
		<tr>
			<td><?= $atividade["nome"]?></td>
			<td><?= $atividade["descricao"]?></td>
		</tr>
	<?php endforeach ?>
</table>