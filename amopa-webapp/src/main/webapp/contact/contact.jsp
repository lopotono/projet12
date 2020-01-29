<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
<title>Contact</title>
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
		<nav aria-label="breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><s:a action="index">ACCUEIL</s:a></li>
				<li class="breadcrumb-item">Contact Amopa Paris section
					XIXème-XXème et historique de la section</li>
			</ol>
		</nav>
		<div class="jumbotron">
			<p class="text-primary">ADRESSES COURRIELS</p>
			<address class="thumbnail">
				<strong>PRÉSIDENTE ÉLIANE BAYLE</strong><br>
				lucienlouisbayle@gmail.com
			</address>

			<address class="thumbnail">
				<strong>SECRÉTAIRE NICOLE RESTOIN</strong><br>
				nrestoin@gmail.com
			</address>

			<address class="thumbnail">
				<strong>TRÉSORIER CHRISTIAN TERRAGE</strong><br>
				christian.terrage@laposte.net
			</address>

			<address class="thumbnail">
				<strong>AMOPA NATIONAL LIEN</strong><br> <a
					href="http://www.amopa.asso.fr/">www.amopa.asso.fr</a>
			</address>
		</div>

		<div class="jumbotron">
			<p class="text-primary">HISTORIQUE DE LA SECTION</p>
			<table class="table table-striped table-bordered">
				<thead class="thead-light">
					<tr>
						<th scope="col">PRÉSIDENCE</th>
						<th scope="col">SECRETARIAT</th>
						<th scope="col">TRESORERIE</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>Du 10/12/1972 au 17/09/1992 Monsieur Chochois</td>
						<td>De 2002 à 2009 Madame Comoz</td>
						<td>Du 10/12/1972 au 15/04/1986 Monsieur Desmarest</td>
					</tr>
					<tr>
						<td>Du 07/02/1993 au 20/12/2004 Monsieur Imbert</td>
						<td>Du 01/09/2009 au 30/06/2018 Madame Fauvel</td>
						<td>Puis Madame Guignard jusqu’en octobre 1987</td>
					</tr>
					<tr>
						<td>Du 18/03/2005 au 07/04/2014 Monsieur Bayle</td>
						<td>Depuis le 01/09/2018 Madame Restoin</td>
						<td>Du 20/10/1987 au 30/08/2013 Madame Sainsevin</td>
					</tr>
					<tr>
						<td>Depuis le 07/04/2014 Madame Bayle</td>
						<td></td>
						<td>Du 30/08/2013 au 14/09/2015 Monsieur Cazaban</td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td>Depuis le 14/09/2015 Monsieur Terrage</td>
					</tr>
				</tbody>
			</table>
			<address class="thumbnail">Jumelage avec la section des Pays-Bas réalisé à
				Versailles, le 22 mai 1988, entre Georges CHOCHOIS, président de la
				section Paris-est, XIX - XX et Henri BAUDET, président de la section
				des Pays-Bas, en présence de Monsieur Jacques TREFFEL, Inspecteur
				Général, Président national de l’AMOPA.</address>

			<address class="thumbnail">A partir de l’an 2000, tous les
				ans un voyage a été organisé : Tunisie nord puis sud, Andalousie,
				Crête, Rhodes et Santorin, Chypre, Hollande, Vienne, la campagne
				anglaise et Londres, Monténégro, La Sardaigne...</address>
		</div>

		<div class="jumbotron">
			<p class="text-primary">CRÉATION DU SITE</p>
			<address class="thumbnail">
				<strong>DÉVELOPPEUR DU SITE FRÉDÉRIC TERRAGE</strong><br>
				terrage.frederic@orange.fr
			</address>
			<address class="thumbnail">
				Ce site a été réalisé dans le cadre de la formation de "Développeur
				d'applications Java" d'openclassrooms de 2017 à 2019.<br> <a
					href="https://openclassrooms.com/fr/">https://openclassrooms.com/fr/</a>
			</address>
		</div>

		<footer>
			<div class="footer-copyright text-center py-3">
				© 2019 Copyright: <a href="http://www.amopa.asso.fr/">Amopa</a>
			</div>
		</footer>
	</div>
</body>
</html>