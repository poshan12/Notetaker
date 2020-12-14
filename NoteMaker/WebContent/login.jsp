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
<div class="container ">
<%@include file="header.jsp"%>
		<h3>Resister Here !!!!</h3>
		<div class="row ">
  <div class="col-sm-6">
    <div class="card  bg-secondary ">
      <div class="card-body ">
        <h5 class="card-title">LogIn</h5>
        <form class="form-control" action="Register">
			  <div class="mb-3  ">
			  <label for="exampleFormControlInput1" class="form-label">Email address</label>
			  <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com" name="email">
			</div>
			  <div class="mb-3">
			  <label for="inputPassword" class="form-label">Password</label>
			  <input type="password" class="form-control" id="exampleFormControlInput1" placeholder="password" name="pwd">
			</div>
			  <div class="m3-3">
			    <button type="submit" class="btn btn-secondary">Confirm identity</button>
			  </div>
		</form>
      </div>
    </div>
  </div>
  <div class="col-sm-1">
  
  </div>
  <div class="col-sm-5 ">
    <div class="card  bg-secondary">
      <div class="card-body">
        <h5 class="card-title ">SignUp</h5>
        <%
        out.print(request.getAttribute("flag"));
        %>
        <form class="form-control" action="Register" method="post">
			  <div class="mb-1  ">
			  <label for="exampleFormControlInput1" class="form-label">Name</label>
			  <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Put Your Name" name="userName">
			</div>
			 <div class="mb-1  ">
			  <label for="exampleFormControlInput1" class="form-label">Email address</label>
			  <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com" name="email">
			</div>
			 <div class="mb-1  ">
			  <label for="exampleFormControlInput1" class="form-label">Mobile</label>
			  <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Mobile No" name="phone">
			</div>
			 <div class="mb-1  ">
			  <label for="exampleFormControlInput1" class="form-label">Location</label>
			  <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Address" name="address">
			</div>
			 <div class="mb-1  ">
			  <label for="exampleFormControlInput1" class="form-label">Location</label>
			  <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="password" name="pwd">
			</div>
			
			  
			  <div class="m3-3">
			    <button type="submit" class="btn btn-secondary	 mb-3">Confirm identity</button>
			  </div>
		</form></div>
    </div>
  </div>
</div>
</div>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
					
</body>
</html>