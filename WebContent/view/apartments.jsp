<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap-grid.css">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<link rel="stylesheet"
		href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
		integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
		crossorigin="anonymous">
		<script src="javascript/jquery-3.4.1.jss"></script>
		<script src="bootstrap/js/bootstrap.js.min"></script>
		<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
						integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
						crossorigin="anonymous"></script>
						
					<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
						integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
						crossorigin="anonymous"></script>

</head>

<style>
.panel, .flip {
	padding: 5px;
	text-align: center;
	background-color: #f0f5ff;
	border: solid 1px #c3c3c3;
}

.input-group {
	width: 100%;
}
.input-group-addon {
	width: 45%;
	text-align: left;
}
.form-control {
	width: 55%;
}
.panel {
	display: none;
}
#info, #recenzija, #detalji {
	background-color: #f0f5ff;
}
#oglas, #rezervacija, #opis, #slika {
	border: solid 1px #c3c3c3;
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
			<li class="nav-item"><a class="nav-link" href="updateApartman.jsp">Modifikacija
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
			
			<li class="nav-item"><a class="nav-link" href="allReservation.jsp">Pregled
					Svojih Rezervacija</a></li>

			<li class="nav-item"><a class="nav-link" href="comment.jsp">Pregled svih
					Komentara</a></li>


			<%
				}
			%>
		</ul>
	</div>
	<div>
		<div class="row justify-content-md-center">

			<div class="col-8">
				<div class="row" id="info">
					<div class="col-sm-6" id="oglas" style="height: 600px;">
						Oglas Apartmana</br>
						</br>


						<h>Tip Apartmana:</h>
						<c:out value="${apartments.ID_Apartman}" />
						</br>

						<h>Broj Soba:</h>
						<c:out value="${apartments.Number_Rooms}" />
						</br>
						<h>Broj Gostiju:</h>
						<c:out value="${apartments.Number_Guests}" />
						</br>
						<h>Datum pocetak:</h>
						<c:out value="${apartments.Date_for_Rent_Start}" />
						</br>
						<h> Datum kraj:</h>
						<c:out value="${apartments.Date_for_Rent_End}" />
						</br>
						<h>Cena nocenja:</h>
						<c:out value="${apartments.Price_per_night}" />
						</br>
						<h>Domacin:</h>
						<c:out value="${apartments.Host}" />
						</br>
						<h>Geo Sirina:</h>
						<c:out value="${apartments.Latitude}" />
						</br>
						<h>Geo Duzina:</h>
						<c:out value="${apartments.Longitude}" />
						</br>
						<h>Ulica:</h>
						<c:out value="${apartments.Street}" />
						</br>
						<h>Ulicni Broj:</h>
						<c:out value="${apartments.Streetnumber}" />
						</br>
						<h>Mesto:</h>
						<c:out value="${apartments.Place}" />
						</br>
						<h>Postanski Broj:</h>
						<c:out value="${apartments.Zip_post}" />
						</br>
						<h>Sadrzaj:</h>
						<c:out value="${apartments.Sadrzaj}" />
						</br>
						</br>
						
					<%
						if (session.getAttribute("role") != null) {
							if (session.getAttribute("role").toString().equals("Gost")) {
					%>
					<form action="/WebProjekat/addComment.jsp" method="post">
					
							<div class="col-sm-8" style="background-color: #f0f5ff;">Ocenite Apartman (ocena od 1 do 5):
  							<input type="number"  name="Ratting" min="1" max="5"><br></div>
							<textarea name="Text"
								class="inputlook2 form-control" placeholder="Poruka za domacina"
								value="" style="height: 100px"></textarea>

							<input type="hidden" name="ID_Apartman"
				value="<c:out
								value="${apartments.ID_Apartman}" />">	
							
							<button type="submit" name="action" value="komentarA"
								class="btn-outline-success btn-sm btn-block "
								onclick="myFunctionA()">Komentarisi Apartman</button>
							<a href="/WebProjekat/" id="cancel" name="cancel"
								class="btn btn-secondary" onclick="myFunctionC()">Cancel</a>
							</br>
						</form>	
					</div>
					<div class="col-sm-6" id="rezervacija"
						style="height: 600px;">
						Kreiranje Rezervacije</br>
						</br>
						<form method="post">
							<input name="ID_Apartman" class="form-control" type="text"
								value="${apartments.ID_Apartman}" id="ID_Apartman"
								readonly="@(true)"> </br> <input name="Price_per_night"
								class="form-control" type="text"
								value="${apartments.Price_per_night}" id="Price_per_night"
								readonly="@(true)"> </br> <input name="Date_for_Rent_Start"
								class="form-control" type="date"
								value="${apartments.Date_for_Rent_Start}"
								id="Date_for_Rent_Start" data-date=""> </br> <input
								name="Date_for_Rent_End" class="form-control" type="date"
								value="${apartments.Date_for_Rent_End}" id="Date_for_Rent_End"
								data-date=""> </br>
							<textarea name="MessageReservation"
								class="inputlook2 form-control" placeholder="Poruka za domacina"
								value="" style="height: 130px"></textarea>
							</br>

							<button type="submit" name="action" value="rezervacijaA"
								class="btn-outline-success btn-sm btn-block "
								onclick="myFunctionA()">Rezervisi Apartman</button>
							<a href="/WebProjekat/" id="cancel" name="cancel"
								class="btn btn-secondary" onclick="myFunctionC()">Cancel</a>
								</form>
					</div>
				
				</div>
			
			</div>

					<%
						}
						}
					%>

		<script>
		$(function() {
			$("#navbar").load("view/navbar.jsp");
		});
	</script>
					<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
					<script type="text/javascript">
	$(document).ready(function() {
		$(".flip").click(function() {
			$(this).next().find(".panel").slideToggle("slow");

		});
	});
</script>

<script>
if ($_POST['action'] == 'komentarA') {
    //action for update here
} else if ($_POST['action'] == 'rezervacijaA') {
    //action for delete
} else {
    //invalid action!
}
</script>
					<script>
		function myFunctionA() {
			alert("Uspesno ste rezervisali Apartman ");
		}
	</script>
					<script>
		function myFunctionC() {
			alert("Rezervacija nije uspela! ");
		}
	</script>
					<script>
		function myFunction1() {
			alert("Poslali ste poruku i dodelili ocenu Apartmanu!");
		}
	</script>


<script> 
		$(function(){
  		$("#navbar").load("view/navbar.jsp");
  		
 
        });
</script>
</body>
</html>