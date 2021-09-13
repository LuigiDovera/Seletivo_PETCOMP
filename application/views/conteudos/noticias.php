<h2>Notícias</h2>

<?php foreach ($noticias as $noticia) : ?>
    <div class="container-publicacao">
        <h4><?= $noticia["titulo"]?></h4>
        <p class="text-justify"><?= $noticia["resumo"]?></p>
    </div>
<?php endforeach ?>