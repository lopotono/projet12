<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<title>Liste des conférences</title>
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
							class="nav-link">ACCUEIL <span class="sr-only">(current)</span>
						</s:a></li>
					<li class="nav-item"><s:a action="contact" class="nav-link">CONTACT</s:a>
					</li>
					<li class="nav-item"><s:property value="#session.user.surname" />
						<s:property value="#session.user.firstname" /></li>
				</ul>
			</div>
		</nav>

		<s:if test="hasActionErrors()">
			<div class="alert alert-danger alert-dismissible" role="alert">
				<button type="button" class="close" data-dismiss="alert">&times;</button>
				<strong>Info !</strong>
				<s:actionerror />
			</div>
		</s:if>

		<div class="list-group">
			<p class="list-group-item list-group-item-action active">LISTE
				DES CONFERENCES</p>

			<s:iterator value="listActivityConf">
				<s:if test="placesdisponibles > 0">
					<s:url action="detailsActivity" var="detailslink">
						<s:param name="idactivity">
							<s:property value="idactivity" />
						</s:param>
					</s:url>
					<p class="list-group-item list-group-item-action">
						<a href="${detailslink}"><s:property value="title" /></a> <small>
							Nombre de places disponibles : <s:property
								value="placesdisponibles" />
						</small>
					</p>
				</s:if>
			</s:iterator>
		</div>

		<footer>
			<div class="footer-copyright text-center py-3">
				© 2019 Copyright: <a href="http://www.amopa.asso.fr/">Amopa</a>
			</div>
		</footer>
	</div>
</body>
</html>