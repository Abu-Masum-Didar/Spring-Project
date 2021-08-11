<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page isELIgnored="false" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome Page</title>
</head>
<body>
<h1>Congrates!!! Registration Success</h1>

<h3>User Name is ${ user.firstName }</h3>

<h3>Your Email is ${user.email }</h3>
<h3>Your Date of Birth ${user.date }</h3>
<h3>Your Date of Birth ${user.nPassword }</h3>
<h3>Your Date of Birth ${user.cPassword }</h3>
<br>
<h3>Your Address is ${user.address.city }</h3>

<h3>Your Address is ${user.address.zipCode }</h3>

</body>
</html>