<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="css/bootstrap.css" rel="stylesheet" />
<script src="js/bootstrap.bundle.js"></script>
</head>
<body>
	<div class="container-fluid ">
		

<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<div class="container-fluid">
		<a class="navbar-brand" href="#">NoteTaker</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="#">Home</a></li>
					<%
		boolean flag= false;
		if(session.getAttribute("id")!=null)
		{
			flag = true;
		}
		else flag = false;
			%>
			<%if(flag){%>
				<li class="nav-item"><a class="nav-link" href="Addnode.jsp">Add Note</a></li>
				<li class="nav-item"><a class="nav-link" href="AllNote.jsp">View Note</a></li>
				<li class="nav-item"><a class="nav-link" href="Addnode.jsp">Add Note</a></li>
				<%} %>
				
			</ul>
			<form class="d-flex">
				<input class="form-control me-2" type="search" placeholder="Search"
					aria-label="Search">
				<button class="btn btn-outline-success" type="submit">Search</button>
			</form>
			
			<%if(flag){ %>
				 <a href="logout.jsp" class="btn "> Logout</a>
				 <%}else{ %>
				   <a href="login.jsp" class="btn "> LogIn</a>
				<a href="SigUp.jsp" class="btn "> SignUp</a>
 			<%} %>
				
				
				
				
			
		</div>
	</div>
</nav>
	</div>
</body>
</html>