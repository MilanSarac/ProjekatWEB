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
<title>Pregled Komentara</title>
</head>
<body>
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
			<li class="nav-item"><a class="nav-link active" href="comment.jsp">Pregled
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
			<li class="nav-item"><a class="nav-link active" href="comment.jsp">Pregled
					Komentara Apartmana</a></li>
		
			<%
				} else if (session.getAttribute("role").toString().equals("Gost")) {
			%>
			<BR>
			<BR>
			<li class="nav-item"><a class="nav-link " href="allReservation.jsp">Pregled
					mojih Rezervacija</a></li>
			<li class="nav-item"><a class="nav-link active" href="comment.jsp">Pregled svih
					Komentara</a></li>


			<%
				}
			%>

		</ul>
	</div>
<div class="container-fluid">
		<table class="table table-dark table-hover">
								<tr>
									<th>Sender</th>
									<th>ReferedToApartment</th>
									<th>Rating</th>
									<th>Text</th>
									<th>Active</th>
								</tr>
					<c:forEach var="post" items="${allANComment}" varStatus="statusInner">
					

							<td><c:out value="${post.Sender}" /></td>
							<td><c:out value="${post.ReferedToApartment}" /></td>
							<td><c:out value="${post.Rating}" /></td>
							<td><c:out value="${post.Text}" /></td>
							<td><c:out value="${post.Active}" /></td>
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

<script>
		$(function() {
			$("#navbar").load("view/navbar.jsp");
		});
</script>
</body>
</html>