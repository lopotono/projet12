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
<style>
input[type=text], select {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type=submit] {
	width: 100%;
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type=submit]:hover {
	background-color: #45a049;
}

div {
	border-radius: 5px;
	background-color: #f2f2f2;
	padding: 20px;
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
			sélectionner votre activité et appuyer sur le bouton modifier,
			ensuite appuyer sur le bouton effacer.</div>

	</div>

	<div class="container">
		<form action="changeTitre" method="post">
			<label for="titre">Modifier le titre de l'activité</label>

			<s:select name="idactivity" list="listActivity" listKey="idactivity"
				listValue="title"></s:select>
			<s:textfield name="titleActivity" />
			<s:a action="modifier" class="btn btn-info">Effacer</s:a>
			<s:submit value="MODIFIER LE TITRE" class="btn btn-primary btn-lg" />
		</form>
	</div>

	<br>
	<div class="container">
		<form action="changeGenre" method="post">
			<label for="titre">Modifier le genre de l'activité</label>
			<s:select name="idactivity" list="listActivity" listKey="idactivity"
				listValue="title"></s:select>
			<s:textfield name="genreActivity" />
			<s:a action="modifier" class="btn btn-info">Effacer</s:a>
			<s:submit value="MODIFIER LE GENRE" class="btn btn-primary btn-lg" />
		</form>
	</div>

	<br>
	<div class="container">
		<form action="changeDescription" method="post">
			<label for="titre">Modifier la description de l'activité</label>
			<s:select name="idactivity" list="listActivity" listKey="idactivity"
				listValue="title"></s:select>
			<s:textfield name="descriptionActivity" />
			<s:a action="modifier" class="btn btn-info">Effacer</s:a>
			<s:submit value="MODIFIER LA DESCRIPTION"
				class="btn btn-primary btn-lg" />
		</form>
	</div>

	<br>
	<div class="container">
		<form action="changeLieu" method="post">
			<label for="titre">Modifier le lieu de l'activité</label>
			<s:select name="idactivity" list="listActivity" listKey="idactivity"
				listValue="title"></s:select>
			<s:textfield name="lieuActivity" />
			<s:a action="modifier" class="btn btn-info">Effacer</s:a>
			<s:submit value="MODIFIER LE LIEU" class="btn btn-primary btn-lg" />
		</form>
	</div>

	<br>
	<div class="container">
		<form action="changeStation" method="post">
			<label for="titre">Modifier les transports de l'activité</label>
			<s:select name="idactivity" list="listActivity" listKey="idactivity"
				listValue="title"></s:select>
			<s:textfield name="stationActivity" />
			<s:a action="modifier" class="btn btn-info">Effacer</s:a>
			<s:submit value="MODIFIER LES TRANSPORTS"
				class="btn btn-primary btn-lg" />
		</form>
	</div>

	<br>
	<div class="container">
		<form action="changePlaces" method="post">
			<label for="titre">Modifier les places disponibles de
				l'activité</label>
			<s:select name="idactivity" list="listActivity" listKey="idactivity"
				listValue="title"></s:select>
			<s:textfield name="placesActivity" />
			<s:a action="modifier" class="btn btn-info">Effacer</s:a>
			<s:submit value="MODIFIER LES PLACES DISPONIBLES"
				class="btn btn-primary btn-lg" />
		</form>
	</div>

	<br>
	<div class="container">
		<form action="changeDatelimite" method="post">
			<label for="titre">Modifier la date limite de l'activité</label>
			<s:select name="idactivity" list="listActivity" listKey="idactivity"
				listValue="title"></s:select>
			<s:textfield name="datelimiteActivity" />
			<s:a action="modifier" class="btn btn-info">Effacer</s:a>
			<s:submit value="MODIFIER LA DATE LIMITE"
				class="btn btn-primary btn-lg" />
		</form>
	</div>

	<br>
	<div class="container">
		<form action="changeHeure" method="post">
			<label for="titre">Modifier l'heure de l'activité</label>
			<s:select name="idactivity" list="listActivity" listKey="idactivity"
				listValue="title"></s:select>
			<s:textfield name="heureActivity" />
			<s:a action="modifier" class="btn btn-info">Effacer</s:a>
			<s:submit value="MODIFIER L'HEURE" class="btn btn-primary btn-lg" />
		</form>
	</div>

	<br>
	<div class="container">
		<form action="changeField" method="post">
			<label for="titre">Modifier la date de l'activité</label>
			<s:select name="idactivity" list="listActivity" listKey="idactivity"
				listValue="title"></s:select>
			<s:textfield name="dateActivity" />
			<s:a action="modifier" class="btn btn-info">Effacer</s:a>
			<s:submit value="MODIFIER LA DATE" class="btn btn-primary btn-lg" />
		</form>
	</div>

	<br>
	<div class="container">
		<form action="changeAdresse" method="post">
			<label for="titre">Modifier l'adresse de l'activité</label>
			<s:select name="idactivity" list="listActivity" listKey="idactivity"
				listValue="title"></s:select>
			<s:textfield name="adresseActivity" />
			<s:a action="modifier" class="btn btn-info">Effacer</s:a>
			<s:submit value="MODIFIER L'ADRESSE" class="btn btn-primary btn-lg" />
		</form>
	</div>

	<br>
	<div class="container">
		<form action="changePrice" method="post">
			<label for="titre">Modifier le prix de l'activité</label>
			<s:select name="idactivity" list="listActivity" listKey="idactivity"
				listValue="title"></s:select>
			<s:textfield name="priceActivity" />
			<s:a action="modifier" class="btn btn-info">Effacer</s:a>
			<s:submit value="MODIFIER LE PRIX" class="btn btn-primary btn-lg" />
		</form>
	</div>

	<br>
	<div class="container">
		<form action="changePricesesame" method="post">
			<label for="titre">Modifier le prix sésame de l'activité</label>
			<s:select name="idactivity" list="listActivity" listKey="idactivity"
				listValue="title"></s:select>
			<s:textfield name="pricesesameActivity" />
			<s:a action="modifier" class="btn btn-info">Effacer</s:a>
			<s:submit value="MODIFIER LE PRIX SESAME"
				class="btn btn-primary btn-lg" />
		</form>
	</div>

	<br>
	<div class="container">
		<form action="changeConferenciere" method="post">
			<label for="titre">Modifier la conférenciére de l'activité</label>
			<s:select name="idactivity" list="listActivity" listKey="idactivity"
				listValue="title"></s:select>
			<s:textfield name="conferenciereActivity" />
			<s:a action="modifier" class="btn btn-info">Effacer</s:a>
			<s:submit value="MODIFIER LA CONFERENCIERE OU LE CONFERENCIER"
				class="btn btn-primary btn-lg" />
		</form>
	</div>

	<br>
	<div class="container">
		<footer>
			<div class="footer-copyright text-center py-3">
				© 2019 Copyright: <a href="http://www.amopa.asso.fr/">Amopa</a>
			</div>
		</footer>
	</div>
</body>
</html>