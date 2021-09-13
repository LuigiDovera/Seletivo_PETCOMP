<div class="d-flex flex-row flex-wrap justify-content-center">
<?php foreach ($aulas as $aula) : ?>
    <div class="d-flex container-aula flex-column">
        <h4 class="margem-texto"><?= $aula["nome"]?></h4>
        <a class="margem-texto" href="<?= $aula["video"]?>">Vídeo Aula</a>
        <?php if($aula["resumo"] != null): ?>
        <a class="margem-texto" href="<?= $aula["resumo"]?>">Resumo</a>
        <?php endif ?>
        <?php if($aula["questionario"] != null): ?>
        <a class="margem-texto" href="<?= $aula["questionario"]?>">Questionário</a>
        <?php endif ?>
    </div>
<?php endforeach ?>
</div>
