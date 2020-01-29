<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
<title>Détails de l'activité</title>
<meta charset="utf-8" />
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
<link rel="icon" type="image/jpg" href="images/logo-amopa.jpg" />
</head>
<body>
	<div class="container">
		<header>
			<div class="text-center">
				<img src="images/banniere_amopa.jpg" class="img-fluid"
					alt="Responsive image">
			</div>
		</header>
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<p class="brand">AMOPA PARIS XIXème-XXème</p>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><s:a action="index"
							class="nav-link">ACCUEIL<span class="sr-only">(current)</span>
						</s:a></li>
					<li class="nav-item"><s:a action="listActivity"
							class="nav-link">
							<i class="glyphicon glyphicon-backward"></i>
						</s:a>
					<li class="nav-item"><s:a action="contact" class="nav-link">CONTACT</s:a>
					</li>
				</ul>
			</div>
		</nav>

		<div class="jumbotron jumbotron-fluid">
			<div class="container">
				<div class="text-center">
					<img src="images/corse.jpg" alt="corse" class="img-thumbnail">
				</div>
				<h2 class="display-4">VOYAGE EN CORSE 2È QUINZAINE DE SEPTEMBRE
					2020 : 8 jours et 7 nuits</h2>
				<p class="text-justify">L'association AVEC (Amitié Voyage et
					culture) nous propose de participer à un voyage en Corse très
					attractif comprenant seulement 2 hôtels pour la durée du circuit
					Corse Nord Sud. De nombreux amopaliens font d'ailleurs partie de
					AVEC.</p>

				<br>
				<ul class="list-group">
					<li class="list-group-item list-group-item-success">Pour
							des renseignements complémentaires, vous pouvez joindre Nicole
							Bassa présidente de AVEC ou Marie-Claude Racagel.</li>
					<li class="list-group-item list-group-item-success">Ou
							contacter directement MIRABILIA VOYAGES 52 rue des Louviers 78100
							St Germain-en-Laye, tél : 01 39 10 61 50 pour obtenir le
							programme en précisant qu'il s'agit du séjour Corse Nord Sud
							établi à la demande de AVEC.</li>
					<li class="list-group-item list-group-item-danger"><i>Si vous
						êtes intéressé(e) manifestez-vous le plus vite possible. Les
						inscriptions sont en cours.</i></li>
				</ul>
				<div class="alert alert-warning" role="alert">
					<strong> mc.racagel@orange.fr ; tél portable : 06 19 19 89
						01 </strong>
				</div>
				<div class="alert alert-warning" role="alert">
					<strong> nicole.bassa@orange.fr ; tél portable : 06 09 80
						70 68 </strong>
				</div>
			</div>
		</div>

		<footer>
			<div class="footer-copyright text-center py-3">
				© 2019 Copyright: <a href="http://www.amopa.asso.fr/">Amopa</a>
			</div>
		</footer>
</body>
</html>