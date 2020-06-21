<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script src="javascript/jquery-3.4.1.js"></script>
<meta charset="ISO-8859-1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<div id="navbar"></div>
	<BR>
	<BR>
	<div class="container">
 <table class="table table-dark table-hover">
				<tr>
					<th>Ime</th>
					<th>Prezime</th>
					<th>Korisnicko Ime</th>
					
					
					
				</tr>
				<c:forEach var="post" items="${resultArray}" varStatus="statusInner">
					<tr class='clickable-row' data-href='url://'>
						<td> <c:out value="${post.Name}" /> </td>
						<td> <c:out value="${post.SureName}" /> </td>
						<td> <c:out value="${post.Username}" /> </td> 						
					
					</tr>
				</c:forEach>
			</table>
			
		</div>
	</div>
		<script>
		jQuery(document).ready(function($) {

		    $(".clickable-row").click(function() {

		        window.location = $(this).data("href");

		    });

		});	
		</script>
	<script>
		$(function() {
			$("#navbar").load("view/navbar.jsp");
		});
</script>	
</body>
</html>