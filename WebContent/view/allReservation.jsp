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
			<li class="nav-item"><a class="nav-link " href="allUsers.jsp">Pretraga i Pregled 
					Korisnika</a></li>
			<li class="nav-item"><a class="nav-link" href="activeApartmans.jsp">Pregled
					Svih Apartmana</a></li>
			<li class="nav-item"><a class="nav-link " href="updateApartman.jsp">Modifikacija
					Apartmana</a></li>
			<li class="nav-item"><a class="nav-link " href="brisanjeApartmana.jsp">Brisanje
					Apartmana</a></li>
			<li class="nav-item"><a class="nav-link " href="addAmenities.jsp">Dodavanje
					Sadrzaja</a></li>
			<li class="nav-item"><a class="nav-link " href="updateAmenities1.jsp">Pregled i Izmene Sadrzaja</a></li>
			<li class="nav-item"><a class="nav-link " href="comment.jsp">Pregled
					svih Komentara</a></li>
			<li class="nav-item"><a class="nav-link active" href="allReservation.jsp">Pregled
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
			<li class="nav-item"><a class="nav-link" href="userApartmanReservation.jsp">Pregled
					svih korisnika sa rezervacijom</a></li>
			<li class="nav-item"><a class="nav-link"
				href="activeApartmans.jsp">Aktivni apartmani</a></li>
			<li class="nav-item"><a class="nav-link"
				href=activeNOApartman.jsp>Neaktivni Apartmani</a></li>
			<li class="nav-item"><a class="nav-link" href="updateApartman1.jsp">Izmena
					podataka Apartmana</a></li>
			<li class="nav-item"><a class="nav-link" href="addApartmans.jsp">Dodavanje
					Novog Apartmana</a></li>
			<li class="nav-item"><a class="nav-link" href="brisanjeApartmana.jsp">Brisanje
					Apartmana</a></li>
			<li class="nav-item"><a class="nav-link active" href="allReservation.jsp">Pregled
					Rezervacija Apartmana</a></li>
			<li class="nav-item"><a class="nav-link" href="comment.jsp">Pregled
					Komentara Apartmana</a></li>
			<%
				} else if (session.getAttribute("role").toString().equals("Gost")) {
			%>
			<BR>
			<BR>
			<li class="nav-item"><a class="nav-link active" href="allReservation.jsp">Pregled
					mojih Rezervacija</a></li>
			<li class="nav-item"><a class="nav-link" href="comment.jsp">Pregled svih
					Komentara</a></li>

			<%
				}
			%>
		</ul>
	</div>
	<BR>
	<div class="container-fluid">
		<table class="table table-dark table-hover">
			<tr>
				<th>ID_Apartman</th>
				<th>Datum rezervacije</th>
				<th>Broj nocenja</th>
				<th>Ukupna cena</th>
				<th>Gost</th>
				<th>Status</th>
				<th>Poruka pri rezervaciji</th>

			</tr>
			<c:forEach var="post" items="${resultArray}" varStatus="statusInner">

				<tr class='clickable-row'>
				<tr class='clickable-row' data-href='url://'>

					<td><c:out value="${post.ID_Apartman}" /></td>
					<td><c:out value="${post.OrderDate}" /></td>
					<td><c:out value="${post.NumberOfNights}" /></td>
					<td><c:out value="${post.TotalPrice}" /></td>
					<td><c:out value="${post.Guest}" /></td>
					<td><c:out value="${post.Status}" /></td>
					<td><c:out value="${post.MessageReservation}" /></td>
					

				</tr>
			</c:forEach>
		</table>

	</div>
	</div>

	

		<script>
			$(function() {
				$("#navbar").load("view/navbar.jsp");
			});
		</script>
</body>
</html>







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