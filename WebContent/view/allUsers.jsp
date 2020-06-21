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
<<<<<<< HEAD
<title>Adminov Pregled korisnika</title>
=======
<title>Insert title here</title>
>>>>>>> 5f07555b6f6e47accceec22cf80449bb387a50ff
</head>
<body>
	<div id="navbar"></div>
	<BR>
	<BR>
	<div>
		<ul class="nav nav-pills">
		<li class="nav-item"><a class="nav-link" href="user.jsp">Korisnicki
					podaci</a></li>
			<li class="nav-item"><a class="nav-link " href="location.jsp">Dodavanje
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
			<li class="nav-item"><a class="nav-link active" href="allUsers.jsp">Pregled
					svih Korisnika</a></li>
			<li class="nav-item"><a class="nav-link" href="amenities.jsp">Dodavanje
					Sadrzaja</a></li>
			<li class="nav-item"><a class="nav-link " href="allAmenities.jsp">Pregled
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
<<<<<<< HEAD

=======
>>>>>>> 5f07555b6f6e47accceec22cf80449bb387a50ff
	<div class="container">
 <table class="table table-dark table-hover">
				<tr>
					<th>Ime</th>
					<th>Prezime</th>
					<th>Korisnicko Ime</th>
					<th>Pol</th>
					<th>Uloga</th>
					<th>Sifra</th>

				</tr>
				<c:forEach var="post" items="${resultArray}" varStatus="statusInner">
<<<<<<< HEAD
					<tr class='clickable-row' >
=======
					<tr class='clickable-row' data-href='url://'>
>>>>>>> 5f07555b6f6e47accceec22cf80449bb387a50ff
						<td> <c:out value="${post.Name}" /> </td>
						<td> <c:out value="${post.SureName}" /> </td>
						<td> <c:out value="${post.Username}" /> </td> 		
						<td> <c:out value="${post.Male}" /> </td>
						<td> <c:out value="${post.Role}" /> </td> 				
						<td> <c:out value="${post.Password}" /> </td>

					</tr>
				</c:forEach>
			</table>
			
		</div>
	</div>
<<<<<<< HEAD
<script src="javascript/jquery-3.4.1.js"></script>	
=======
		<script>
		jQuery(document).ready(function($) {

		    $(".clickable-row").click(function() {

		        window.location = $(this).data("href");

		    });

		});	
		</script>
>>>>>>> 5f07555b6f6e47accceec22cf80449bb387a50ff
	<script>
		$(function() {
			$("#navbar").load("view/navbar.jsp");
		});
</script>	
</body>
</html>