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
<title>Pregled Sadrzaja</title>
</head>
<body>
	<div id="navbar"></div>
	<BR>
	<BR>
	<div>
		<ul class="nav nav-pills">

			<li class="nav-item"><a class="nav-link " href="allUsers.jsp">Pretraga i Pregled
					Korisnika</a></li>
			<%
				String roleUser = session.getAttribute("role").toString();
				if (roleUser.equals("Admin")) {
			%>

			<BR>
			<li class="nav-item"><a class="nav-link active" href="allApartmans.jsp">Pregled
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
<div class="container-fluid">
		<table class="table table-dark table-hover">
				<tr>
					<th>Aktivan</th>
					<th>Tip Apartmana</th>
					<th>Broj Soba</th>
					<th>Broj gostiju</th>
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
					
			</tr>
			<c:forEach var="post" items="${allANApartments}" varStatus="statusInner">

					<td><c:out value="${post.Active}" /></td>
					<td><c:out value="${post.Type}" /></td>
					<td><c:out value="${post.Number_Rooms}" /></td>
					<td><c:out value="${post.Number_Guests}" /></td>
					<td><c:out value="${post.Date_for_Rent_Start}" /></td>
					<td><c:out value="${post.Date_for_Rent_End}" /></td>
					<td><c:out value="${post.Host}" /></td>
					<td><c:out value="${post.Price_per_night}" /></td>
					<td><c:out value="${post.Latitude}" /></td>
					<td><c:out value="${post.Longitude}" /></td>	
					<td><c:out value="${post.Street}" /></td>
					<td><c:out value="${post.Streetnumber}" /></td>
					<td><c:out value="${post.Place}" /></td>
					<td><c:out value="${post.Zip_post}" /></td>
					
</tr>
				</c:forEach>
			</table>
				</div>
			</div>
	
	
	
	<script src="javascript/jquery-3.4.1.js"></script>
	<script type="text/javascript">
jQuery(document).ready(function($) {
    $(".clickable-row").click(function() {
        window.location = $(this).data("href");
    });
});
</script>

	<script src="javascript/jquery-3.4.1.js"></script>
	<script> 
		$(function(){
  		$("#navbar").load("view/navbar.jsp");
  		
  		
 
        });
</script>
</body>
</html>