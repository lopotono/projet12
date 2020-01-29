<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
<title>Informations activités</title>
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
				<li class="breadcrumb-item"><s:a action="index">ACCUEIL</s:a></li>
				<li class="breadcrumb-item">AMOPA PARIS XIXème-XXème</li>
				<li class="breadcrumb-item"><s:property
						value="#session.user.surname" /> <s:property
						value="#session.user.firstname" /></li>
				<li class="breadcrumb-item active" aria-current="page">Renseignements
					sur les activités</li>
			</ol>
		</nav>

		<div class="alert alert-primary" role="alert">Le formulaire
			suivant vous permet de saisir les diffèrents renseignements sur une
			activité.</div>

		<s:if test="hasActionMessages()">
			<div class="alert alert-info alert-dismissible" role="alert">
				<button type="button" class="close" data-dismiss="alert">&times;</button>
				<strong>Info!</strong>
				<s:actionmessage />
			</div>
		</s:if>

		<s:if test="hasActionErrors()">
			<div class="alert alert-danger alert-dismissible" role="alert">
				<button type="button" class="close" data-dismiss="alert">&times;</button>
				<strong>Info !</strong>
				<s:actionerror />
			</div>
		</s:if>

	</div>

	<div class="container">
		<nav aria-label="breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><s:a action="modifier"
						class="btn btn-warning">Modifier une activité</s:a></li>
				<li class="breadcrumb-item"><s:a action="formulaireActivity"
						class="btn btn-info">Réinitialiser le formulaire</s:a></li>
			</ol>
		</nav>
	</div>

	<div class="container">
		<form method="post" action="addActivity">

			<label for="fname">Titre de l'activité</label>
			<s:textfield name="activity.title" requiredLabel="true"
				placeholder="TITRE DE L'ACTIVITÉ" class="form-group" />

			<label for="genre">Type d'activité</label>
			<s:textfield name="activity.genre" requiredLabel="true"
				placeholder="Exemples : conference, exposition, voyage 1 jour, voyage plusieurs jours, AG, concert, theatre" />

			<label for="description">La description de l'activité</label>
			<s:textfield name="activity.description" rows="10"
				placeholder="SAISIR ICI LA DESCRIPTION DE L'ACTIVITÉ" />

			<label for="adresse">Lieu de l'activité</label>
			<s:textfield name="activity.place" requiredLabel="true"
				placeholder="LIEU DE L'ACTIVITE" />

			<label for="station">Nom de ou des stations</label>
			<s:textfield name="activity.station" requiredLabel="true"
				placeholder="Exemple de format à respecter : METRO ligne 4 arrêt St Sulpice, ligne 10 arrêt Mabillon, RER B arrêt Luxembourg" />

			<label for="places">Nombre de places disponibles</label>
			<s:textfield name="activity.placesdisponibles" requiredLabel="true"
				placeholder="SAISIR ICI LE NOMBRE DE PLACES DISPONIBLES" />

			<label for="datelimite">Date limite d'inscription</label>
			<s:textfield name="activity.datelimite" requiredLabel="true"
				placeholder="Exemple de format à respecter : 01/09/2019" />

			<div class="alert alert-primary" role="alert">Renseigner les
				informations supplémentaires ci-dessous pour la confirmation d'une
				réservation d'une activité.</div>

			<label for="places">L'heure de rendez-vous de l'activité</label>
			<s:textfield name="activity.hour" requiredLabel="true"
				placeholder="Exemple de format à respecter : 15h30" />

			<label for="date">La date de l'activité</label>
			<s:textfield name="activity.date" requiredLabel="true"
				placeholder="Exemple de format à respecter : 18/06/2019" />

			<label for="lieu">L'adresse complète de l'activité</label>
			<s:textfield name="activity.lieu" requiredLabel="true"
				placeholder="Exemple de format à respecter : à la grande Halle de la Villette PARIS 19" />

			<label for="price">Le prix de l'activité</label>
			<s:textfield name="activity.price" requiredLabel="true"
				placeholder="Exemple de format à respecter : 35" />

			<label for="pricesesame">Le prix sesame de l'activité</label>
			<s:textfield name="activity.pricesesame"
				placeholder="Facultatif : Exemple de format à respecter : 35" />

			<label for="conferenciere">Le nom de la conférencière</label>
			<s:textfield name="activity.conferenciere" requiredLabel="true"
				placeholder="Facultatif : Exemple de format à respecter : Mme Odile Dupeyrat" />

			<s:submit value="ENREGISTRER LES INFORMATIONS SUR L'ACTIVITÉ"
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