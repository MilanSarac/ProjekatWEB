<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap CSS -->
<link rel= "stylesheet" href="bootstrap/css/bootstrap-grid.css">
<link rel= "stylesheet" href="bootstrap/css/bootstrap.min.css">
</head>
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: white;
}
.btn{
  background-color: #4CAF50;
  color: white;
  padding: 16px 10px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}
.container{
  width: 400px;
  height: 250px;  
  padding: 50px;
}
</style>
<body>

<div class="container">

    	<form method="post">
    	<div class="form-group">
    	
      <label for="Username">Username</label> <input type="username"   
      	class=form-control name="Username"  placeholder="Enter Username"  required>
	  </div>
	<div class="form-group">	
      <label for="Login-password">Password</label> <input type="password"
       class= form-contorl name="Password" placeholder="Enter Password"  required>
       </div>
		<button type="submit" class="btn btn-success">Submit</button>
				<a href="/WebProjekat/" id="cancel" name="cancel" class="btn btn-success">Cancel</a>
				</div>
			</form>  
</div>