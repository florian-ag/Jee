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
                <li class="nav-item active">
                    <a class="nav-link" href="employee">Liste des employés</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="ajoutclient.jsp">Ajouter un client</a>
                </li>
                <li class="nav-item">
                    ${user.firstName } ${user.lastName }<a class="nav-link" href="logout">Deconnexion</a>
                </li>
            </ul>
        </div>
    	</nav>
    	
    	<table class="table table-striped">
  			<thead>
    			<tr>
     			 <th scope="col">#</th>
     			 <th scope="col">FirstName</th>
     			 <th scope="col">LastName</th>
     			 <th scope="col">StartDate</th>
     			 <th scope="col">Title</th>
     			 <th scope="col">DeptId</th>
   				 </tr>
 			 </thead>
  			<tbody>
    			<tr>
      				<th scope="row">1</th>
    			</tr>
   		
  </tbody>
</table>
    
	
</body>
</html>