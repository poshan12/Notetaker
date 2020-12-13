<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page errorPage="Error404.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%!
		int n1=5;
		int n2 =0;
		
%>
<%
	int div =n1/n2;
%>
<h1>divison =<%= div %></h1>
</body>
</html>