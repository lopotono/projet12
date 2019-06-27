<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
<title>Historique des activités</title>
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
					<li class="breadcrumb-item active" aria-current="page">Historique
						des activités</li>
				</ol>
			</nav>
		</h4>

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
					<th scope="col">ACTIVITES</th>
					<th scope="col">DATE</th>
					<th scope="col">LIEU</th>
					<th scope="col">STATUT</th>
				</tr>
			</thead>
			<tbody>
				<s:iterator value="listResa">
					<tr>
						<th scope="row"><s:property value="activity.title" /></th>
						<td><s:property value="activity.date" /> à <s:property
								value="activity.hour" /></td>
						<td><s:property value="activity.lieu" /></td>
						<td><s:property value="etat" /></td>
					</tr>
				</s:iterator>
			</tbody>
		</table>
	</div>

	<footer>
		<div class="footer-copyright text-center py-3">
			© 2019 Copyright: <a href="http://www.amopa.asso.fr/">Amopa</a>
		</div>
	</footer>
</body>
</html>