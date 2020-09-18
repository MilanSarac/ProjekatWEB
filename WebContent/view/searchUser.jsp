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

	<br>
<br>
	<br>
	<br>
	<br>
	<br>


	
					<%
						if (session.getAttribute("role") != null) {
							String roleUser = session.getAttribute("role").toString();
							if (roleUser.equals("Admin")) {
								
								
								
								%>
				<div class="container-fluid">
					<table class="table table-dark table-hover">
						<tr>
							<th>Korisnicko Ime</th>
							<th>Ime</th>
							<th>Prezime</th>
							<th>Pol</th>
							<th>Uloga</th>
							<th>Sifra</th>
					
							<c:forEach var="post" items="${filter}" varStatus="statusInner">
						<tr class="clickable-row"
						data-href="/WebProjekat/apartments.jsp?name=<c:out value="${post.Name}" />">
						<td><c:out value="${post.Username}" /></td>
						<td><c:out value="${post.Name}" /></td>
						<td><c:out value="${post.SureName}" /></td>
						<td><c:out value="${post.Male}" /></td>
						<td><c:out value="${post.Role}" /></td>
						<td><c:out value="${post.Password}" /></td>
						
				</c:forEach>
					</table>				
				<%
					}
					}
				%>
							


				
				<%
							if (session.getAttribute("role") != null) {
									String roleUser = session.getAttribute("role").toString();
									if (roleUser.equals("Gost")) {
				%>
					<div class="container-fluid">
										<table class="table table-dark table-hover">
											<tr>
												<th>Korisnicko Ime</th>
												<th>Ime</th>
												<th>Prezime</th>
												<th>Pol</th>
												<th>Uloga</th>
											
						<c:forEach var="post" items="${filter}" varStatus="statusInner">
						<tr class="clickable-row"
						data-href="/WebProjekat/apartments.jsp?name=<c:out value="${post.Name}" />">
						<td><c:out value="${post.Username}" /></td>
						<td><c:out value="${post.Name}" /></td>
						<td><c:out value="${post.SureName}" /></td>
						<td><c:out value="${post.Male}" /></td>
						<td><c:out value="${post.Role}" /></td>
				</c:forEach>
							</table>
							<%
							}
							}
							%>
			<%
							if (session.getAttribute("role") != null) {
									String roleUser = session.getAttribute("role").toString();
									if (roleUser.equals("Domacin")) {
				%>
					<div class="container-fluid">
										<table class="table table-dark table-hover">
											<tr>
												<th>Korisnicko Ime</th>
												<th>Ime</th>
												<th>Prezime</th>
												<th>Pol</th>
												<th>Uloga</th>
											
						<c:forEach var="post" items="${filter}" varStatus="statusInner">
						<tr class="clickable-row"
						data-href="/WebProjekat/apartments.jsp?name=<c:out value="${post.Name}" />">
						<td><c:out value="${post.Username}" /></td>
						<td><c:out value="${post.Name}" /></td>
						<td><c:out value="${post.SureName}" /></td>
						<td><c:out value="${post.Male}" /></td>
						<td><c:out value="${post.Role}" /></td>
				</c:forEach>
							</table>
							<%
							}
							}
							%>
			
		
	</div>
	</div>
<script src="javascript/jquery-3.4.1.js"></script>		
<script>
	$(function(){
  	$("#pretragaKorisnika").load("view/userSearchBar.jsp");
	});
</script>
<script>
		$(function() {
			$("#navbar").load("view/navbar.jsp");
		});
	</script>

</body>
</html>