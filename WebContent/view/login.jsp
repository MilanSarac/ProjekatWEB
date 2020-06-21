<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
	<script src="javascript/jquery-3.4.1.js"></script>

<title>Login</title>
<style>
h1 {
	text-align: center;
}
</style>
</head>
<body>
<div class="container">
<h1>Logovanje Korisnika</h1>
	<div class="row justify-content-md-center">
		<div class="col-8 offset-2">
    	<form method="post">
    	<div class="form-group">
    	 <label for="Username">Username</label>
    	  <input type="text" class=form-control name="Username"
    	   placeholder="Enter Username"  required>
	 </div>
	     	<div class="form-group">
    	 <label for="Login-password">Password</label>
    	  <input type="password" class=form-control name="Password"
    	   placeholder="Enter Password" required>
	 </div>
     <button type="submit" class="btn btn-success">Submit</button>
	<a href="/WebProjekat/" id="cancel" name="cancel" class="btn btn-secondary">Cancel</a>
		</div>
	</form>  
</div>