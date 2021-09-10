<div class="main-div">
<div class="container-logo">
	<img class="cabecalho-img" src="<?= base_url("assets/img/logo.jpg") ?>">
	<div class="bottom-right">
		<p>Reservas:</p> 
		<p>(98) 4002-8922 / (98) 2465-8686</p>
		<p>reserva@globohotelfazenda.com</p>
	</div>
	<div class="top-left">
		<p>Globo Hotel Fazenda</p>
	</div>
</div>

<nav class="navbar">
        <span class="navbar-toggle" id="js-navbar-toggle">
            <i class="fas fa-bars"></i>
        </span>
        <?= anchor("home", "Globo Hotel-Fazenda", array("class" => "logo"))?>
        <ul class="main-nav" id="js-menu">
            <li>
                <?= anchor("home", "Home", array("class" => "nav-links"))?>
            </li>
            <li>
                <?= anchor("acomodacoes", "Acomodações", array("class" => "nav-links"))?>
            </li>
            <li>
                <?= anchor("restaurante", "Restaurante", array("class" => "nav-links"))?>
            </li>
            <li>
                <?= anchor("contato", "Contato", array("class" => "nav-links"))?>
            </li>
        </ul>
</nav>
<div class="conteudo">
    <div class="conteudo-conteudo">