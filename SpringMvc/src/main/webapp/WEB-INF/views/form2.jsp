<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false" %>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Form Page</title>
  </head>
  <body>
    
    
    <div class="container mt-5" >
    
    <h1 class="text-center">${Congrats }</h1>
    <h3 class="text-center">${Header }</h3>
    	 <form action="welcome2"  method="post">
    	 
		  <div class="form-group">
			    <label for="userEmail">Email address</label>
			    <input type="email" 
			    	   class="form-control" 
			    	   id="userEmail" 
			    	   name="userEmail"
			    	   aria-describedby="emailHelp"
			    	   placeholder="Enter email"> 
			    	   
		  </div>
		  
		  <div class="form-group">
			    <label for="userName">User Name</label>
			    <input type="text" 
			    	   class="form-control" 
			    	   id="userName"
			    	   name="userName"
			    	   aria-describedby="namelHelp" 
			    	   placeholder="Enter User Name"> 
		  </div>
		  
		  <div class="form-group">
			    <label for="userPassword">Password</label>
			    <input type="password" 
			    	   class="form-control" 
			    	   id="userPassword"
			    	   name="userPassword"
			    	   aria-describedby="" 
			    	   placeholder="Password">
		  </div>
		  <div class="container text-center">
		  	<button type="submit" 
		  		  class="btn btn-success">Sing Up</button>
		  </div>
		  
	</form>
    
    </div>
	
    
    

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>