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
<style>
table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}
</style>
</head>
<body>
	<div id="navbar"></div>
	<div class="container-fluid">
		<div id="content">
		
		<br>
		<br>
		<br>

	<div class="row justify-content-md-center">
	
		<div class="col-11">
			<table style="width:100%">
				<tr>
					<th>Tip Apartmana</th>
					<th>Broj Soba</th>
					<th>Broj gostiju</th>
					<th>Datum izdavanja pocetak</th>
					<th>Datum izdavanja kraj</th>
					<th>Cena izdavanja</th>
					<th>Geo Sirina</th>
					<th>Geo Duzina</th>
					<th>Ulica</th>
					<th>Broj</th>
					<th>Mesto</th>
					<th>Postanski broj</th>
					<th>Sadrzaj Apartmana</th>
					
				</tr>
			</table>
		</div>

	<script src="javascript/jquery-3.4.1.js"></script>
	<script> 
		$(function(){
  		$("#navbar").load("view/navbar.jsp");
        });
</script>
</body>
</html>