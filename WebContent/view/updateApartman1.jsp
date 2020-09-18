</html><%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>       
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="bootstrap/css/bootstrap-grid.css">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<title>Insert title here</title>
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
			<li class="nav-item"><a class="nav-link" href="activeApartmans.jsp">Pregled
					Svih Apartmana</a></li>
	<li class="nav-item"><a class="nav-link active" href="updateApartman1.jsp">Modifikacija
					Apartmana</a></li>
			<li class="nav-item"><a class="nav-link " href="brisanjeApartmana.jsp">Brisanje
					Apartmana</a></li>
			<li class="nav-item"><a class="nav-link " href="addAmenities.jsp">Dodavanje
					Sadrzaja</a></li>
			<li class="nav-item"><a class="nav-link active" href="updateAmenities1.jsp">Pregled i Izmene Sadrzaja</a></li>
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
			<li class="nav-item"><a class="nav-link" href="userApartmanReservation.jsp">Pregled
					svih korisnika sa rezervacijom</a></li>
			<li class="nav-item"><a class="nav-link"
				href="activeApartmans.jsp">Aktivni apartmani</a></li>
			<li class="nav-item"><a class="nav-link"
				href=activeNOApartman.jsp>Neaktivni Apartmani</a></li>
			<li class="nav-item"><a class="nav-link active" href="updateApartman1.jsp">Izmena
					podataka Apartmana</a></li>
			<li class="nav-item"><a class="nav-link" href="addApartmans.jsp">Dodavanje
					Novog Apartmana</a></li>
			<li class="nav-item"><a class="nav-link" href="brisanjeApartmana.jsp">Brisanje
					Apartmana</a></li>
			<li class="nav-item"><a class="nav-link " href="allReservation.jsp">Pregled
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
<br>
<div class="container">
		<table class="table table-dark table-hover">
				<tr>
					<th>ID_Apartman</th>
					<th>Number_Rooms</th>
					<th>Pomocna</th>
					<th>Funkcija</th>
				</tr>
				<c:forEach var="post" items="${allAmenities}" varStatus="statusInner">
					<tr class="clickable-row">
						<td> <c:out value="${post.ID_Apartman}" /> </td>
							<td> <c:out value="${post.Number_Rooms}" /> </td>
						
						<td> <a href="/WebProjekat/updateApartman.jsp?name=<c:out value="${post.ID_Apartman}" />" class="btn btn-default"><p style="color:white;">Izmeni sadrzaj</p></a></td> 
						<td> <a href="/WebProjekat/deleteApartman.jsp?name=<c:out value="${post.ID_Apartman}" />" onclick="myFunction()" class="btn btn-default"><p style="color:white;">Obrisi sadrzaj</p></a></td> 
				</c:forEach>
			</table>
		</div>
	</div>
<script src="javascript/jquery-3.4.1.js"></script>	
<script>
function myFunction() {
  alert("Uspesno ste obrisali sadrzaj");
}
</script>
<script>
		$(function() {
			$("#navbar").load("view/navbar.jsp");
		});
</script>		
</body>
</html>