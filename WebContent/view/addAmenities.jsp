<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<script src="javascript/jquery-3.4.1.js"></script>

<title>Dodavanje Sadrzaja</title>
<style>
h1 {
	text-align: center;
}
</style>

</head>
<body>
	<div id="navbar"></div>
	<BR>
	<BR>
	<div>
		<ul class="nav nav-pills">

			<li class="nav-item"><a class="nav-link " href="allUsers.jsp">Pretraga
					Korisnika</a></li>
			<%
				String roleUser = session.getAttribute("role").toString();
				if (roleUser.equals("Admin")) {
			%>

			<BR>
			<li class="nav-item"><a class="nav-link" href="allUsers.jsp">Pregled
					svih korisnika</a></li>
			<li class="nav-item"><a class="nav-link" href="allApartmans.jsp">Pregled
					Svih Apartmana</a></li>
			<li class="nav-item"><a class="nav-link" href="addApartmans.jsp">Modifikacija
					Apartmana</a></li>
			<li class="nav-item"><a class="nav-link" href="addApartmans.jsp">Brisanje
					Apartmana</a></li>
			<li class="nav-item"><a class="nav-link" href="addAmenities.jsp">Dodavanje
					Sadrzaja</a></li>
			<li class="nav-item"><a class="nav-link"
				href="updateAmenities1.jsp">Obnova Sadrzaja</a></li>
			<li class="nav-item"><a class="nav-link "
				href="allApartmans.jsp">Brisanje Sadrzaja</a></li>
			<li class="nav-item"><a class="nav-link" href="allUsers.jsp">Pregled
					svih Komentara</a></li>
			<li class="nav-item"><a class="nav-link" href="allApartmans.jsp">Pregled
					Rezervacija</a></li>
			<li class="nav-item"><a class="nav-link " href="allUsers.jsp">Blokiranje
					Korisnika</a></li>
			<li class="nav-item"><a class="nav-link " href="allUsers.jsp">Pretraga
					Korisnika</a></li>
			<li class="nav-item"><a class="nav-link " href="allUsers.jsp">Kreiranje
					Domacina</a></li>

			<li class="nav-item"><a class="nav-link "
				href="allAmenities.jsp">Pregled svih Sadrzaja</a></li>
			<li class="nav-item"><a class="nav-link "
				href="updateAmenities1.jsp">Izmena svih Sadrzaja</a></li>
			<li class="nav-item"><a class="nav-link "
				href="allApartmans.jsp">Izmena svih Sadrzaja</a></li>
			<li class="nav-item"><a class="nav-link" href="apartmanView.jsp">Pregled
					jednog Apartmanaa</a></li>

			<%
				} else if (session.getAttribute("role").toString().equals("Domacin")) {
			%>
			<BR>
			<BR>
			<li class="nav-item"><a class="nav-link" href="allUsers.jsp">Pregled
					svih korisnika sa rezervacijom</a></li>
			<li class="nav-item"><a class="nav-link"
				href="aktivniApartmani.jsp">Aktivni apartmani</a></li>
			<li class="nav-item"><a class="nav-link"
				href="view/location.jsp">Neaktivni Apartmani</a></li>
			<li class="nav-item"><a class="nav-link" href="location.jsp">Izmena
					podataka Apartmana</a></li>
			<li class="nav-item"><a class="nav-link" href="location.jsp">Dodavanje
					Novog Apartmana</a></li>
			<li class="nav-item"><a class="nav-link" href="location.jsp">Brisanje
					Apartmana</a></li>
			<li class="nav-item"><a class="nav-link" href="location.jsp">Pregled
					Rezervacija Apartmana</a></li>
			<li class="nav-item"><a class="nav-link" href="comment.jsp">Pregled
					Komentara Apartmana</a></li>
			<li class="nav-item"><a class="nav-link" href="location.jsp">Pretraga</a></li>
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
			<li class="nav-item"><a class="nav-link" href="apartmani.jsp">Sortiranje
					Apatmana</a></li>
			<li class="nav-item"><a class="nav-link" href="apartmani.jsp">Filtriranje
					Apatmana</a></li>


			<%
				}
			%>
		</ul>
	</div>
		<br>
</head>
<body>
<BR>

	<div class="row justify-content-md-center">
		<div class="col-8 offset-2">
 
  
		<form method="post">
		
		<div class ="form-group">

			<label for = "Name_Amenities">Naziv Sadrzaja</label>
			<input type="text" class ="form-control" name ="Name_Amenities"
			placeholder=" Enter Name_Amenities" >
		</div>
	
	
			<button type="submit value" class="btn btn-success">Submit</button>
	<a href="/WebProjekat id="cancel" name="cancel" class="btn btn-secondary">Cancel</a>
		</div>
	</form>  
</div>
<script src="bootstrap/js/bootstrap.js.min"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>

	<script>
		$(function() {
			$("#navbar").load("view/navbar.jsp");
		});
	</script>
</body>
</html>