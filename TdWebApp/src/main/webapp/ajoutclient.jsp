<%@ page language="java" contentType="text/html; UTF-8"	pageEncoding="UTF-8" session="false"%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add employee</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
</head>
<body>
	
	<div class="container">
		
		<h2>Add employee</h2>
		<form action="employeeadd" method="post">
			
			<div class="form-group">
				<label for="userId">Firstname</label> 
				<input type="text"	class="form-control" name="firstname" id="firstname" placeholder="Firstname">
			</div>
			<div class="form-group">
				<label for="userId">Lastname</label> 
				<input type="text"	class="form-control" name="lastname" id="lastname" placeholder="Lastname">
			</div>
			<div class="form-group">
				<label for="userId">Title</label> 
				<input type="text"	class="form-control" name="title" id="title" placeholder="Title">
			</div>
			
			<div class="form-group">
				<label for="userId">Start Date</label> <input type="date"
					id="startdate" name="startdate"
					min="1900-01-01" max="2100-12-31">
			</div>
			
			
			<button type="submit" class="btn btn-primary">Validate</button>
		</form>
		<br>
		
		<form action="employee" method="post">

			<button type="submit" class="btn btn-primary">Cancel</button>

		</form>


	</div>
</body>
</html>