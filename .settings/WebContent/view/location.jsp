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
<body>
	<div id="navbar"></div>
	<BR>
	<BR>
	<div>
		<ul class="nav nav-pills">
			<li class="nav-item"><a class="nav-link" href="user.jsp">Korisnicki
					podaci</a></li>
			<li class="nav-item"><a class="nav-link  active" href="location.jsp">Dodavanje
					Lokacije A</a></li>

			<%
				String roleUser = session.getAttribute("role").toString();
				if (roleUser.equals("Admin")) {
			%>

			<BR>
			<li class="nav-item"><a class="nav-link" href="allUsers.jsp">Pregled
					Apartmana</a></li>
			<li class="nav-item"><a class="nav-link" href="allUsers.jsp">Modifikacija
					Apartmana</a></li>
			<li class="nav-item"><a class="nav-link" href="allUsers.jsp">Brisanje
					Apartmana</a></li>
			<li class="nav-item"><a class="nav-link" href="allUsers.jsp">Pregled
					Rezervacija</a></li>
			<li class="nav-item"><a class="nav-link" href="allUsers.jsp">Pregled
					svih Komentara</a></li>

			<%
				} else if (session.getAttribute("role").toString().equals("Domacin")) {
			%>
			<BR>
			<BR>
			<li class="nav-item"><a class="nav-link"
				href="aktivniApartmani.jsp">Aktivni apartmani</a></li>
			<li class="nav-item"><a class="nav-link"
				href="view/location.jsp">Neaktivni Apartmani</a></li>
			<li class="nav-item"><a class="nav-link" href="location.jsp">Izmena
					podataka</a></li>
			<li class="nav-item"><a class="nav-link" href="location.jsp">Dodavanje
					Novog Apartmana</a></li>
			<li class="nav-item"><a class="nav-link" href="location.jsp">Pregled
					Rezervacija Apartmana</a></li>
			<li class="nav-item"><a class="nav-link" href="location.jsp">Pregled
					Komentara Apartmana</a></li>
			<li class="nav-item"><a class="nav-link" href="location.jsp">Preraga</a></li>
			<%
				} else if (session.getAttribute("role").toString().equals("Gost")) {
			%>
			<BR>
			<BR>
			<li class="nav-item"><a class="nav-link" href="apartmani.jsp">Pregled
					Svojih Rezervacija</a></li>
			<li class="nav-item"><a class="nav-link" href="apartmani.jsp">Kreiranje
					Rezervacije</a></li>
			<li class="nav-item"><a class="nav-link" href="apartmani.jsp">Ostavljnje
					Komentara</a></li>
			<%
				}
			%>
		</ul>
	</div>
	<BR>

	<div class="row justify-content-md-center">
		<div class="col-8 offset-2">
 
  
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