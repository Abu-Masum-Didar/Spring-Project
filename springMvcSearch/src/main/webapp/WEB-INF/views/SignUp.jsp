<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Registration</title>
  </head>
  <body>
    
	
    <div class="container mt-4">
    <div class="row">
    <div class="col-md-8 offset-md-2">
	<div class="card">
	<div class="card-body">
	<h1 class="text-center">Sign Up!</h1>
			
			<div class="alert alert-danger" role="alert">
			  <form:errors path="user.*"/>
			</div>
			
	<form action="handleform" method="post">
	  <div class="row">
	    <div class="col">
			First name
	      <input type="text" 
	      		 name="firstName"
	      		 class="form-control" 
	     		 placeholder="First name">
	    </div>
	    <div class="col">
			Last name
	      <input type="text" 
	      		 name="lastName" 
	      		 class="form-control" 
	      		 placeholder="Last name">
	    </div>
	  </div>
	  
	  <div class="form-row mt-3">
	    <div class="form-group col-md-6">
	      <label for="inputEmail">Email</label>
		      <input type="email"
		     		 name="email" 
		      		 class="form-control" 
		      		 id="inputEmail" 
		      		 placeholder="Email">
	    </div>
	    <div class="form-group col-md-3">
	      <label for="nPassword4">New Password</label>
				<input type="password" 
					   name="nPassword"
					   class="form-control" 
					   id="inputPassword4" 
					   placeholder="Password">
	    </div>
	    <div class="form-group col-md-3">
	      <label for="cPassword4">Confirm Password</label>
		       <input type="password" 
		       		  name="cPassword"
				      class="form-control" 
				      id="inputPassword4" 
				      placeholder="Password">
	    </div>
      </div>
	  <div class="form-row">  
		  <div class="form-row col-md-4 mx-1">
			<label for="dob">Date of Birth</label>
				   <input type="text" 
				   		  name="date"
						  class="form-control" 
						  id="inputDate" 
						  placeholder="dd/mm/yyyy">
		  </div>
		 
		   <div class="form-group">
		  	<span class="mr-5 mx-5">Select Gender</span>
		  	<div class="form-check form-check-inline">
			  <input class="form-check-input"
					 type="radio" 
					 name="gender" 
					 id="inlineRadio1" 
					 value="male">
			  <label class="form-check-label" for="inlineRadio1">Male</label>
			</div>
			<div class="form-check form-check-inline mt-4 mx-3">
			  <input class="form-check-input" 
					  type="radio" 
					  name="gender" 
					  id="inlineRadio2" 
					  value="female">
			  <label class="form-check-label" for="inlineRadio2">Female</label>
			</div>
			</div>
	  </div>	
		<div class="form-row">
			<div class="form-group col-md-5 mt-3">
			<label class="mt-2" for="gender">Select Courses</label>
				<select class="form-control"
						name="courses"
						id="courseSelect" multiple>
				  <option >Java</option>
				  <option >Python</option>
				  <option >Php</option>
				  <option >Html</option>
				</select>
			
			</div>	
			<div class="form-group col-md-5 mt-3 mx-5">
			<label class="mt-2" for="type">Select Student Type</label>
				<select class="form-control"
						name="userType"
						id="selectStudent">
				  <option >Begginer</option>
				  <option >Second Level</option>
				  <option >Advance</option>
				</select>
			
			</div>
			<div class="container mt-2">Address
			<div class="card">
			<div class="card-body">
				<div class="form-group ">
		      		<label for="inputCity">City</label>
				      <input type="text"
				     		 name="address.city" 
				      		 class="form-control" 
				      		 id="inputCity" 
				      		 placeholder="Enter Your City">
		    	</div>
		    	<div class="form-group">
		      		<label for="zipCode">zipe Code</label>
				      <input type="text"
				     		 name="address.zipCode" 
				      		 class="form-control" 
				      		 id="zipCode" 
				      		 placeholder="Enter Your Zip code">
		    	</div>
			</div>
			</div>
			</div>
			
		</div>
	  		<div class="container text-center mt-5">
			     <button class="btn btn-success " name="submit" type="submit">Submit form</button>
			</div>
		</form>
	</div>
    </div>
    </div>
    </div>
    </div>
    

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>