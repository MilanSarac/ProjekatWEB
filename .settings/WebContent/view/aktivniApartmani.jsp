<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
	
	<div>
		<ul class="nav nav-pills">
			<li class="nav-item"><a class="nav-link" href="user.jsp">Korisnicki
					podaci</a></li>
			<li class="nav-item"><a class="nav-link" href="apartmani.jsp">Pre
					A</a></li>

			<%
				String roleUser = session.getAttribute("role").toString();
				if (roleUser.equals("admin")) {
			%>

			<BR>
			<li class="nav-item"><a class="nav-link"
				href="view/apartmani.jsp">Apartmani1</a></li>

			<%
				} else if (session.getAttribute("role").toString().equals("Domacin")) {
			%>
			<BR>
			<BR>
			<li class="nav-item"><a class="nav-link active"
				href="aktivniApartmani.jsp">Aktivni apartmani</a></li>
			<li class="nav-item"><a class="nav-link"
				href="view/location.jsp">Neaktivni Apartmani</a></li>
			<li class="nav-item"><a class="nav-link" href="location.jsp">Izmena
					podataka</a></li>
			<li class="nav-item"><a class="nav-link" href="location.jsp">Dodavanje
					Novog Apartmana</a></li>
			<li class="nav-item"><a class="nav-link" href="location.jsp">Pregled
					Rezervacija Apartmana</a></li>
			<li class="nav-item"><a class="nav-link" href="location.jsp">Pregled
					Komentara Apartmana</a></li>
			<li class="nav-item"><a class="nav-link" href="location.jsp">Preraga</a></li>
			<%
				} else if (session.getAttribute("role").toString().equals("Gost")) {
			%>
			<BR>
			<BR>
			<li class="nav-item"><a class="nav-link" href="apartmani.jsp">Apartmani1</a></li>
			<%}%>
		</ul>
	</div>
	<BR>
</body>
</html>