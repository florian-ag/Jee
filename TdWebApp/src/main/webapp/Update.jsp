<%@ page language="java" contentType="text/html; UTF-8"	pageEncoding="UTF-8" session="false"%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update employee</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
</head>
<body>
	
	<div class="container">
		
		<h2>Update employee</h2>
		<form action="update" method="post">
			<div class="form-group">
				<label for="userId">Firstname</label> 
				<input type="text"	class="form-control" name="firstname" id="firstname" placeholder="Firstname" value="${emp.firstName}">
			</div>
			<div class="form-group">
				<label for="userId">Lastname</label> 
				<input type="text"	class="form-control" name="lastname" id="lastname" placeholder="Lastname" value="${emp.lastName}">
			</div>
			<div class="form-group">
				<label for="userId">Start Date</label> 
				<input type="text"	class="form-control" name="startdate" id="startdate" placeholder="Creation date" value="${emp.startDate}">
			</div>
			<div class="form-group">
				<label for="userId">Title</label> 
				<input type="text"	class="form-control" name="title" id="title" placeholder="Title" value="${emp.title}">
				<input type="hidden" name="id" value="${emp.empId}">
			</div>
			
			<button type="submit" class="btn btn-primary">Update</button>
			
		</form>


	</div>
</body>
</html>