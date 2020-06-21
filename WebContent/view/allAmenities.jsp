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
<title>Adminov Pregled Sadrzaja</title>
</head>
<body>
	<div id="navbar"></div>
	<BR>
	<BR>
	<div>
		<ul class="nav nav-pills">
		<li class="nav-item"><a class="nav-link " href="user.jsp">Korisnicki
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
			<li class="nav-item"><a class="nav-link active" href="allAmenities.jsp">Pregled
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
			<li class="nav-item"><a class="nav-link" href="comment.jsp">Pregled
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

	<div class="container">
 <table class="table table-dark table-hover">
				<tr>
					<th>ID_Amenities</th>
					<th>Tv</th>
					<th>AirConditioning</th>
					<th>Kitchen</th>
					<th>Elevator</th>
					<th>Parking</th>
					<th>Iron</th>
					<th>Wifi</th>
					<th>Washing</th>

				</tr>
				<c:forEach var="post" items="${resultArray}" varStatus="statusInner">
					<tr class='clickable-row' >
						<td> <c:out value="${post.ID_Amenities}" /> </td>
						<td> <c:out value="${post.Tv}" /> </td>
						<td> <c:out value="${post.AirConditioning}" /> </td> 		
						<td> <c:out value="${post.Kitchen}" /> </td>
						<td> <c:out value="${post.Elevator}" /> </td> 				
						<td> <c:out value="${post.Parking}" /> </td>
						<td> <c:out value="${post.Iron}" /> </td> 				
						<td> <c:out value="${post.Wifi}" /> </td>
						<td> <c:out value="${post.Washing}" /> </td>
					</tr>
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