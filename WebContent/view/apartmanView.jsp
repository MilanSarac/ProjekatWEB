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

<title>Insert title here</title>

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
	<form method="post">
<div class="container my-5">

  <section>
    
    <div class="card mb-4">
      
      <div class="row">

        <div class="col-md-6">
				

<img class="img-fluid rounded-left" src="https://mdbootstrap.com/img/Photos/Vertical/7.jpg" alt="project image">
        </div>

        <div class="col-md-6 p-5 align-self-center">
        
        <ul class="list-unstyled font-small mt-5 mb-0">

          <p class="text-uppercase mb-2"><strong>Tip Apartmana</strong></p>
          <p class="text-muted"><c:out value="${resultArray.apartmentObject.Type}" /></p>

            <li>
              <p class="text-uppercase mb-2"><strong>Broj Soba</strong></p>
              <p class="text-muted"><c:out value="${resultArray.apartmentObject.Number_Rooms}" /></p>
            </li>

            <li>
              <p class="text-uppercase mb-2"><strong>Broj gostiju</strong></p>
              <p class="text-muted"><c:out value="${resultArray.apartmentObject.Number_Guests}" /></p>
            </li>

            <li>
              <p class="text-uppercase mb-2"><strong>Datum pocetak</strong></p>
              <p class="text-muted"><c:out value="${resultArray.apartmentObject.Date_for_Rent_Start}" /></p>
            </li>

            <li>
              <p class="text-uppercase mb-2"><strong>Datum kraj</strong></p>
              <p class="text-muted"><c:out value="${resultArray.apartmentObject.Date_for_Rent_End}" /></p>
            </li>
            
             <li>
              <p class="text-uppercase mb-2"><strong>Domacin</strong></p>
             <p class="text-muted"><c:out value="${resultArray.apartmentObject.Host}" /></p>
            </li>

             <li>
              <p class="text-uppercase mb-2"><strong>Cena nocenja</strong></p>
             <p class="text-muted"><c:out value="${resultArray.apartmentObject.Price_per_night}" /></p>
            </li>

             <li>
              <p class="text-uppercase mb-2"><strong>Geo Sirina</strong></p>
            <p class="text-muted"><c:out value="${resultArray.apartmentObject.Latitude}" /></p>
            </li>
			 <li>
              <p class="text-uppercase mb-2"><strong>Geo Duzina</strong></p>
            <p class="text-muted"><c:out value="${resultArray.apartmentObject.Longitude}" /></p>
            </li>
			 <li>
              <p class="text-uppercase mb-2"><strong>Ulica</strong></p>
            <p class="text-muted"><c:out value="${resultArray.apartmentObject.Street}" /></p>
            </li>
 			<li>
              <p class="text-uppercase mb-2"><strong>Ulicni Broj</strong></p>
            <p class="text-muted"><c:out value="${resultArray.apartmentObject.Streetnumber}" /></p>
            </li>
			 <li>
              <p class="text-uppercase mb-2"><strong>Mesto</strong></p>
            <p class="text-muted"><c:out value="${resultArray.apartmentObject.Place}" /></p>
            </li>
			 <li>
              <p class="text-uppercase mb-2"><strong>Postanski Broj</strong></p>
            <p class="text-muted"><c:out value="${resultArray.apartmentObject.Zip_post}" /></p>
            </li>
			 <li>
              <p class="text-uppercase mb-2"><strong>Sadrzaj</strong></p>
            <p class="text-muted"><c:out value="${resultArray.Sadrzaj.Sadrzaj}" /></p>
            </li>


          </ul>

        </div>

      </div>

    </div>

  </section>

</div>
	</form>

</body>

	
	<script>
		$(function() {
			$("#navbar").load("view/navbar.jsp");
		});
	</script>
</body>
</html>