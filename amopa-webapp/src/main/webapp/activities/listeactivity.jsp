<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<title>Liste des activités</title>
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
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
						role="button" aria-haspopup="true" aria-expanded="false">ARCHIVES</a>
						<div class="dropdown-menu">
							<s:a action="archive2019" class="dropdown-item">Activités en 2019</s:a>
						</div>
					<li class="nav-item"><s:a action="contact" class="nav-link">CONTACT</s:a>
					</li>
				</ul>
			</div>
		</nav>

		<div class="alert alert-primary" role="alert">Liste des
			prochaines activités proposées.</div>

		<table class="table table-striped table-bordered">
			<thead class="thead-light">
				<tr>
					<th scope="col">NOM DE L'ACTIVITÉ</th>
					<th scope="col">TYPE D'ACTIVITÉ</th>
					<th scope="col">DATE DE L'ÉVÉNEMENT</th>
				</tr>
			</thead>
			<s:iterator value="listActivity">
				<tbody>
					<tr>
						<s:url action="detailsVisiteurActivity" var="detailslink">
							<s:param name="idactivity">
								<s:property value="idactivity" />
							</s:param>
						</s:url>
						<td><a href="${detailslink}"><s:property value="title" /></a></td>
						<td><s:property value="genre" /></td>
						<td><s:date name="date" format="dd/MM/yyyy" /> <s:if
								test="hasActionMessages()">
								<s:actionmessage />
							</s:if></td>
					</tr>
				</tbody>
			</s:iterator>
		</table>

		<div class="alert alert-success" role="alert">
			Voyage de plusieurs jours :
			<s:a action="corse" class="alert-link">
				en corse circuit Nord Sud</s:a>
			en septembre 2020.
		</div>

		<footer>
			<div class="footer-copyright text-center py-3">
				© 2019 Copyright: <a href="http://www.amopa.asso.fr/">Amopa</a>
			</div>
		</footer>
	</div>
</body>
</html>