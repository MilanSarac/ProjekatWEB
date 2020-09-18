<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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

<br>
	<div class="row justify-content-md-center">
		<div class="col-8">
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
					<th>Slika</th>
				</tr>
				<c:forEach var="post" items="${allUsersOrderedProdut}" varStatus="statusInner">
				<tr class="clickable-row" data-href="/WebProjekat/apartments.jsp?name=<c:out value="${post.ID_Apartman}" />">
					
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
					<td><c:out value="${post.Active}" /></td>
					<td> <a href="/WebProjekat/deliverAdvertiesment.jsp?name=<c:out value="${post.Id}" />" class="btn btn-default">Proizvod je dostavljen</a></td> 	
					</tr>
				</c:forEach>
			</table>
		</div>

  				
<script src="javascript/jquery-3.4.1.js"></script>	
<script>
		$(function() {
			$("#navbar").load("view/navbar.jsp");
		});
	</script>	
</body>
</html>