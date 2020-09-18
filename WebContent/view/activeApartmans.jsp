<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<script src="javascript/jquery-3.4.1.js"></script>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="bootstrap/css/bootstrap-grid.css">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<title>Aktivni apartmani</title>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
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
			<li class="nav-item"><a class="nav-link " href="allUsers.jsp">Pretraga i Pregled 
					Korisnika</a></li>
			<li class="nav-item"><a class="nav-link active" href="activeApartmans.jsp">Pregled
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

			<%
				} else if (session.getAttribute("role").toString().equals("Domacin")) {
			%>
			<BR>
			<BR>
			<li class="nav-item"><a class="nav-link" href="allUsers.jsp">Pregled
					svih korisnika sa rezervacijom</a></li>
			<li class="nav-item"><a class="nav-link active"
				href="activeApartmans.jsp">Aktivni apartmani</a></li>
			<li class="nav-item"><a class="nav-link"
				href="activeNOApartman.jsp">Neaktivni Apartmani</a></li>
			<li class="nav-item"><a class="nav-link" href="location.jsp">Izmena
					podataka Apartmana</a></li>
			<li class="nav-item"><a class="nav-link" href="addApartmans.jsp">Dodavanje
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
			<li class="nav-item"><a class="nav-link" href="allReservation.jsp">Pregled
					Svojih Rezervacija</a></li>

			<li class="nav-item"><a class="nav-link" href="comment.jsp">Pregled svih
					Komentara</a></li>


			<%
				}
			%>
		</ul>
	</div>
<br>
	<div class="container-fluid">
		<table class="table table-dark table-hover">
			<tr>
			<tr>
				<th>Tip Apartmana</th>
				<th>Apartman/Soba</th>
				<th>Broj Prostorija</th>
				<th>Broj Gostiju</th>
				<th>Datum izdavanja pocetak</th>
				<th>Datum izdavanja kraj</th>
				<th>Domacin</th>
				<th>Cena izdavanja</th>
				<th>Geo Sirina</th>
				<th>Geo Duzina</th>
				<th>Ulica</th>
				<th>Broj</th>
				<th>Mesto</th>
				<th>Postanski broj</th>
				<th>Sadrzaj Apartmana</th>
				<th>Apartman Aktivan</th>
				
			</tr>
			<c:forEach var="post" items="${allApartmans}" varStatus="statusInner">
					<tr class="clickable-row">
									<td><c:out value="${post.ID_Apartman}" /></td>
									<td><c:out value="${post.Type}" /></td>
									<td><c:out value="${post.Number_Rooms}" /></td>
									<td><c:out value="${post.Number_Guests}" /></td>
									<td><c:out value="${post.Date_for_Rent_Start}" /></td>
									<td><c:out value="${post.Date_for_Rent_End}" /></td>
									<td><c:out value="${post.Host}" /></td>
									<td><c:out value="${post.Price_per_night}" /></td>
									<td><c:out value="${post.Latitude}" /> </td>
									<td><c:out value="${post.Longitude}" /></td>
									<td><c:out value="${post.Street}" /></td>
									<td><c:out value="${post.Streetnumber}" /></td>
									<td><c:out value="${post.Place}" /></td>
									<td><c:out value="${post.Zip_post}" /></td>
									<td><c:out value="${post.Sadrzaj}" /></td>
									<td><c:out value="${post.Active}" /></td>
								
				</c:forEach>
			</table>
		</div>
	</div>	
<script src="javascript/jquery-3.4.1.js"></script>	
	<script>
		$(function() {
			$("#navbar").load("view/navbar.jsp");
		});
	</script>
</body>
</html>