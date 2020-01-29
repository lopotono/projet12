<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
<title>Inscription utilisateur</title>
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
				<li class="breadcrumb-item"><s:a action="listUserTresorier"
						class="btn1 btn-primary btn-lg">ACTUALISER</s:a></li>
			</ol>
		</nav>

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

		<table class="table table-striped table-bordered">
			<thead class="thead-light">
				<tr>
					<th scope="col">NOM</th>
					<th scope="col">PRENOM</th>
					<th scope="col">MEMBRE</th>
					<th scope="col"></th>
				</tr>
			</thead>

			<tbody>
				<s:iterator value="listUser">
					<tr>
						<th scope="row"><s:property value="surname" /></th>
						<td><s:property value="firstname" /></td>
						<td><s:property value="member" /></td>
						<td><s:url action="deleteusertre" var="deleteusertrelink">
								<s:param name="iduser">
									<s:property value="iduser" />
								</s:param>
							</s:url><a href="${deleteusertrelink}" class="btn btn-danger btn-lg center-block">SUPPRIMER</a></td>
					</tr>
				</s:iterator>
			</tbody>
		</table>

	</div>

	<div class="container">
		<nav aria-label="breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><s:a action="tresorierajout"
						class="btn btn-info">Réinitialiser le formulaire</s:a></li>
			</ol>
		</nav>
	</div>

	<div class="container">
		<div class="alert alert-primary" role="alert">Le formulaire
			suivant permet d'enregistrer les informations des utilisateurs.</div>
	</div>

	<div class="container">
		<form method="post" action="addUserTre">

			<label for="member">Membre</label>
			<s:textfield name="user.member" requiredLabel="true"
				placeholder="Membre amopa" class="form-group" />

			<label for="surname">Nom</label>
			<s:textfield name="user.surname" requiredLabel="true"
				placeholder="Nom de l'amopalien(ne) en MAJ" />

			<label for="firstname">Prénom</label>
			<s:textfield name="user.firstname" requiredLabel="true"
				placeholder="Prénom de l'amopalien(ne)" />
			<br> <br>
			<div class="alert alert-primary" role="alert">
				<a href="https://www.motdepasse.xyz/">Générer un mot de passe</a>
			</div>

			<label for="password">Mot de passe</label>
			<s:textfield name="user.password" requiredLabel="true"
				placeholder="Mot de passe à 8 caractères" />

			<label for="mail">Adresse mail</label>
			<s:textfield name="user.mail" requiredLabel="true"
				placeholder="Adresse mail" />

			<label for="cellphone">Téléphone portable</label>
			<s:textfield name="user.cellphone" requiredLabel="true"
				placeholder="Téléphone portable" />

			<s:submit value="ENREGISTRER L'UTILISATEUR"
				class="btn btn-primary btn-lg" />
		</form>
	</div>

</body>
</html>