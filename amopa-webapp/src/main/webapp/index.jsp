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
<style>
.jumbotron {
	background-color: #e3f2fd;
	text-align: center;
}
</style>
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
							role="button" aria-haspopup="true" aria-expanded="false">ACTIVITÉS</a>
							<div class="dropdown-menu">
								<s:a action="listActivityConf" class="dropdown-item">Conférences</s:a>
								<s:a action="listActivityExpo" class="dropdown-item">Expositions</s:a>
								<s:a action="listActivityVoyage" class="dropdown-item">Voyages 1 jour</s:a>
								<s:a action="listActivityVoyagePlus" class="dropdown-item">Voyages plusieurs jours</s:a>
								<s:a action="listAG" class="dropdown-item">AG</s:a>
								<s:a action="listActivityConcert" class="dropdown-item">
									Concerts</s:a>
								<s:a action="listActivityTheatre" class="dropdown-item">Théâtres</s:a>
								<div class="dropdown-divider"></div>
								<s:a action="historique" class="dropdown-item">Historique de vos réservations</s:a>
								<s:if test="#session.user.surname=='RESTOIN'">
									<div class="dropdown-divider"></div>
									<s:a action="formulaireActivity" class="dropdown-item">
										<strong>Ajouter une activité</strong>
									</s:a>
									<s:a action="consulter" class="dropdown-item">
										<strong>Consulter les réservations</strong>
									</s:a>
								</s:if>
								<s:if test="#session.user.surname=='TERRAGE'">
									<div class="dropdown-divider"></div>
									<s:a action="suivi" class="dropdown-item">
										<strong>Suivre les Réservations</strong>
									</s:a>
									<s:a action="formPlaces" class="dropdown-item">
										<strong>Formulaire des places</strong>
									</s:a>
									<s:a action="listActivityDelete" class="dropdown-item">
										<strong>Supprimer une activité</strong>
									</s:a>
									<s:a action="tresorierajout" class="dropdown-item">
										<strong>Ajouter un utilisateur</strong>
									</s:a>
								</s:if>
								<s:if test="#session.user.surname=='TERRAGE F'">
									<div class="dropdown-divider"></div>
									<s:a action="ajout" class="dropdown-item">
										<strong>Inscription des utilisateurs</strong>
									</s:a>
								</s:if>
							</div></li>
						<li class="nav-item"><s:a action="info" class="nav-link">INFORMATIONS
								AUTRES SECTIONS</s:a></li>
						<li class="nav-item"><s:a action="contact" class="nav-link">CONTACT</s:a>
						</li>
						<li class="nav-item"><s:a action="logout" class="nav-link">
								<span class="glyphicon glyphicon-log-out" data-toggle="tooltip"
									data-placement="right" title="déconnexion"></span>
							</s:a></li>
					</ul>
				</s:if>
			</div>
		</nav>
		<s:else>
			<!-- Button trigger modal -->
			<button type="button" class="btn btn-light" data-toggle="modal"
				data-target="#ModalCenter">Bienvenue sur le site de l'Amopa
				section Paris XIX-XX !</button>

			<!-- Modal -->
			<div class="modal fade" id="ModalCenter" tabindex="-1" role="dialog"
				aria-labelledby="ModalCenterTitle" aria-hidden="true">
				<div class="modal-dialog modal-dialog-centered" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="ModalCenterTitle">Mises à jour
								du site</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							Pour votre information, des mises à jours ont été effectuées au
							11/01/2020.<br>
							<br>*Les activités sont désormais archivées (rubrique
							archives).<br>*Informations autres sections : <br>ajout
							du programme des activités culturelles pour la section Paris
							Ouest et l'ajout de deux invitations pour la section Paris XII.<br>
							ajout du programme de la section Paris XIV février et mars 2020.
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Fermer</button>
						</div>
					</div>
				</div>
			</div>

			<div class="alert alert-primary" role="alert">
				<s:a action="listActivity">
					<strong>Informations sur les activités proposées tout au
						long de l'année.</strong>
				</s:a>
			</div>
			<div class="alert alert-danger" role="alert">
				Vous devez vous connecter pour accéder aux différentes activités
				<s:a action="login" class="btn btn-info btn-lg" role="button"
					data-toggle="modal" data-target="#exampleModalCenter">Se connecter</s:a>
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

		<div class="jumbotron">
			<div class="container">
				<div class="text-center">
					<div class="row justify-content-center">
						<div class="col-lg-4">
							<img src="images/paris-19e-arrondissement.png"
								alt="blason19paris" width="150">
						</div>
						<div class="col-lg-4">
							<img src="images/logoParis.jpg" alt="logoParis"
								class="img-rounded" width="150">
						</div>
						<div class="col-lg-4">
							<img src="images/blason20.png" alt="blason20paris" width="150">
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
	</div>
	<footer>
		<div class="footer-copyright text-center py-3">
			© 2019 Copyright: <a href="http://www.amopa.asso.fr/">Amopa</a>
		</div>
	</footer>
</body>
</html>