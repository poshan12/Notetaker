<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.connect.Database"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
<link href="css/style.css" rel="stylesheet" />
</head>
<body>
	<div class="container">
		<%@include file="header.jsp"%>
		<h1 class="text-uppercase">ALL Note</h1>
			<%
						String s = (String)session.getAttribute("id");
			int i = Integer.parseInt(s);
			out.print(i);
					%>
					
		<%
		
	try{
		Connection con = Database.getConnection();
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select *from note where userid ="+i);
		while(rs.next())
		{
		
	
	%>
		<div class="container">
			<div class="row">
			  <div class="col-sm-8">
			    
						  <div class="card text-black  mb-3" style="max-width: 100rem;  ">
						  <div class="card-header">Title <%=rs.getString(2) %> &nbsp &nbsp  created   <%=rs.getTimestamp(5) %></div>
						  <div class="card-body">
						    <h5 class="card-title"><%=rs.getString(3) %></h5>
						     <h5 class="card-title"></h5>
			   
			  </div>
			  </div>
			   </div>
			  <div class="col-sm-4">
			  <div class="container text-right">
							<table>
								<tr><td><a href="view.jsp?<%=rs.getString(1) %>" class="btn btn-primary"> Update</a></td>
								<td><a href="DeleteServlet?note_id=<%=rs.getInt(1) %>" class="btn btn-danger"> Delete</a></td></tr>
								
							</table>
						</div>
			  </div>
			
	</div>
		</div>
		<%
		}}catch(SQLException e){
					System.out.print(e.getMessage());
			
		}
	%>
	</div>
</body>
</html>