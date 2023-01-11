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
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-dark">
        <a class="navbar-brand" href="#">CRUD</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="ajoutclient.jsp">Ajouter un employé</a>
                </li>
                <li class="nav-item">
                    ${user.firstName } ${user.lastName } ${user.getRoleName() }<a class="nav-link" href="logout">Deconnexion</a>
                </li>
            </ul>
        </div>
    	</nav>
    	
    	<table class="table table-striped">
  			<thead>
    			<tr>
     			 <th scope="col">#</th>
     			 <th scope="col">EmpId</th>
     			 <th scope="col">FirstName</th>
     			 <th scope="col">LastName</th>
     			 <th scope="col">StartDate</th>
     			 <th scope="col">Title</th>
   				 </tr>
 			 </thead>
  			<tbody>
  				<c:forEach items="${employee}" var="emp">
  					<c:choose>
  						<c:when test="${emp.empId>0}">
  							<tr class="rowoverhead">
  								<td> ${emp.empId } </td>
  								<td> ${emp.firstName } </td>
  								<td> ${emp.lastName } </td>
  								<td> ${emp.startDate } </td>
  								<td> ${emp.title } </td>
  								
  							</tr>
  						</c:when>
  					
  					
  					</c:choose>
  				
  				</c:forEach>
  			
  			</tbody>
  					</table>
    
	
</body>
</html>