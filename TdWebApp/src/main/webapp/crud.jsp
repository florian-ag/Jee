<%@ page language="java" contentType="text/html; UTF-8"
	pageEncoding="UTF-8"%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
	<link href="Csspopup.css" rel="stylesheet" />
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-dark">
		<a class="navbar-brand" href="#">CRUD</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="ajoutclient.jsp">Ajouter
						un employé</a></li>
				<li class="nav-item">${user.firstName }${user.lastName }
					${user.getRoleName() }<a class="nav-link" href="logout">Deconnexion</a>
				</li>
			</ul>
		</div>
	</nav>

	<table class="table table-striped">
		<thead>
			<tr>
				<th scope="col">EmpId</th>
				<th scope="col">FirstName</th>
				<th scope="col">LastName</th>
				<th scope="col">StartDate</th>
				<th scope="col">Title</th>
				<th colspan="2">Action</th>

			</tr>
		</thead>
		<tbody>
			<c:forEach items="${employee}" var="emp">
				<tr class="rowoverhead">
					<td>${emp.empId }</td>
					<td>${emp.firstName }</td>
					<td>${emp.lastName }</td>
					<td>${emp.startDate }</td>
					<td>${emp.title }</td>
					<td><button class="btn btn-primary">Edit</button></td>
					<td>
					<div class="box">
							<a href="#popup2" class="btn btn-outline-primary"> Delete<i
								class="bi bi-x-square-fill"></i></a>
						</div>
						<div id="popup2" class="overlay">
							<div class="popup">
								<h2>Corfirm ?</h2>

								<form action="delete" method="get">
									<button type="submit" class="btn btn-outline-primary" name="id"
										value="${emp.empId}">Delete</button>
								</form>
								<a href="#"><button type="submit"
										class="btn btn-outline-primary">Cancel</button></a>
							</div>

						</div>
					</td>
					
					

				</tr>
			</c:forEach>
		</tbody>
	</table>
	
	
	


</body>
</html>