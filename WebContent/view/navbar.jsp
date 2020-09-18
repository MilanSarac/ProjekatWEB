<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="javascript/jquery-3.4.1.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<body>
	<div id="header">
		<nav class="navbar navbar-expand-md navbar-dark bg-dark  fixed-top">
			<div
				class="navbar-collapse collapse w-100 order-1 order-md-0 dual-collapse2">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link"
						href="/WebProjekat/">Pocetna</a></li>
				</ul>
			</div>
			<div class="mx-auto order-0">
				<a class="navbar-brand mx-auto" href="/WebProjekat/">WebProjekat</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target=".dual-collapse2">
					<span class="navbar-toggler-icon" />
				</button>
			</div>
			<div class="navbar-collapse collapse w-100 order-3 dual-collapse2">
				<ul class="navbar-nav ml-auto">

					<%
						
						if (session.getAttribute("sesija") == null) {
							 
					%>

					<li class="nav-item"><a class="nav-link"
						href="registration.jsp">Registracija Novog Korisnika</a></li>
					<li class="nav-item"><a class="nav-link" href="login.jsp">Logovanje Korisnika</a>
					</li>
					<%
						
						} else {
					%>
			
					<li class="nav-item"><a class="nav-link active" href="user.jsp">Ulogovani Korisnik:  <%=session.getAttribute("sesija")%></a>
					</li>
					<li class="nav-item"><a class="nav-link" href="view/logout.jsp">Odjava Korisnika</a>

					</li>
					<%
						}
					%>
				</ul>
			</div>
		</nav>
	</div>
</html>