<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Deshboard</title>
</head>
<body>

		<nav class="navbar navbar-expand-lg navbar-light bg-light">
		  <a class="navbar-brand" href="#">Navbar</a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		  <div class="collapse navbar-collapse" id="navbarNav">
		    <ul class="navbar-nav">
		      <li class="nav-item active">
		        <a class="nav-link" href="home">Home <span class="sr-only">(current)</span></a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="list">Friends</a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="Profile">Profile</a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link disabled" href="service" tabindex="-1" aria-disabled="true">Disabled</a>
		      </li>
		    </ul>
		  </div>
		</nav>


	<h1>This is index</h1>
	<h1>By using model</h1>
	
	<%
		String name=(String)request.getAttribute("name");
		Integer ID=(Integer)request.getAttribute("ID");
		String dept=(String)request.getAttribute("Dept");
	%>
	<h1>This is <%=name %></h1>
	<h1>Id is <%=ID %></h1>
	<h1>Department of <%=dept %></h1>
</body>
</html>