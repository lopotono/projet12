<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
<title>Confirmation réservation</title>
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
<link rel="icon" type="image/jpg" href="logo-amopa.jpg" />
</head>
<body>

	<div class="container">
		<div class="alert alert-light" role="alert"></div>
		<div class="alert alert-primary" role="alert">
			<div class="row">
				<div class="col-md-12">
					<h3>
						<strong>RESERVATION DE VOTRE ACTIVITE</strong>
					</h3>
					<br>
					<p class="lead">
						M ou Mme
						<s:property value="#session.user.surname" />
						<s:property value="#session.user.firstname" />
						avez réservé <strong> place(s)</strong> pour
						<s:iterator value="listDetails">
							<strong>l'activité <s:property value="title" /></strong>.<br>
						Cette activité se déroulera le <strong><s:property
									value="date" /> et l'heure de rendez-vous est à <s:property
									value="hour" />.</strong>
							<br>
							<strong>Lieu : <s:property value="lieu" />.
							</strong>
						</s:iterator>
					</p>
					<p>Veuillez confirmer votre réservation.</p>
					<s:a action="index" class="btn btn-success" id="e1">CONFIRMER</s:a>
					<s:a action="index" class="btn btn-danger" id="e1">ANNULER</s:a>
				</div>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="alert alert-danger" role="alert">
			Au reçu de votre chèque à l'ordre<strong> Amopa section
				19-20E CCP n°3589523W la Source</strong>
		</div>
		<div class="alert alert-danger" role="alert">Envoi du chèque à
			l'adresse postale du trésorier : M TERRAGE Christian (boite 21) 28
			rue du plateau 75019 PARIS.</div>
		<div class="alert alert-success" role="alert">Vous recevrez par
			la suite un SMS de confirmation.</div>
	</div>

	<footer>
		<div class="footer-copyright text-center py-3">
			© 2019 Copyright: <a href="http://www.amopa.asso.fr/">Amopa</a>
		</div>
	</footer>

</body>
</html>