<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
</head>
<body>
	
	<h1 >${Congrats}</h1>
	<h3>Hi ${user.userName }</h3>
	<h3>Welcome to Our Home</h3>
	<h1 style="color:green">${mgs }</h1>
	
	<h3>Your Mail id is :-->> ${user.userEmail }</h3>
	<h3>and Password is :-->> ${user.userPassword } try to secure your password</h3>
	
	
</body>
</html>