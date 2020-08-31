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

<title>Dodavanje Apartmana</title>

<style>
h1 {
	text-align: center;
}
</style>

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
		<br>
		<h1>Dodavanje Apartmana</h1>
			<br>
<body>
	<form method="post">
		<div class="row justify-content-md-center">

			<div class="col-8">
				<div class="row justify-content-md-center">

					<div class="col-2">
						<label>Broj ljudi:</label>

					</div>
					<div class="col-4">
						<input type="number" class="form-control" name="Number_Guests"
							placeholder="BrojLjudi">
					</div>
					<div class="col-2">
						<label>Cena:</label>

					</div>
					<div class="col-4">
						<input type="text" class="form-control" name="Price"
							placeholder="Cena">
					</div>
				</div>

				<br>
				<div class="row justify-content-md-center">
					<div class="col-2">
						<label>Broj Soba:</label>

					</div>
					<div class="col-4">
						<select name="brojsoba">
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
						</select>
					</div>
					<div class="col-2">
						<label>Tip apartmana:</label>

					</div>
					<div class="col-4">
						<select name="Type">
							<option>Apartman</option>
							<option>Soba</option>
						</select>
					</div>
				</div>
				<div class="row justify-content-md-center">

					<div class="col-2">
						<label>Datum od:</label>

					</div>
					<div class="col-4">
						<input name="Date_for_Rent_Start" class="span2 form-control"
							size="16" type="date" value="" id="Date_for_Rent_Start"
							data-date="">

					</div>
					<div class="col-2">
						<label>Datum do:</label>

					</div>
					<div class="col-4">
						<input name="Date_for_Rent_End" class="span2 form-control"
							size="16" type="date" value="" id="Date_for_Rent_End"
							data-date="">

					</div>
				</div>
				<br>

				<div class="row justify-content-md-center">

					<div class="col-2">
						<label>Vreme od:</label>

					</div>
					<div class="col-4">
						<input name="Check_in_time" class="span2 form-control" size="16"
							value="14:00" id="Check_in_time" type="time" required>

					</div>
					<div class="col-2">
						<label>Vreme do:</label>

					</div>
					<div class="col-4">
						<input name="Check_out_time" class="span2 form-control" size="16"
							type="time" value="22:00" id="Check_out_time" data-date=""
							max="22:00">

					</div>
				</div>
				<br>

				<div class="card">

					<div class="row justify-content-md-center">
						<div class="col-2">
							<label for="Latitude">Latitude</label>
						</div>
						<div class="col-4">
							<input type="text" class="form-control" name="Latitude"
								placeholder=" Enter Latitude">
						</div>

						<div class="col-2">
							<label for="Longitude">Longitude</label>
						</div>
						<div class="col-4">
							<input type="text" class="form-control" name="Longitude"
								placeholder=" Enter Longitude">
						</div>

						<div class="form-group">
							<label for="Street">Street</label> <input type="text"
								class="form-control" name="Street" placeholder=" Enter Street">
						</div>

						<div class="form-group">
							<label for="Streetnumber">Streetnumber</label> <input type="text"
								class="form-control" name="Streetnumber"
								placeholder=" Enter Streetnumber">
						</div>

						<div class="form-group">
							<label for="Place">Place</label> <input type="text"
								class="form-control" name="Place" placeholder=" Enter Place">
						</div>
						<div class="form-group">
							<label for="Zip_post">Zip_post</label> <input type="text"
								class="form-control" name="Zip_post"
								placeholder=" Enter Zip_post">
						</div>
					</div>
				</div>
				<br> <br>
				<div class="card">
					<div class="form-group">
						<div class="col-2">
							<label for="Amenities">Dodajte sadrzaj</label>
						</div>
						<c:forEach var="post" items="${Sadrzaj}" varStatus="statusInner">
							<input type="checkbox" name="xx_${post.Name_Amenities}">
							<c:out value="${post.Name_Amenities}" />
						</c:forEach>
					</div>
				</div>
				<br> <br> <br>

				<button type="submit value" onclick="get_selected_checkboxes_array"
					class="btn btn-success">Submit</button>
				<a href="/WebProjekat id=" cancel" name="cancel"
					class="btn btn-secondary">Cancel</a>
			</div></form>

</body>

	<script src="bootstrap/js/bootstrap.js.min"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>

	<script>
		$(function() {
			$("#navbar").load("view/navbar.jsp");
		});
	</script>
</body>
</html>