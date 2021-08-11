<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@page import ="java.util.List" %>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ArrayList</title>
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
	

	<h1>Try to show the Array List</h1>
	<%
		List<String> friends=(List<String>) request.getAttribute("F");
	
	%>
	
	<%
		for(String s: friends)
		{
	%>
	<h3><%=s %></h3>
	<% 
		}
	%>


</body>
</html>