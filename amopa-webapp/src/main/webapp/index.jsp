<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
<title>Accueil Amopa Paris XIXème-XXème</title>
<link rel="stylesheet" href="styleAccueil.css" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="icon" type="image/jpg" href="logo-amopa.jpg" />
</head>

<body>
	<div class="container">
		<header>
			<div class="text-center">
				<img src="banniere_amopa.jpg" class="img-fluid"
					alt="Responsive image">
			</div>
		</header>
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<p class="brand">AMOPA 75 XIXème-XXème</p>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link" href="#">ACCUEIL
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> ACTIVITES </a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="#">CONFERENCES</a> <a
								class="dropdown-item" href="listeActivites.html">VISITE DE
								MUSEES</a> <a class="dropdown-item" href="#">VOYAGE 1 JOUR</a> <a
								class="dropdown-item" href="#">VOYAGE PLUSIEURS JOURS</a> <a
								class="dropdown-item" href="#">AG</a> <a class="dropdown-item"
								href="#">GALETTE</a> <a class="dropdown-item" href="#">CONCERT/THEATRE</a></li>
					<li class="nav-item"><a class="nav-link" href="#">INFORMATIONS
							AUTRES SECTIONS</a></li>
					<li class="nav-item"><a class="nav-link" href="contact.html">CONTACT</a>
					</li>
					<li class="nav-item"><a class="nav-link"
						href="pageDeConnexion.html"><span
							class="glyphicon glyphicon-log-in"></span></a></li>
				</ul>
			</div>
		</nav>
		<br>
		<div class="row">
			<div class="col-lg-4">
				<img src="paris-19e-arrondissement.png" alt="blason19paris"
					width="150">
			</div>
			<div class="col-lg-4">
				<img src="logoParis.jpg" alt="logoParis" class="img-rounded"
					width="150">
			</div>
			<div class="col-lg-2">
				<img src="Blason_20ème_Arrondissement.jpg" alt="blason20paris"
					width="150">
			</div>
		</div>
		<br>
		<blockquote class="blockquote text-justify">
			<p>
				La section a été créée en 1972 de l’AMOPA nationale en vue de
				contribuer au développement d'actions éducatives en faveur de la
				jeunesse, de valoriser l'action des équipes pédagogiques tout en
				organisant des manifestations culturelles, scientifiques ou
				artistiques destinées à entretenir des relations amicales et
				conviviales.<br>Chers adhérents et sympathisants, nous vous
				proposons de passer à la rubrique « activités » pour nous rejoindre
				et partager nos propositions en vous y inscrivant.
			</p>
		</blockquote>

		<footer>
			<div class="footer-copyright text-center py-3">
				© 2019 Copyright: <a href="http://www.amopa.asso.fr/">Amopa</a>
			</div>
		</footer>

	</div>
</body>
</html>