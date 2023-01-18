<%@ page language="java" contentType="text/html; UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List employees</title>
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
		<a class="navbar-brand" href="loggedout">Logout</a>
	</nav>

	<div class="container">

		<div class="card-header mx-4 mx-md-5">
			<div class="row d-flex justify-content-center">
				<div style="background-color:LightGray; padding-bottom: 10px">

					<h2>List of employees</h2>
					<br>
					<a class="btn btn-primary" href="ajoutclient.jsp">Add employee</a>
					<br>

				</div>
			</div>
		</div>

		<div class="card-body py-4">
			<div class="card mx-4 mx-md-5 shadow-5-strong">
				<div class="row d-flex justify-content-center">
					<div class="col">

						<table data-pagination="true" data-search="true"
							data-toggle="table" data-page-list="[5, 10, 25, 50, 100, all]"
							class="table table-striped table-hover">


							<thead>
								<tr>
									<th>EmpId</th>
									<th>FirstName</th>
									<th>LastName</th>
									<th>StartDate</th>
									<th>Title</th>
									<th>Action</th>

								</tr>
							</thead>
							<tbody>
								<c:forEach items="${employee}" var="emp">
									<tr>
										<td>${emp.empId }</td>
										<td>${emp.firstName }</td>
										<td>${emp.lastName }</td>
										<td>${emp.startDate }</td>
										<td>${emp.title }</td>
										<td><a class="btn btn-primary"
											href="update?id=${emp.empId}">Edit</a> <a
											href="delete?id=${emp.empId}"
											onclick="return confirm('Are you sure you want to delete this item?');">
												<button class="btn btn-primary" type="submit" name="id"
													value="${emp.empId}">
													Delete <i class="bi bi-x-square-fill"></i>
												</button>
										</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>