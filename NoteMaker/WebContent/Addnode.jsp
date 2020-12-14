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
		
	
		<%@include file="header.jsp"%>
	<%if(flag){%>
		<div class="container-fluid ">
		<br><br>
		<form action="AddNote" method="post">
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">ADD TITLE</label> <input type="text" class="form-control" id="content"
					name="content" aria-describedby="emailHelp">
					<%
						String s =	(String)session.getAttribute("id");
						out.print(s);
					%>
				<input type="hidden" class="form-control" id="content"
					name="userId" aria-describedby="emailHelp" value ="<%=s%>">
			</div>
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">Note</label>
				<textarea class="form-control" id="summernote" name="data"
					style="height: 200px"></textarea>
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-primary">Add Note</button>
			</div>

		</form>
	</div><%} else response.sendRedirect("login.jsp"); %>
	<script type="text/javascript">
	$('#summernote').summernote({
		  toolbar: [
		    // [groupName, [list of button]]
		    ['style', ['bold', 'italic', 'underline', 'clear']],
		    ['font', ['strikethrough', 'superscript', 'subscript']],
		    ['fontsize', ['fontsize']],
		    ['color', ['color']],
		    ['para', ['ul', 'ol', 'paragraph']],
		    ['height', ['height']]
		  ]
		});
	</script>

</body>
</html>