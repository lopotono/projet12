<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
<title>Page de connexion</title>
<link rel="stylesheet" href="login/login.css" />
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

	<div class="jumbotron">
		<h6 class="display-4">Page de connexion</h6>
		<p class="lead">Amopa section Paris XIXème-XXème</p>
		<hr class="my-4">
		<p class="lead">
		<div class="container">
			<div class="row">
				<div class="account-wall">
					<s:form action="login" method="post" class="form-signin">
						<s:textfield name="name" requiredLabel="true" class="form-control"
							placeholder="Identifiant" />
						<s:password name="password" requiredLabel="true"
							class="form-control" placeholder="Mot de passe" />
						<s:submit value="CONNEXION"
							class="btn btn-success btn-block" />
					</s:form>
				</div>
			</div>
		</div>
	</div>


	<s:if test="hasActionErrors()">
		<div class="alert alert-danger alert-dismissible" role="alert">
			<button type="button" class="close" data-dismiss="alert">&times;</button>
			<h3>
				<strong>Alerte !</strong>
				<s:actionerror />
			</h3>
		</div>
	</s:if>
</body>
</html>