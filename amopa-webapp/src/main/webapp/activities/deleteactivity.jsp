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

		<h4>
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><s:a action="index"
							class="nav-link">ACCUEIL</s:a></li>
					<li class="breadcrumb-item">AMOPA PARIS XIXème-XXème</li>
					<li class="breadcrumb-item"><s:property
							value="#session.user.surname" /> <s:property
							value="#session.user.firstname" /></li>
					<li class="breadcrumb-item active" aria-current="page">Liste
						des activités</li>
				</ol>
			</nav>
		</h4>

		<s:if test="hasActionMessages()">
			<div class="alert alert-info alert-dismissible" role="alert">
				<button type="button" class="close" data-dismiss="alert">&times;</button>
				<strong>Info!</strong>
				<s:actionmessage />
				<s:a action="listActivityDelete" class="btn btn-primary">
					<span class="glyphicon glyphicon-refresh"></span>
				</s:a>
			</div>
		</s:if>

		<table class="table table-striped table-bordered">
			<thead class="thead-light">
				<tr>
					<th scope="col">NOM DE L'ACTIVITÉ</th>
					<th scope="col">TYPE D'ACTIVITÉ</th>
					<th scope="col"></th>
				</tr>
			</thead>
			<s:iterator value="listActivityDelete">
				<tbody>
					<tr>
						<td><s:property value="title" /></td>
						<td><s:property value="genre" /></td>
						<td><s:url action="delete" var="deletelink">
								<s:param name="idactivity">
									<s:property value="idactivity" />
								</s:param>
							</s:url><a href="${deletelink}" class="btn btn-danger btn-lg center-block">SUPPRIMER</a></td>
					</tr>
				</tbody>
			</s:iterator>
		</table>

		<footer>
			<div class="footer-copyright text-center py-3">
				© 2019 Copyright: <a href="http://www.amopa.asso.fr/">Amopa</a>
			</div>
		</footer>
</body>
</html>