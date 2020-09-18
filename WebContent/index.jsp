<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="javascript/jquery-3.4.1.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
</head>
<style>
table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}
</style>
</head>
<body>

<br><br><br>
	<div id="navbar"></div>
	<div class="container-fluid">
		<div id="content">
			<form action="/WebProjekat/apartmanSearch.jsp">
				<br> <br>
				<div class="container-fluid">
					<div id="content">

								<div class="row">
									<div class="col-sm-2" style="background-color: #f0f5ff;">
								<label for="Date_for_Rent_Start">Datum od:</label>
									<input name="Date_for_Rent_Start" class="span2 form-control"
										size="16" type="date" value="" id="Date_for_Rent_Start"
										data-date=""></div>
								

								<div class="col-sm-2" style="background-color: #f0f5ff;">
								<label for="Date_for_Rent_End">Datum do:</label>
									<input name="Date_for_Rent_End" class="span2 form-control"
										size="16" type="date" value="" id="Date_for_Rent_End"
										data-date=""></div>
				
								<div class="col-sm-2" style="background-color: #f0f5ff;">
									<label>Cena od:</label>
									<input type="text" class="form-control"
										name="Price_per_nightMin" placeholder="Min"></div>
							
								<div class="col-sm-2" style="background-color: #f0f5ff;">
								<label>Cena do:</label>
									<input type="text" class="form-control"
										name="price_per_nightMAX" placeholder="Max"></div>

								<div class="col-sm-2" style="background-color: #f0f5ff;">
								<label>Soba od:</label>
									<input type="text" class="form-control" name="Number_RoomsMin"
										placeholder="Min"></div>
								
								
								<div class="col-sm-2" style="background-color: #f0f5ff;">
								<label>Soba do:</label>
									<input type="text" class="form-control" name="Number_RoomsMAX"
										placeholder="Max"></div>
				
							<div class="col-sm-2" style="background-color: #f0f5ff;">
								<label>Osoba od:</label>
									<input type="text" class="form-control" name="Number_GuestsMin"
										placeholder="Min"></div>

							<div class="col-sm-2" style="background-color: #f0f5ff;">
								<label>Osoba do:</label>
									<input type="text" class="form-control" name="Number_GuestsMAX"
										placeholder="Max"></div>
								

							<div class="col" style="background-color: #f0f5ff;">
								<label>Mesto</label><br>
								<select name="Place">						
									<c:forEach var="post" items="${allAd}" varStatus="statusInner">
								<<option selected><c:out value="" /></option>
								<<option selected><c:out value="${post}" /></option>
								</div>
									</c:forEach>
								</select>
							</div>

							<div class="container-fluid" style="background-color: #f0f5ff;">
								<input type="submit" value="Pretraga Apartmana"
									class="btn-outline-success btn-sm btn-block" />

								</nav>
							</div>
						</div>
						</div>
						<br>
					
						<div class="col-16">

							<table style="width: 100%">
								<tr>
									<th>ID_Apartman</th>
									<th>Tip Apartmana</th>
									<th>Broj Soba</th>
									<th>Broj gostiju</th>
									<th>Datum izdavanja pocetak</th>
									<th>Datum izdavanja kraj</th>
									<th>Domacin</th>
									<th>Cena izdavanja</th>
									<th>Geo Sirina</th>
									<th>Geo Duzina</th>
									<th>Ulica</th>
									<th>Broj</th>
									<th>Mesto</th>
									<th>Postanski broj</th>
									<th>Sadrzaj Apartmana</th>
									<th>Apartman Aktivan</th>
									
								</tr>
			<%
						if (session.getAttribute("role") != null) {
							String roleUser = session.getAttribute("role").toString();
							if (roleUser.equals("Gost")&& roleUser.equals("Admin")) {
				%>
				
					<%
						}
						}
					%>
								<c:forEach var="post" items="${allANApartments}"
									varStatus="statusInner">

									<td><c:out value="${post.ID_Apartman}" /></td>
									<td><c:out value="${post.Type}" /></td>
									<td><c:out value="${post.Number_Rooms}" /></td>
									<td><c:out value="${post.Number_Guests}" /></td>
									<td><c:out value="${post.Date_for_Rent_Start}" /></td>
									<td><c:out value="${post.Date_for_Rent_End}" /></td>
									<td><c:out value="${post.Host}" /></td>
									<td><c:out value="${post.Price_per_night}" /></td>
									<td><c:out value="${post.Latitude}" /></td>
									<td><c:out value="${post.Longitude}" /></td>
									<td><c:out value="${post.Street}" /></td>
									<td><c:out value="${post.Streetnumber}" /></td>
									<td><c:out value="${post.Place}" /></td>
									<td><c:out value="${post.Zip_post}" /></td>
									<td><c:out value="${post.Sadrzaj}" /></td>
									<td><c:out value="${post.Active}" /></td>
									
								
									</tr>
								</c:forEach>
							</table>
						</div>
					</div>
					<br> <br> <br> <br>


					<script> 
		$(function(){
  		$("#navbar").load("view/navbar.jsp");
  		
 
        });
</script></body>
</html>