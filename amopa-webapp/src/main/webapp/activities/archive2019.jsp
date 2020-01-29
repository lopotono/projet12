<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<title>Activités en 2019</title>
<meta charset="utf-8" />
<link rel="stylesheet" href="styleAccueil.css" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<style>
/* Make the image fully responsive */
.carousel-inner img {
	width: 100%;
	height: 100%;
}
</style>
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
				</ul>
			</div>
		</nav>
	</div>

	<div class="container">
		<div id="carouselExampleIndicators" class="carousel slide"
			data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleIndicators" data-slide-to="0"
					class="active"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			</ol>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img class="d-block w-100" src="images/luxembourg.png" alt="First slide">
				</div>
				<div class="carousel-item">
					<img class="d-block w-100" src="images/legreco.jpg" alt="Second slide">
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleIndicators"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
	</div>

	<div class="container">
		<div class="alert alert-primary" role="alert">Liste des activités de 2019.</div>
		<div id="accordion">
			<div class="card">
				<div class="card-header">
					<a class="card-link" data-toggle="collapse" href="#collapseOne">
						L'âge d'or de la peinture anglaise </a>
				</div>
				<div id="collapseOne" class="collapse" data-parent="#accordion">
					<div class="card-body">Cette exposition, construite à partir
						des chefs-d’oeuvre de la Tate Britain, met à l’honneur une période
						phare dans l’histoire de la peinture en Angleterre, allant des
						années 1760 jusqu’à 1820 environ. Elle entend dresser un panorama
						qui permette d’en saisir toute l’originalité et la diversité. Elle
						mène le visiteur de la fondation de la Royal Academy, avec des
						artistes comme Reynolds et Gainsborough, jusqu’au nouveau tournant
						qui s’amorce au début du XIXe siècle, notamment avec Turner. Le
						public y redécouvrira les grands classiques de l’art britannique,
						trop rarement présentés en France.</div>
				</div>
			</div>
			<div class="card">
				<div class="card-header">
					<a class="collapsed card-link" data-toggle="collapse"
						href="#collapseTwo"> Le Gréco </a>
				</div>
				<div id="collapseTwo" class="collapse" data-parent="#accordion">
					<div class="card-body">Il fut natif de Grèce, élève des
						écoles vénitiennes puis romaines, figure du Siècle d’Or espagnol
						mais aussi de la Renaissance européenne, le Grand Palais consacre
						une exposition au Gréco, du 27 octobre 2019 au 10 février 2020.
						Fondateur de l’École espagnole de peinture au XVIème siècle, ses
						diverses influences ont fait de l’artiste une véritable clef de
						voûte entre tradition et modernité. Cette exposition organisée en
						partenariat avec l’Art Institute of Chicago est la première
						rétrospective monographique consacrée au Gréco.</div>
				</div>
			</div>
			<div class="card">
				<div class="card-header">
					<a class="collapsed card-link" data-toggle="collapse"
						href="#collapseThree"> Tableaux </a>
				</div>
				<div id="collapseThree" class="collapse" data-parent="#accordion">
					<div class="card-body">La Moldau, une des six parties qui
						composent Ma Vlast (ma patrie) de Smetana, se veut un hommage à
						l’affluent de l’Elbe, qui prend sa source dans la forêt de Bohême
						et traverse notamment Prague. Une chasse sylvestre et l’évocation
						d’un mariage paysan apportent une touche contrastée à cette
						partition au généreux cantabile. La pureté expressive fait aussi
						le prix du Concerto pour piano de Grieg, tout comme le panache de
						sa partie pianistique, notamment dans une cadence lisztienne
						endiablée. L’orchestration de Maurice Ravel des Tableaux d’une
						exposition a beaucoup fait pour la reconnaissance du chef-d’œuvre
						fantasmagorique de Moussorgski. Rutilante, elle a coloré la
						partition originelle, aux noirs et blancs d’une sombre grandeur.</div>
				</div>
			</div>
			<div class="card">
				<div class="card-header">
					<a class="card-link" data-toggle="collapse" href="#collapseFour">
						Toulouse-Lautrec </a>
				</div>
				<div id="collapseFour" class="collapse" data-parent="#accordion">
					<div class="card-body">Bien souvent réduite à la culture de
						Montmartre, l’œuvre de Toulouse- Lautrec transcende pourtant ce
						cliché. Si l’artiste a merveilleusement représenté l’électricité
						de la nuit parisienne et ses plaisirs, Toulouse-Lautrec était
						surtout animé d’une ambition esthétique, celle de traduire la
						réalité de la société moderne en ses multiples visages. Exposition
						coproduite par les musées d’Orsay et de l’Orangerie et la Rmn -
						Grand Palais avec le soutien exceptionnel de la ville d’Albi et du
						musée Toulouse-Lautrec. Exposition conçue avec le concours
						exceptionnel de la Bibliothèque nationale de France, détentrice de
						l’ensemble de l’œuvre lithographié de Henri de Toulouse-Lautrec.</div>
				</div>
			</div>
			<div class="card">
				<div class="card-header">
					<a class="card-link" data-toggle="collapse" href="#collapseFive">
						Lucie Baud </a>
				</div>
				<div id="collapseFive" class="collapse" data-parent="#accordion">
					<div class="card-body">Actrice du mouvement ouvrier en
						Dauphiné de 1902 à 1906, Lucie BAUD (1870-1913) est sans doute la
						première femme à fonder un syndicat de femmes en France. Elle est
						morte dans l'oubli et l'anonymat le plus complet. En retraçant sa
						vie qui fut un véritable roman et constitue un espoir pour les
						femmes salariées, Madame Maire se propose de faire revivre cette
						figure méconnue.</div>
				</div>
			</div>
			<div class="card">
				<div class="card-header">
					<a class="card-link" data-toggle="collapse" href="#collapseSix">
						Collection Alana </a>
				</div>
				<div id="collapseSix" class="collapse" data-parent="#accordion">
					<div class="card-body">À la rentrée 2019, le Musée
						Jacquemart-André met à l’honneur la Collection Alana, l’une des
						plus précieuses et secrètes collections privées d’art de la
						Renaissance italienne au monde, actuellement conservée aux
						Etats-Unis. En écho à son exceptionnelle collection d’art italien,
						le Musée Jacquemart André présente plus de 75 chefs-d’œuvre des
						plus grands maitres italiens comme Lorenzo Monaco, Fra Angelico,
						Uccello, Lippi, Bellini, Carpaccio, Le Tintoret, Véronèse,
						Bronzino ou Gentileschi. Cette exposition offre l’occasion unique
						d’admirer pour la première fois des tableaux, sculptures et objets
						d’art qui n’avaient jusque-là jamais été présentés au public. Dans
						la lignée des plus grandes collections américaines, la Collection
						Alana est le fruit d’un intense travail de sélection et d’amour de
						l’art opéré depuis plusieurs décennies par Alvaro Saieh et Ana
						Guzmán, un couple dont la réunion des prénoms forme celui de la
						Collection Alana. Au fil des ans, leur passion s’est muée en une
						véritable fascination pour l’art gothique et la Renaissance
						italienne et les a progressivement conduits à s’intéresser aussi à
						la peinture des XVIe et XVIIe siècles. Le prêt de ces
						chefs-d’œuvre a été accordé à titre exceptionnel au Musée
						Jacquemart-André en raison de l’affection que les deux
						collectionneurs lui ont toujours portée. Les œuvres présentées
						démontrent la vitalité du goût pour la Renaissance italienne,
						considérée comme moment fondateur de la civilisation occidentale.
						Elles offrent un aperçu exhaustif de l’une des plus grandes
						collections privées d’art ancien, de la peinture du XIIIe siècle
						aux œuvres caravagesques.</div>
				</div>
			</div>
			<div class="card">
				<div class="card-header">
					<a class="card-link" data-toggle="collapse" href="#collapseSeven">
						Du Douanier Rousseau à Séraphine </a>
				</div>
				<div id="collapseSeven" class="collapse" data-parent="#accordion">
					<div class="card-body">À la rentrée, le Musée Maillol
						accueille plus d’une centaine d’oeuvres issues du monde
						passionnant, rêveur, insolite et inépuisable des artistes dit
						"naïfs". Appelés "primitifs modernes" par l’un de leurs fervents
						défenseurs, le collectionneur et critique d’art Wilhelm Uhde
						(1874-1947), ces artistes renouvellent la peinture à leur manière,
						à l’écart des avant-gardes et des académismes. Réunies pour la
						première fois à Paris, leurs oeuvres aux couleurs éclatantes
						livrent un pan souvent négligé de l’histoire de l’art de
						l’entre-deux guerres. Sur les pas d’Henri Rousseau et de Séraphine
						Louis, l'exposition vise à sortir de l'oubli une constellation
						d'artistes tels qu’André Bauchant, Camille Bombois, Ferdinand
						Desnos, Jean Ève, René Rimbert, Dominique Peyronnet et Louis
						Vivin. L’exposition, à travers un parcours thématique, soulignera
						les qualités picturales de ces artistes, au-delà de l’anecdote
						biographique qui a longtemps constitué le seul commentaire
						disponible sur eux. Une sélection d’oeuvres étonnantes et à
						contre-courant, issues d’importantes collections publiques et
						privées françaises et internationales révélera la grande
						inventivité formelle de chaque artiste, sans dissimuler les
						dialogues qu’ils entretiennent avec la tradition picturale comme
						avec la création de leur temps. En croisant approches historique,
						analytique et sensible des oeuvres et de leur présentation au
						monde, le Musée Maillol lèvera le voile sur la dimension
						subversive de l’art dit naïf et présentera ces naïfs, primitifs,
						modernes ou antimodernes, comme des grands artistes à
						contre-courant des avant-gardes.</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>