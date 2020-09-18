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

<div class="container">
 <table class="table table-dark table-hover">
				<tr>
				<th>Domacin Apartmana</th>
					<th>Tip Apartmana</th>
					<th>Aktivan</th>
					<th>ID_Apartman</th>
				</tr>
				<c:forEach var="post" items="${allActiveApartments}" varStatus="statusInner">
				<td> <c:out value="${post.Host}" /> </td>
						<td> <c:out value="${post.Type}" /> </td>
					<td> <c:out value="${post.Active}" /> </td>
					<td> <c:out value="${post.ID_Apartman}" /> </td>
					<td> <a href="/WebProjekat/updateApartmans.jsp?name=<c:out value="${post.Type}" />" class="btn btn-default">Izmeni</a></td> 
						<td> <a href="/WebProjekat/deleteApartman.jsp?name=<c:out value="${post.ID_Apartman}" />" onclick="myFunction()" class="btn btn-default">Obrisi(Iskljuci)</a></td> 
					
					
					</tr>
				</c:forEach>
			</table>
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