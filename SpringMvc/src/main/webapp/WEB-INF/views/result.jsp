<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Help Page</title>
</head>
<body>

	<h1>Alim(SSC) Result</h1>
	
	<h1>Name: ${name }</h1>
	<h1>Roll: ${roll }</h1>
	<h3>General Math : ${math }</h3>
	<h3>Physics : ${phy }</h3>
	<h3>Chemistry : ${che }</h3>
	<h3>Biology : ${bio }</h3>
	<h3>ICT : ${ict }</h3>
	
	<h1>Alim Madrasha Board, Dhaka</h1>
	<hr>
	
	<hr>
	<c:forEach var="item" items="${marks }">
		<%-- <h2>${item }</h2> --%>
		<!-- Or other logic -->
		<h4><c:out value="${item}"></c:out></h4>
	
	</c:forEach>

</body>
</html>