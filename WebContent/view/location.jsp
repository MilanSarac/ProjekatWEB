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

<title>Dodavanje Lokacije</title>
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
  height: 100px;  
  padding: 50px;
}
</style>
<body>
<div class="container">
<h1>Dodavanje lokacije</h1>
</head>
<body>
	<div id="navbar"></div>
	<BR>
	<BR>
	<div>

  <div class= "col-5">
  
		<form method="post">
		
		<div class ="form-group">

			<label for = "Latitude">Latitude</label>
			<input type="text" class ="form-control" name ="Latitude"
			placeholder=" Enter Latitude" >
		</div>
		<div class ="form-group">
			<label for = "Longitude">Longitude</label>
			<input type="text" class ="form-control" name = "Longitude"
			placeholder= " Enter Longitude" >
		</div>
		<div class ="form-group">
			<label for = "Location_Adress">Location_Adress</label>

		</div>
	
			<button type="submit value="Create"" class="btn btn-success">Submit</button>
	<a href="/WebProjekat/" id="cancel" name="cancel" class="btn btn-secondary">Cancel</a>
		</div>
	</form>  
</div>


<script>
		$(function() {
			$("#navbar").load("view/navbar.jsp");
		});
</script>
</body>
</html>