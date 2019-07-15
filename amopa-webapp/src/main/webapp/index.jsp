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
				<s:if test="#session.user">
					<ul class="nav nav-pills">
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
							role="button" aria-haspopup="true" aria-expanded="false">ACTIVITES</a>
							<div class="dropdown-menu">
								<s:a action="listActivityConf" class="dropdown-item">Conférences</s:a>
								<s:a action="listActivityExpo" class="dropdown-item">Expositions</s:a>
								<s:a action="listActivityVoyage" class="dropdown-item">Voyage 1 jour</s:a>
								<s:a action="listActivityVoyagePlus" class="dropdown-item">Voyage plusieurs jours</s:a>
								<s:a action="listAG" class="dropdown-item">AG</s:a>
								<s:a action="listActivityConcert" class="dropdown-item">
									Concert/Théatre</s:a>
								<s:if test="#session.user.surname=='RESTOIN'">
									<div class="dropdown-divider"></div>
									<s:a action="formulaireActivity" class="dropdown-item">Description activité</s:a>
									<s:a action="consulter" class="dropdown-item">Consulter les réservations</s:a>
								</s:if>
								<s:if test="#session.user.surname=='TERRAGE'">
									<div class="dropdown-divider"></div>
									<s:a action="suivi" class="dropdown-item">Suivi des Réservations</s:a>
									<s:a action="formPlaces" class="dropdown-item">Formulaire places</s:a>
								</s:if>
							</div></li>
						<li class="nav-item"><a class="nav-link" href="#">INFORMATIONS
								AUTRES SECTIONS</a></li>
						<li class="nav-item"><s:a action="contact" class="nav-link">CONTACT</s:a>
						</li>
						<li class="nav-item"><s:a action="logout" class="nav-link">
								<span class="glyphicon glyphicon-log-out"></span>
							</s:a></li>
					</ul>
				</s:if>
			</div>
		</nav>
		<s:else>
			<div class="alert alert-danger" role="alert">
				Vous devez vous connecter pour accéder aux différentes rubriques
				<s:a action="login" class="btn btn-info btn-lg" role="button"
					data-toggle="modal" data-target="#exampleModalCenter">Se connecter</s:a>
			</div>
			<div class="alert alert-primary" role="alert">
				<s:a action="listActivity">Informations sur les activités proposées tout au long de l'année.</s:a>
			</div>
		</s:else>

		<!-- Modal -->
		<div class="modal fade" id="exampleModalCenter" tabindex="-1"
			role="dialog" aria-labelledby="exampleModalCenterTitle"
			aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
				</div>
			</div>
		</div>

		<s:if test="hasActionMessages()">
			<div class="alert alert-info alert-dismissible" role="alert">
				<button type="button" class="close" data-dismiss="alert">&times;</button>
				<strong>Info!</strong>
				<s:actionmessage />
			</div>
		</s:if>

		<br>
		<div class="container">
			<div class="text-center">
				<div class="row justify-content-center">
					<div class="col-lg-4">
						<img src="images/paris-19e-arrondissement.png" alt="blason19paris"
							width="150">
					</div>
					<div class="col-lg-4">
						<img src="images/logoParis.jpg" alt="logoParis"
							class="img-rounded" width="150">
					</div>
					<div class="col-lg-4">
						<img src="images/Blason_20ème_Arrondissement.jpg"
							alt="blason20paris" width="150">
					</div>
				</div>
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
	</div>

	<footer>
		<div class="footer-copyright text-center py-3">
			© 2019 Copyright: <a href="http://www.amopa.asso.fr/">Amopa</a>
		</div>
	</footer>
</body>
</html>