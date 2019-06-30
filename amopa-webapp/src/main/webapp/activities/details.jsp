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
					<li class="nav-item"><s:a action="historique" class="nav-link">
						HISTORIQUE</s:a></li>
					<li class="nav-item"><s:a action="contact" class="nav-link">CONTACT</s:a>
					</li>
					<li class="nav-item"><s:property value="#session.user.surname" />
						<s:property value="#session.user.firstname" /></li>
				</ul>
			</div>
		</nav>
		<div class="jumbotron jumbotron-fluid">
			<div class="container">
				<s:iterator value="listDetails">
					<h2 class="display-4">
						<s:property value="title" />
					</h2>
					<p class="text-justify">
						<s:property value="description" />
					</p>

					<br>
					<ul class="list-group">
						<li class="list-group-item"><strong>Conférencière :</strong>
							<s:property value="conferenciere" /></li>
						<li class="list-group-item"><strong>Adresse : </strong> <s:property
								value="place" /></li>
						<li class="list-group-item"><strong>Arrêts transport
								en commun : </strong> <s:property value="station" /></li>
						<li class="list-group-item list-group-item-success"><i>Observation ligne de bus :
							Compte-tenu des modifications récentes des lignes de bus et des
							perturbations fréquentes sur leurs trajets en raison de nombreux
							travaux, nous vous laissons le soin si vous prenez ce moyen de
							transport de vérifier la ligne de bus que vous êtes susceptible
							d'utiliser.</i></li>
						<li class="list-group-item"><strong>Nombre de places
								disponibles : </strong> <s:property value="placesdisponibles" /> places</li>
						<li class="list-group-item"><strong>Tarif par
								personne : </strong> <s:property value="price" /> euros</li>
						<li class="list-group-item"><strong>Tarif sesame par
								personne : </strong> <s:property value="pricesesame" /> euros</li>
						<li class="list-group-item list-group-item-danger"><strong>Date
								limite d'inscription : <s:property value="datelimite" />
						</strong>
					</ul>
				</s:iterator>
			</div>
		</div>
		<div class="jumbotron jumbotron-fluid">
			<div class="container">

				<h2>Formulaire d'inscription à une activité</h2>
				<s:iterator value="listDetails">
					<h4>
						Indiquer ci-dessous le nombre de participants pour l'activité : <strong><s:property
								value="title" /></strong>
					</h4>
				</s:iterator>
				<br>
				<form method="post" action="reserver" class="form-inline">
					<div class="form-group mx-sm-3 mb-2">
						<s:textfield name="nbreparticipants" requiredLabel="true"
							placeholder=" Nombre de participants" />
					</div>
					<s:url action="reserver" var="reserverlink">
						<s:param name="idactivity">
							<s:property value="idactivity" />
						</s:param>
						<s:param name="iduser">
							<s:property value="#session.user.iduser" />
						</s:param>
					</s:url>
					<a href="${reserverlink}" class="btn btn-success">RESERVER
						L'ACTIVITE</a>
				</form>
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