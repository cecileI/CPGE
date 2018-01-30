<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html >
  <head>
	<meta http-equiv="Content-Type" content="text/html">
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<title>Bienvenue sur le projet CPGE</title>
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
	
</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">Project name</a>
		</div>
		<div id="navbar" class="collapse navbar-collapse">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Home</a></li>
				<li><a href="#about">About</a></li>
				<li><a href="#contact">Contact</a></li>
			</ul>
		</div>
		<!--/.nav-collapse -->
	</div>
	</nav>

	<div class="container">

		<div class="starter-template">
			<h1>Bootstrap starter template</h1>
			<c:forEach items="${etudiants }" var="etu">
				<p>${etu.prenomEtudiant }${etu.nomEtudiant }a pour login ${etu.loginEtudiant }</p>
			</c:forEach>
		</div>

	</div>
	
	<div class="container2">

		<div class="starter-template2">
			
			<c:forEach items="${evaluateurs }" var="eval">
				<p>${eval.prenomEvaluateur }${eval.nomEvaluateur }a pour login ${eval.loginEvaluateur }</p>
			</c:forEach>
		</div>

	</div>


	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>