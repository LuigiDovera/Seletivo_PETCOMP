<div class="d-flex justify-content-center container-publicacao" style="background-color: rgba(226, 223, 223, 0.438); opacity: 95%">
    <?php foreach($cadeiras as $cadeira) :?>
    <div class="flex-row" style="margin: 1em" >
        <a href="<?= base_url("index.php/biblioteca/cadeira/")?><?= $cadeira["codigo"]?>">
            <button class="botao-biblioteca" style="background-color: <?= $cadeira["background-color"]?>">
                <img src="<?= $cadeira["svg"]?>" width="80em" height="80em">
            </button>
        </a>
        <div class="d-flex flex-wrap justify-content-center">
            <p class="d-flex flex-wrap text-justify text-align-center" style="margin-bottom:0; background-color: white; padding:0.5em"><?= $cadeira["nome"]?></p>
        </div>
    </div>
    <?php endforeach ?>
</div>
