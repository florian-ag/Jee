<%@ page language="java" contentType="text/html; UTF-8"
	pageEncoding="UTF-8" errorPage="error.jsp" session="false"%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Page log</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<link href="CSS.css" rel="stylesheet" />

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
	crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery/dist/jquery.min.js"></script>
<script
	src="https://unpkg.com/bootstrap-table@1.21.2/dist/bootstrap-table.min.js"></script>
<link rel="stylesheet"
	href="https://unpkg.com/bootstrap-table@1.21.2/dist/bootstrap-table.min.css">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-dark">
		<a class="navbar-brand" href="#">WEBAPP</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
	</nav>

	<div class="container">

		<br> <br>
		<div class="corps px-4 px-lg-4">
			<div class="row gx-4 gx-lg-4 justify-content-center">
				<div class="col-md-10 col-lg-4 col-xl-7">
					<h2 align="center">Login</h2>

					<br>
					<form action="login" method="post">

						<div class="form-group">
							<div align="left">
								<label for="userId">Identifiant</label>
							</div>
							<input type="text" class="form-control" name="email" id="email"
								placeholder="Identifiant" required>
						</div>
						<div class="form-group">
							<div align="left">
								<label for="password">Mot de passe</label>
							</div>
							<input type="password" class="form-control" name="password"
								id="password" placeholder="Mot de passe" required>
						</div>
						<div align="left">
							<button type="submit" class="btn btn-primary">Se
								connecter</button>
						</div>

					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>