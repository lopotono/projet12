<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
<title>Informations autres sections</title>
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
							class="nav-link" id="info">ACCUEIL</s:a></li>
					<li class="breadcrumb-item">AMOPA PARIS XIXème-XXème</li>
					<li class="breadcrumb-item active" aria-current="page">Informations
						autres sections + fichiers disponibles autres sections</li>
				</ol>
			</nav>
		</h4>
		<div class="alert alert-primary" role="alert">Vous trouverez en
			bas du tableau les fichiers disponibles des autres sections</div>

		<div class="alert alert-primary" role="alert">Le tableau suivant
			vous donne les différentes informations des 10 sections Amopa de
			Paris.</div>

		<table class="table table-striped table-bordered">
			<thead class="thead-light">
				<tr>
					<th scope="col">SECTION</th>
					<th scope="col">PRÉSIDENT</th>
					<th scope="col">SECRÉTAIRE</th>
					<th scope="col">TRÉSORIER</th>
					<th scope="col">CONTACT</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th scope="row">Paris centre 75001 à 75006</th>
					<td>M Michel LECHEVALIER</td>
					<td>Mme Rose-Aimée JOUAN</td>
					<td>Mme Denise JOLIVET</td>
					<td>Section AMOPA de Paris Centre M Michel LECHEVALIER 20
						boulevard Saint Michel 75006 PARIS</td>
				</tr>
				<tr>
					<th scope="row">Paris VII 75007</th>
					<td>Mme Clotilde BRUNETTI-PONS</td>
					<td>Mme Anne-Marie DELEUZE</td>
					<td>Mme Odile COIFFIER</td>
					<td></td>
				</tr>
				<tr>
					<th scope="row">Paris IX-X-XI 75009 à 75011</th>
					<td>Mme Jacqueline BIERER</td>
					<td>Mme Denise BARIL</td>
					<td>M Jacques BRULÉ</td>
					<td>Section AMOPA de Paris IX-X-XI 3 avenue de Clichy 75017
						PARIS Téléphone : +(33) 01 43 87 39 69</td>
				</tr>
				<tr>
					<th scope="row">Paris XII 75012</th>
					<td>Mme Jacqueline CHAUSSADE</td>
					<td>Mme Edith SEMERDJIAN</td>
					<td>Mme Anne-Marie THOUIN</td>
					<td>Section AMOPA de Paris XII 11-13 rue Lasson 75012 PARIS</td>
				</tr>
				<tr>
					<th scope="row">Paris XIII 75013</th>
					<td>M Bernard GOMEL</td>
					<td>Mme Rose-Marie WILBERT</td>
					<td>Mme Magali MADAN</td>
					<td>Section AMOPA de Paris XIII M. Bernard GOMEL 208 rue de
						Tolbiac 75013 PARIS. amopa.sectionparis13@gmail.com</td>
				</tr>
				<tr>
					<th scope="row">Paris XIV 75014</th>
					<td>Mme Evelyne THOUVENOT</td>
					<td>Mme Rose del PINO</td>
					<td>M Jean PAUTROT</td>
					<td>Section AMOPA de Paris XIV 25 rue Henri Luisette 94800
						VILLEJUIF</td>
				</tr>
				<tr>
					<th scope="row">Paris XV 75015</th>
					<td>Mme Naïade FREIRE</td>
					<td>Mme Marie-France DEQUEKER</td>
					<td></td>
					<td>Mme Naïade FREIRE Section AMOPA de Paris XV 29 rue des
						Acacias 91430 IGNY</td>
				</tr>
				<tr>
					<th scope="row">Paris ouest 75008-75016-75017</th>
					<td>Mme Dorothée SORET ; Vice-Présidents : M Michel JEANJEAN
						et M René MOULINIER</td>
					<td>Mme Monique BLANC ; Secrétaire-adjointe : Mme Fabienne
						DABRIGEON</td>
					<td>Mme Mireille GUILLOT</td>
					<td>Section AMOPA de Paris Ouest Mme Dorothée SORET 15 rue
						Daumier 75016 PARIS ; <a href="http://www.amopa-parisouest.fr">amopa-parisouest</a>
					</td>
				</tr>
				<tr>
					<th scope="row">Paris XVIII 75018</th>
					<td>M Georges COSTE</td>
					<td>M Régis SINGER</td>
					<td>Mme Catherine CARRET</td>
					<td>Section AMOPA de ParisXVIII 1 Villa Montcalm 75018 PARIS</td>
				</tr>
				<tr>
					<th scope="row">Paris XIX-XX 75019-75020</th>
					<td>Mme Eliane BAYLE ; Vice-Président : M Claude JAILLOT ;
						Président-honoraire : M Lucien Louis BAYLE</td>
					<td>Mme Nicole RESTOIN</td>
					<td>M Christian TERRAGE</td>
					<td>Section AMOPA de Paris XIX-XX 15 rue des Annelets 75019
						PARIS ; <a
						href="https://www.amopa75-19-20.fr/amopa-webapp/index.action">amopa75-19-20</a>
					</td>
				</tr>
			</tbody>
		</table>
		<br>
		<div class="alert alert-primary" role="alert">Ci-dessous, vous
			trouverez les activités proposées par les autres sections.</div>

		<ul class="list-group">
			<li class="list-group-item active">SECTION DE PARIS VII</li>
			<li class="list-group-item">Programme de l'année 2019-2020.</li>
			<li class="list-group-item"><a
				href="https://drive.google.com/drive/folders/1UPR3TG1frMQ3fmQXP3X8-aMWaN5brAh8?usp=sharing"
				class="list-group-item list-group-item-action">Section VII</a></li>
		</ul>

		<ul class="list-group">
			<li class="list-group-item active">SECTION DE PARIS XII</li>
			<li class="list-group-item">Invitation galette 18 janvier 2020.</li>
			<li class="list-group-item">Invitation hôtel gaillard 25 février 2020.</li>
			<li class="list-group-item"><a
				href="https://drive.google.com/drive/folders/1bH8PQXNDVdqSRxsa0zlBk-xgfBhgX7wh?usp=sharing"
				class="list-group-item list-group-item-action">Section XII</a></li>
		</ul>

		<ul class="list-group">
			<li class="list-group-item active">SECTION DE PARIS XIII ET
				CENTRE</li>
			<li class="list-group-item">Coupon d'inscriptions automne.</li>
			<li class="list-group-item">Invitation aux sorties automne 2019
				début 2020.</li>
			<li class="list-group-item"><a
				href="https://drive.google.com/drive/folders/1X7QiaAU8x6uMzAGR-LJYfEPly5VtIwVU?usp=sharing"
				class="list-group-item list-group-item-action">Section XIII et
					centre</a></li>
		</ul>
		
		<ul class="list-group">
			<li class="list-group-item active">SECTION DE PARIS XIV</li>
			<li class="list-group-item">Programme de la section février et mars 2020.</li>
			<li class="list-group-item"><a
				href="https://drive.google.com/drive/folders/1qs79SueTDLc9mQ9-H38EltHwaalEsjJH?usp=sharing"
				class="list-group-item list-group-item-action">Section XIV</a></li>
		</ul>
		
		<ul class="list-group">
			<li class="list-group-item active">SECTION DE PARIS OUEST</li>
			<li class="list-group-item">Programme des activités culturelles.</li>
			<li class="list-group-item"><a
				href="https://drive.google.com/drive/folders/17jd41Lrf7Dxr9_n0kuXW9buqFOVz5jwt?usp=sharing"
				class="list-group-item list-group-item-action">Section ouest</a></li>
		</ul>
		
	</div>

	<div class="container">
		<div class="text-center">
			<a href="info"><span class="glyphicon glyphicon-arrow-up"></span></a>
		</div>
	</div>

	<footer>
		<div class="footer-copyright text-center py-3">
			© 2019 Copyright: <a href="http://www.amopa.asso.fr/">Amopa</a>
		</div>
	</footer>
</body>
</html>
