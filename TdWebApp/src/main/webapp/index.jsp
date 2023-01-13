<%@ page language="java" contentType="text/html; UTF-8"	pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Page log</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
</head>
<body>
	
	<div class="container">
		
		<h2>Login</h2>
		<form action="login" method="post">
			
			<div class="form-group">
				<label for="userId">Identifiant</label> 
				<input type="text"	class="form-control" name="email" id="email" placeholder="Identifiant" required>
			</div>
			<div class="form-group">
				<label for="password">Mot de passe</label> 
				<input type="password" class="form-control" name="password" id="password" placeholder="Mot de passe" required>
			</div>
			
			<button type="submit" class="btn btn-primary">Se connecter</button>
		</form>


	</div>
</body>
</html>