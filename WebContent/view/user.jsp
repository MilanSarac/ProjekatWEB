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

		
			<%
				String roleUser = session.getAttribute("role").toString();
				if (roleUser.equals("Admin")) {
			%>


			<BR>
			<li class="nav-item"><a class="nav-link " href="allUsers.jsp">Pretraga i Pregled 
					Korisnika</a></li>
			<li class="nav-item"><a class="nav-link" href="activeApartmans.jsp">Pregled
					Svih Apartmana</a></li>
			<li class="nav-item"><a class="nav-link" href="updateApartman1.jsp">Modifikacija
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
			<li class="nav-item"><a class="nav-link" href="allReservation.jsp">Pregled
					Rezervacija Apartmana</a></li>
			<li class="nav-item"><a class="nav-link" href="comment.jsp">Pregled
					Komentara Apartmana</a></li>
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
	<BR>

	<div class="row justify-content-md-center">
		<div class="col-8 offset-2">
			<form action="/WebProjekat/updateUser.jsp" method="post">
				<div class="form-group">
					<label for="Username">Jedinstveno Ime</label> <input type="text"
						class="form-control" name="Username"
						value="<c:out value="${result.Username}"  />" readonly="@(true)">
				</div>
				<div class="form-group">
					<label for="Role">Uloga</label> <input type="text"
						class="form-control" name="Role"
						value="<c:out value="${result.Role}" />"readonly="@(true)">
				</div>
				<div class="form-group">
					<label for="login-password">Ime</label> <input type="text"
						class="form-control" name="Name" 
						value="<c:out  value="${result.Name}" />"required>
				</div>
				<div class="form-group">
					<label for="login-password">Prezime</label> <input type="text"
						class="form-control" name="SureName"
						value="<c:out value="${result.SureName}" />"required>
				</div>
				<div class="form-group">
					<label for="login-password">Lozinka</label> <input type="text"
						class="form-control" name="Password" id="password" 
						value="<c:out value="${result.Password}" />"required>
				</div>
				<div class="form-group">
					<label for="login-password">Kontrola Lozinke</label> <input type="text"
						class="form-control" name="PasswordControl" id="Cpassword"
						value="<c:out value="${result.PasswordControl}" />"required>
				</div>
				


				<button type="submit" onclick="passwordMatch()" class="btn btn-primary" value="Update">Obnovite podatke</button>
			</form>

		</div>

	</div>
<script>
					function passwordMatch() {
						var text = document.getElementById("password");
						var text = document.getElementById("Cpassword");
						if (password.value != Cpassword.value) {
							Cpassword
									.setCustomValidity("Passwords Don't Match");
						} else {
							Cpassword.setCustomValidity('');
							alert("Uspesno ste izmenili podatke");
						}
						
					}
</script>

	<script>
		$(function() {
			$("#navbar").load("view/navbar.jsp");
		});
	</script>
</body>
</html>