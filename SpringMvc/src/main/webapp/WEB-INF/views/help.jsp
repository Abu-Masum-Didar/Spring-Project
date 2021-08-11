<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import = "java.time.LocalDateTime" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Help Page</title>
</head>
<body>

	<%
	    String name=(String)request.getAttribute("name");
		String id=(String)request.getAttribute("Id");
		LocalDateTime time=(LocalDateTime)request.getAttribute("time"); 
	%>
	<h1>This is how <%=name %></h1>
	<h1>Id : <%=id %></h1>
	<h1>How can i help you...?</h1>
	<h1>Date and Time <%=time.toString() %> </h1>

</body>
</html>