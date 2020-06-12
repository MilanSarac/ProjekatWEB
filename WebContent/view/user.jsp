<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Korisnicka strana</title>
</head>
<body>
<div id ="navbar"></div>
<div>
<ul class= "nav nav-pils nav-fill">
<li class= "nav-item"><a class="nav-link active" href ="user.jsp">Korisnicki podaci</a></li>
<li class= "nav-item"><a class="nav-link" href="location.jsp"></a></li>

<%
			String roleUser=session.getAttribute("role").toString();
			if(roleUser.equals("admin")){
%>
<li class="nav-item"><a class="nav-link" href="apartmani.jsp">Apartmani1</a></li>
<li class="nav-item"><a class="nav-link" href="Spiskapartmani.jsp">SpisakApartmani</a></li>


<%}%>
</ul>
</div>
</body>
</html>