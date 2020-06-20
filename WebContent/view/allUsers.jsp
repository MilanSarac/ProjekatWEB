<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<script src="javascript/jquery-3.4.1.js"></script>
<style>
table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}
</style>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div id="navbar"></div>
	<BR>
	<BR>
		
	<div class="row justify-content-md-center">
		<div class="col-8">
			<table style="width: 100%">
				<tr>
					<th>Ime</th>
					<th>Prezime</th>
					<th>Korisnicko Ime</th>
					
					
					
				</tr>
				<c:forEach var="post" items="${resultArray}" varStatus="statusInner">
					<tr >
						<td> <c:out value="${post.Name}" /> </td>
						<td> <c:out value="${post.SureName}" /> </td>
						<td> <c:out value="${post.Username}" /> </td> 						
					
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
	<script>
		$(function() {
			$("#navbar").load("view/navbar.jsp");
		});
</script>	
</body>
</html>