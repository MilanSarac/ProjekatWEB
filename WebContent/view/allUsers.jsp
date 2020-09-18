<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script src="javascript/jquery-3.4.1.js"></script>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<title>Adminov Pregled korisnika</title>
</head>
<body>
	<div id="navbar"></div>
	<BR>
	<BR>
	<div>
		<ul class="nav nav-pills">

	<%
				String roleUser = session.getAttribute("role").toString();
				if (roleUser.equals("Admin")) {
			%>


			<BR>
			<li class="nav-item"><a class="nav-link active" href="allUsers.jsp">Pretraga i Pregled 
					Korisnika</a></li>
			<li class="nav-item"><a class="nav-link" href="activeApartmans.jsp">Pregled
					Svih Apartmana</a></li>
			<li class="nav-item"><a class="nav-link" href="updateApartman.jsp">Modifikacija
					Apartmana</a></li>
			<li class="nav-item"><a class="nav-link" href="brisanjeApartmana.jsp">Brisanje
					Apartmana</a></li>
			<li class="nav-item"><a class="nav-link" href="addAmenities.jsp">Dodavanje
					Sadrzaja</a></li>
			<li class="nav-item"><a class="nav-link" href="updateAmenities1.jsp">Pregled i Izmene Sadrzaja</a></li>
			<li class="nav-item"><a class="nav-link" href="comment.jsp">Pregled
					svih Komentara</a></li>
			<li class="nav-item"><a class="nav-link" href="allReservation.jsp">Pregled
					Rezervacija</a></li>
			<li class="nav-item"><a class="nav-link  " href="brisanjeKorisnikastrana.jsp">Brisanje
					Korisnika</a></li>
			<li class="nav-item"><a class="nav-link " href="registration.jsp">Kreiranje
					Domacina</a></li>

					
					
					
					
			
	</div>
	<BR>
	<div id="navbar"></div>
	<div class="container-fluid">
		<div id="content">
			<form action="/WebProjekat/searchUser.jsp">
							<div class="row justify-content-md-center">

				<div class="container-fluid">
					<div id="content">
						<div class="input-group mb-3">
							<div class="container-fluid" style="background-color: #f0f5ff;">
								<input type="text" class="form-control" name="Name"
									placeholder="Name">
							</div>
							<div class="container-fluid" style="background-color: #f0f5ff;">
								<input type="text" class="form-control" name="SureName"
									placeholder="SureName">
							</div>
							<div class="container-fluid" style="background-color: #f0f5ff;">
								<input type="submit" value="Pretraga korisnika"
									class="btn-outline-success btn-sm btn-block" />
							</div>
						</div>
					</div>
				</div>			

			<%
				} else if (session.getAttribute("role").toString().equals("Domacin")) {
			%>
			<BR>
			<BR>
			<li class="nav-item"><a class="nav-link active" href="allUsers.jsp">Pregled
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
	<div class="container-fluid">
		<table class="table table-dark table-hover">
			<tr>
				<th>Ime</th>
				<th>Prezime</th>
				<th>Korisnicko Ime</th>
				<th>Pol</th>
				<th>Uloga</th>
				<th>Sifra</th>
				<th>Aktivan</th>
			</tr>
			<c:forEach var="post" items="${resultArray}" varStatus="statusInner">

				<tr class='clickable-row'>
				<tr class='clickable-row' data-href='url://'>

					<td><c:out value="${post.Name}" /></td>
					<td><c:out value="${post.SureName}" /></td>
					<td><c:out value="${post.Username}" /></td>
					<td><c:out value="${post.Male}" /></td>
					<td><c:out value="${post.Role}" /></td>
					<td><c:out value="${post.Password}" /></td>
					<td><c:out value="${post.Active}" /></td>

				</tr>
			</c:forEach>
		</table>

	</div>
	</div>


<script src="javascript/jquery-3.4.1.js"></script>

<script>
	jQuery(document).ready(function($) {

		$(".clickable-row").click(function() {

			window.location = $(this).data("href");

		});

	});
</script>

<script>
	$(function() {
		$("#navbar").load("view/navbar.jsp");
	});
</script>
</body>
</html>