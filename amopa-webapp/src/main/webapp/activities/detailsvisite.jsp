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
				<s:iterator value="listDetails">
					<div class="text-center">
						<s:if test="idactivity==4">
							<img
								src="images/toulouse-lautrec-l-exposition-au-grand-palais.jpg"
								alt="toulouseLautrec" class="img-thumbnail">
						</s:if>
						<s:if test="idactivity==5">
							<img src="images/jacquemart.jpg" alt="jacquemart"
								class="img-thumbnail">
						</s:if>
						<s:if test="idactivity==6">
							<img src="images/rousseau.jpg" alt="rousseau"
								class="img-thumbnail">
						</s:if>
						<s:if test="idactivity==1">
							<img src="images/luxembourg.png" alt="luxembourg"
								class="img-thumbnail">
						</s:if>
						<s:if test="idactivity==3">
							<img src="images/philharmonie.jpg" alt="philharmonie"
								class="img-thumbnail">
						</s:if>
						<s:if test="idactivity==2">
							<img src="images/legreco.jpg" alt="legreco" class="img-thumbnail">
						</s:if>
						<s:if test="idactivity==7">
							<img src="images/Mondrian.png" alt="mondrian"
								class="img-thumbnail">
						</s:if>
						<s:if test="idactivity==8">
							<img src="images/confmaire.png" alt="maire" class="img-thumbnail">
						</s:if>
						<s:if test="idactivity==9">
							<img src="images/Lycee-Diderot.jpg" alt="diderot"
								class="img-thumbnail">
						</s:if>
						<s:if test="idactivity==11">
							<img src="images/belliard.jpg" alt="belliard"
								class="img-thumbnail">
						</s:if>
					</div>
					<h2 class="display-4">
						<s:property value="title" />
					</h2>
					<s:if test="idactivity==9">
						<div class="row">
							<div class="col-md-4">
								<img src="images/galette.jpg" alt="galette"
									class="img-thumbnail" width="300" height="200">
							</div>
							<div class="col-md-4">
								<img src="images/jazz.jpg" alt="jazz" class="img-thumbnail"
									width="300" height="200">
							</div>
							<div class="col-md-4">
								<img src="images/galette.jpg" alt="galette"
									class="img-thumbnail" width="300" height="200">
							</div>
						</div>
					</s:if>
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
						<li class="list-group-item list-group-item-success"><i>Observation
								ligne de bus : Compte-tenu des modifications récentes des lignes
								de bus et des perturbations fréquentes sur leurs trajets en
								raison de nombreux travaux, nous vous laissons le soin si vous
								prenez ce moyen de transport de vérifier la ligne de bus que
								vous êtes susceptible d'utiliser.</i></li>
						<li class="list-group-item"><strong>Nombre de places
								disponibles : </strong> <s:property value="placesdisponibles" /> places</li>
						<li class="list-group-item"><strong>Tarif par
								personne : </strong> <s:property value="price" /> euros</li>
						<s:if test="idactivity==8">
							<li class="list-group-item list-group-item-success"><i>
									Le tarif minimum de 10€ ou plus à votre appréciation servira à
									financer les projets scolaires des élèves des écoles, collèges
									et lycées des 19è et 20è arrondissements. </i>
						</s:if>
						<s:if test="genre=='exposition'">
							<li class="list-group-item"><strong>Tarif sesame
									par personne : </strong> <s:property value="pricesesame" /> euros</li>
						</s:if>
						<li class="list-group-item list-group-item-danger"><strong>Date
								limite d'inscription : <s:date name="datelimite"
									format="dd/MM/yyyy" />
						</strong>
					</ul>
				</s:iterator>
			</div>
		</div>

		<footer>
			<div class="footer-copyright text-center py-3">
				© 2019 Copyright: <a href="http://www.amopa.asso.fr/">Amopa</a>
			</div>
		</footer>
</body>
</html>