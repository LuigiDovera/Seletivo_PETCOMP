
<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
    <!--Expand at sm-->
    <a class="navbar-brand" href="#">
        <a class="navbar-brand" href="<?= base_url() ?>">
            <img src="<?= base_url("assets/img/PETComp.png") ?>" width="50" height="50" class="d-inline-block align-top" alt="">
        </a>
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample03" aria-controls="navbarsExample03" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarsExample03">
    <ul class="navbar-nav mr-auto">
        <li class="nav-item">
        <a class="nav-link" href="<?= base_url() ?>">Início<span class="sr-only"></span></a>
        </li>
        <li class="nav-item">
        <a class="nav-link" href="<?= base_url("sobre") ?>">Sobre Nós</a>
        </li>
        <li class="nav-item">
        <a class="nav-link" href="<?= base_url("publicacoes") ?>">Publicações</a>
        </li>
        <li class="nav-item">
        <a class="nav-link" href="<?= base_url("noticias") ?>">Notícias</a>
        </li>
        <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="dropdown03" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Biblioteca PETComp</a>
        <div class="dropdown-menu" aria-labelledby="dropdown03">
            <a class="dropdown-item" href="#">Monitoria Algoritmos</a>
            <a class="dropdown-item" href="#">Monitoria Cálculo 1</a>
            <a class="dropdown-item" href="#">Monitoria LP 1</a>
        </div>
        </li>
    </ul>
    </div>
</nav>


