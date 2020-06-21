<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script src="javascript/jquery-3.4.1.js"></script>
<meta charset="ISO-8859-1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<title>Amenities</title>
</head>
<body>
	<div id="navbar"></div>
	<BR>
	<BR>
		<ul class="nav nav-pills">
		<li class="nav-item"><a class="nav-link" href="user.jsp">Korisnicki
					podaci</a></li>
			<li class="nav-item"><a class="nav-link" href="location.jsp">Dodavanje
					Lokacije A</a></li>
			<li class="nav-item"><a class="nav-link" href="address.jsp">Dodavanje
					Adrese</a></li>
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
			<li class="nav-item"><a class="nav-link " href="allUsers.jsp">Pregled
					svih Korisnika</a></li>
			<li class="nav-item"><a class="nav-link" href="amenities.jsp">Dodavanje
					Sadrzaja</a></li>
			<li class="nav-item"><a class="nav-link" href="allAmenities.jsp">Pregled
					svih Sadrzaja</a></li>

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
	<p class="font-weight-bold">Pogodnosti apartmana</p>
	<form method="post">
				<div class="form-group">
					<label for="ID">ID</label> <input type="text"
						class="form-control" name="ID" placeholder=" Enter ID">
				</div>
	<section class="section-preview">
	
		<div class="custom-control custom-checkbox">
	
			<input type="checkbox" id="Wifi" name="Wifi" value="Wifi"> <label
				for="vehicle1"> Apartment have a Wifi</label><br> <input
				type="checkbox" id="Tv" name="Tv" value="Tv"> <label
				for="vehicle2"> Apartment have a Tv</label><br> <input
				type="checkbox" id="AirConditioning" name="AirConditioning"
				value="AirConditioning"> <label for="vehicle2">
				Apartment have a AirConditioning</label><br> <input type="checkbox"
				id="Wifi" name="Wifi" value="Elevator"> <label
				for="vehicle2"> Apartment have a Elevator</label><br> <input
				type="checkbox" id="Parking" name="Parking" value="Parking">
			<label for="vehicle2"> Apartment have a Parking</label><br> <input
				type="checkbox" id="Parking" name="Parking" value="Kitchen">
			<label for="vehicle2"> Apartment have a Kitchen</label><br> <input
				type="checkbox" id="Iron" name="Iron" value="Iron"> <label
				for="vehicle2"> Apartment have a Iron</label><br> <input
				type="checkbox" id="Washing_machine" name="Washing_machine"
				value="Washing_machine"> <label for="vehicle2">
				Apartment have a Washing_machine</label><br> 

			<button type="submit value=" Create"" class="btn btn-success">Submit</button>
			<a href="/WebProjekat/" id="cancel" name="cancel"
				class="btn btn-secondary">Cancel</a>
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
