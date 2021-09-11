<h2>Publicações</h2>

<?php foreach ($publicacoes as $publicacao) : ?>
    <div class="container-publicacao">
        <h4><?= $publicacao["titulo"]?></h4>
        <p>Autores: <?= $publicacao["autores"]?></p>
        <a href="<?= $publicacao["link_publicacao"]?>">Resumo</a>
    </div>
<?php endforeach ?>