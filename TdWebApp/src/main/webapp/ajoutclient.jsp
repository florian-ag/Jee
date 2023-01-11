<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ajouterun client</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
</head>
<body>
	
	<div class="container">
		
		<h2>Ajouter un client</h2>
		<form>
			
			<div class="form-group">
				<label for="userId">Email</label> 
				<input type="text"	class="form-control" name="email" id="email" placeholder="Identifiant">
			</div>
			<div class="form-group">
				<label for="password">Password</label> 
				<input type="text"	class="form-control" name="password" id="password" placeholder="Mot de passe">
			</div>
			<div class="form-group">
				<label for="userId">Firstname</label> 
				<input type="text"	class="form-control" name="firstname" id="firstname" placeholder="Identifiant">
			</div>
			<div class="form-group">
				<label for="userId">Lastname</label> 
				<input type="text"	class="form-control" name="lastname" id="lastname" placeholder="Identifiant">
			</div>
			<div class="form-group">
				<label for="userId">Date création</label> 
				<input type="text"	class="form-control" name="date" id="date" placeholder="Identifiant">
			</div>
			
			
			<button type="submit" class="btn btn-primary">Valider</button>
		</form>


	</div>
</body>
</html>