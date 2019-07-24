<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
<title>Modifier une activité</title>
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

		<nav aria-label="breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><s:a action="index"
						class="nav-link">ACCUEIL</s:a></li>
				<li class="breadcrumb-item">AMOPA PARIS XIXème-XXème</li>
				<li class="breadcrumb-item"><s:property
						value="#session.user.surname" /> <s:property
						value="#session.user.firstname" /></li>
				<li class="breadcrumb-item active" aria-current="page">Modifier
					les informations sur une activité</li>
			</ol>
		</nav>

		<s:if test="hasActionMessages()">
			<div class="alert alert-info alert-dismissible" role="alert">
				<button type="button" class="close" data-dismiss="alert">&times;</button>
				<strong>Info!</strong>
				<s:actionmessage />
			</div>
		</s:if>

		<div class="alert alert-primary" role="alert">Les champs
			suivants permettent de modifier les informations d'une activité.</div>

		<div class="alert alert-warning" role="alert">Saisir les
			modifications dans chaque champ, en respectant le format (voir page
			ajout d'activité).</div>

		<div class="alert alert-warning" role="alert">Pour cela,
			sélectionner votre activité et appuyer sur le bouton
			modifier, ensuite appuyer sur le bouton effacer.</div>

		<div class="container">
			<br>
			<form action="changeGenre" method="post">
				<div>
					<s:select name="idactivity" list="listActivity"
						listKey="idactivity" listValue="title"></s:select>
				</div>
				<div class="d-flex flex-column">
					<div class="p-2">
						<s:textfield name="genreActivity" />
						<s:a action="modifier" class="btn btn-info">Effacer</s:a>
					</div>
				</div>
				<s:submit value="MODIFIER LE GENRE" class="btn btn-primary" />
			</form>
			<br>
			<form action="changeDescription" method="post">
				<div>
					<s:select name="idactivity" list="listActivity"
						listKey="idactivity" listValue="title"></s:select>
				</div>
				<div class="d-flex flex-column">
					<div class="p-2">
						<s:textfield name="descriptionActivity" />
						<s:a action="modifier" class="btn btn-info">Effacer</s:a>
					</div>
				</div>
				<s:submit value="MODIFIER LA DESCRIPTION" class="btn btn-primary" />
			</form>
			<br>
			<form action="changeLieu" method="post">
				<div>
					<s:select name="idactivity" list="listActivity"
						listKey="idactivity" listValue="title"></s:select>
				</div>
				<div class="d-flex flex-column">
					<div class="p-2">
						<s:textfield name="lieuActivity" />
						<s:a action="modifier" class="btn btn-info">Effacer</s:a>
					</div>
				</div>
				<s:submit value="MODIFIER LE LIEU" class="btn btn-primary" />
			</form>
			<br>
			<form action="changeStation" method="post">
				<div>
					<s:select name="idactivity" list="listActivity"
						listKey="idactivity" listValue="title"></s:select>
				</div>
				<div class="d-flex flex-column">
					<div class="p-2">
						<s:textfield name="stationActivity" />
						<s:a action="modifier" class="btn btn-info">Effacer</s:a>
					</div>
				</div>
				<s:submit value="MODIFIER LES TRANSPORTS" class="btn btn-primary" />
			</form>
			<br>
			<form action="changePlaces" method="post">
				<div>
					<s:select name="idactivity" list="listActivity"
						listKey="idactivity" listValue="title"></s:select>
				</div>
				<div class="d-flex flex-column">
					<div class="p-2">
						<s:textfield name="placesActivity" />
						<s:a action="modifier" class="btn btn-info">Effacer</s:a>
					</div>
				</div>
				<s:submit value="MODIFIER LES PLACES DISPONIBLES"
					class="btn btn-primary" />
			</form>
			<br>
			<form action="changeDatelimite" method="post">
				<div>
					<s:select name="idactivity" list="listActivity"
						listKey="idactivity" listValue="title"></s:select>
				</div>
				<div class="d-flex flex-column">
					<div class="p-2">
						<s:textfield name="datelimiteActivity" />
						<s:a action="modifier" class="btn btn-info">Effacer</s:a>
					</div>
				</div>
				<s:submit value="MODIFIER LA DATE LIMITE" class="btn btn-primary" />
			</form>
			<br>
			<form action="changeHeure" method="post">
				<div>
					<s:select name="idactivity" list="listActivity"
						listKey="idactivity" listValue="title"></s:select>
				</div>
				<div class="d-flex flex-column">
					<div class="p-2">
						<s:textfield name="heureActivity" />
						<s:a action="modifier" class="btn btn-info">Effacer</s:a>
					</div>
				</div>
				<s:submit value="MODIFIER L'HEURE" class="btn btn-primary" />
			</form>
			<br>
			<form action="changeField" method="post">
				<div>
					<s:select name="idactivity" list="listActivity"
						listKey="idactivity" listValue="title"></s:select>
				</div>
				<div class="d-flex flex-column">
					<div class="p-2">
						<s:textfield name="dateActivity" />
						<s:a action="modifier" class="btn btn-info">Effacer</s:a>
					</div>
				</div>
				<s:submit value="MODIFIER LA DATE" class="btn btn-primary" />
			</form>
			<br>
			<form action="changeAdresse" method="post">
				<div>
					<s:select name="idactivity" list="listActivity"
						listKey="idactivity" listValue="title"></s:select>
				</div>
				<div class="d-flex flex-column">
					<div class="p-2">
						<s:textfield name="adresseActivity" />
						<s:a action="modifier" class="btn btn-info">Effacer</s:a>
					</div>
				</div>
				<s:submit value="MODIFIER L'ADRESSE" class="btn btn-primary" />
			</form>
			<br>
			<form action="changePrice" method="post">
				<div>
					<s:select name="idactivity" list="listActivity"
						listKey="idactivity" listValue="title"></s:select>
				</div>
				<div class="d-flex flex-column">
					<div class="p-2">
						<s:textfield name="priceActivity" />
						<s:a action="modifier" class="btn btn-info">Effacer</s:a>
					</div>
				</div>
				<s:submit value="MODIFIER LE PRIX" class="btn btn-primary" />
			</form>
			<br>
			<form action="changePricesesame" method="post">
				<div>
					<s:select name="idactivity" list="listActivity"
						listKey="idactivity" listValue="title"></s:select>
				</div>
				<div class="d-flex flex-column">
					<div class="p-2">
						<s:textfield name="pricesesameActivity" />
						<s:a action="modifier" class="btn btn-info">Effacer</s:a>
					</div>
				</div>
				<s:submit value="MODIFIER LE PRIX SESAME" class="btn btn-primary" />
			</form>
			<br>
			<form action="changeConferenciere" method="post">
				<div>
					<s:select name="idactivity" list="listActivity"
						listKey="idactivity" listValue="title"></s:select>
				</div>
				<div class="d-flex flex-column">
					<div class="p-2">
						<s:textfield name="conferenciereActivity" />
						<s:a action="modifier" class="btn btn-info">Effacer</s:a>
					</div>
				</div>
				<s:submit value="MODIFIER LA CONFERENCIERE" class="btn btn-primary" />
			</form>
		</div>

		<footer>
			<div class="footer-copyright text-center py-3">
				© 2019 Copyright: <a href="http://www.amopa.asso.fr/">Amopa</a>
			</div>
		</footer>
</body>
</html>