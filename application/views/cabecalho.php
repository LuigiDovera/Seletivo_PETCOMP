
<nav class="navbar navbar-expand-sm navbar-light bg-light ">
    <!--Expand at sm-->
    <a class="navbar-brand" href="#">
        <a class="navbar-brand" href="<?= base_url() ?>">
            <img src="<?= base_url("assets/img/PETComp.png") ?>" width="50" height="50" class="d-inline-block align-top" alt="">
        </a>
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample03" aria-controls="navbarsExample03" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse">
    <ul class="navbar-nav ml-auto navbar-margin">
        <li class="nav-item">
        <a class="nav-link" href="<?= base_url() ?>">Início<span class="sr-only"></span></a>
        </li>
        <li class="nav-item">
        <a class="nav-link" href="<?= base_url("index.php/main/sobre") ?>">Sobre Nós</a>
        </li>
        <li class="nav-item">
        <a class="nav-link" href="<?= base_url("index.php/main/publicacoes") ?>">Publicações</a>
        </li>
        <li class="nav-item">
        <a class="nav-link" href="<?= base_url("index.php/main/noticias") ?>">Notícias</a>
        </li>
        <li class="nav-item">
        <a class="nav-link" href="<?= base_url("index.php/biblioteca") ?>">Biblioteca PETComp</a>
        </li>
    </ul>
    </div>
</nav>

<div class="container-principal"> 


