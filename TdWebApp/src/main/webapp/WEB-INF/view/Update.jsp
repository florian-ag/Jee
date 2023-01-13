<%@ page language="java" contentType="text/html; UTF-8"
	pageEncoding="UTF-8" session="false"%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update employee</title>
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
		<a class="navbar-brand" href="login">WEBAPP</a> 
		<a class="navbar-brand" href="employee">List of employees</a> 
		<a class="navbar-brand" href="logout">Logout</a>
	</nav>
	<br>
	<br>

	<div class="container">
		<div class="corps px-4 px-lg-4">
			<div class="row gx-4 gx-lg-4 justify-content-center">
				<div class="col-md-10 col-lg-4 col-xl-7">
					<h2 align="center">Update employee</h2>

					<form action="update" method="post">
						<div class="form-group">
							<div align="left">
								<label for="userId">Firstname</label>
							</div>
							<input type="text" class="form-control" name="firstname"
								id="firstname" placeholder="Firstname" value="${emp.firstName}">
						</div>
						<div class="form-group">
							<div align="left">
								<label for="userId">Lastname</label>
							</div>
							<input type="text" class="form-control" name="lastname"
								id="lastname" placeholder="Lastname" value="${emp.lastName}">
						</div>

						<div class="form-group">
							<div align="left">
								<label for="userId">Title</label>
							</div>
							<input type="text" class="form-control" name="title" id="title"
								placeholder="Title" value="${emp.title}"> <input
								type="hidden" name="id" value="${emp.empId}">
						</div>
						<div class="form-group">
							<div align="left">
								<label for="userId">Start Date</label> <input type="date"
									id="startdate" name="startdate" value="${emp.startDate}"
									min="1900-01-01" max="2100-12-31">
							</div>
						</div>
						<div align="left">
							<button type="submit" class="btn btn-primary">Update</button>
						</div>

					</form>
					<br>
					<form action="employee" method="post">
						<div align="left">

							<button type="submit" class="btn btn-primary">Cancel</button>
						</div>

					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>