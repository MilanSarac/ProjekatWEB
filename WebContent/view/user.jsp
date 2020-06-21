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

<title>Korisnicka strana</title>
</head>
<body>
	<div id="navbar"></div>
	<BR>
	<BR>
	<div>
		<ul class="nav nav-pills">
			<li class="nav-item"><a class="nav-link  active" href="user.jsp">Korisnicki
					podaci</a></li>
			<li class="nav-item"><a class="nav-link" href="location.jsp">Dodavanje
					Lokacije A</a></li>
<<<<<<< HEAD
			<li class="nav-item"><a class="nav-link" href="address.jsp">Dodavanje
=======
								<li class="nav-item"><a class="nav-link" href="address.jsp">Dodavanje
>>>>>>> 5f07555b6f6e47accceec22cf80449bb387a50ff
					Adrese</a></li>

			<%
				String roleUser = session.getAttribute("role").toString();
				if (roleUser.equals("Admin")) {
			%>

			<BR>
<<<<<<< HEAD
					<li class="nav-item"><a class="nav-link" href="allUsers.jsp">Pregled
=======
			<li class="nav-item"><a class="nav-link" href="allUsers.jsp">Pregled
>>>>>>> 5f07555b6f6e47accceec22cf80449bb387a50ff
					Apartmana</a></li>
			<li class="nav-item"><a class="nav-link" href="allUsers.jsp">Modifikacija
					Apartmana</a></li>
			<li class="nav-item"><a class="nav-link" href="allUsers.jsp">Brisanje
					Apartmana</a></li>
			<li class="nav-item"><a class="nav-link" href="allUsers.jsp">Pregled
					Rezervacija</a></li>
			<li class="nav-item"><a class="nav-link" href="allUsers.jsp">Pregled
					svih Komentara</a></li>
<<<<<<< HEAD
			<li class="nav-item"><a class="nav-link " href="allUsers.jsp">Pregled
					svih Korisnika</a></li>
			<li class="nav-item"><a class="nav-link" href="amenities.jsp">Dodavanje
					Sadrzaja</a></li>
			<li class="nav-item"><a class="nav-link " href="allAmenities.jsp">Pregled
					svih Sadrzaja</a></li>
=======
>>>>>>> 5f07555b6f6e47accceec22cf80449bb387a50ff

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
<<<<<<< HEAD
		
				
=======
>>>>>>> 5f07555b6f6e47accceec22cf80449bb387a50ff
			<%
				}
			%>
		</ul>
	</div>
	<BR>

	<div class="row justify-content-md-center">
		<div class="col-8 offset-2">
			<form action="/WebProjekat/updateUser.jsp" method="post">
				<div class="form-group">
					<label for="Name">Name</label> <input type="text"
						class="form-control" name="Name"
						value="<c:out value="${result.Name}" />">

				</div>
				<div class="form-group">
					<label for="login-password">SureName</label> <input type="text"
						class="form-control" name="SureName"
						value="<c:out value="${result.SureName}" />">
				</div>
				<div class="form-group">
					<label for="login-password">Password</label> <input type="text"
						class="form-control" name="Password"
						value="<c:out value="${result.Password}" />">
<<<<<<< HEAD
				</div>
					<div class="form-group">
					<label for="Role">Role</label> <input type="text"
						class="form-control" name="Role"
						value="<c:out value="${result.Role}" />">
=======
>>>>>>> 5f07555b6f6e47accceec22cf80449bb387a50ff
				</div>


				<button type="submit" class="btn btn-primary" value="Update">Update</button>
			</form>

		</div>

	</div>


	<script>
		$(function() {
			$("#navbar").load("view/navbar.jsp");
		});
	</script>
</body>
</html>
