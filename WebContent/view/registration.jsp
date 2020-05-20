<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

		<form method="post">
		<div class ="form-group">
			<label for = "Username">Username</label>
			<input type="text" class ="form-control" name = "Username"
			placeholder="Username" required>
		</div>
		
		<div class ="form-group">
			<label for = "Name">Name</label>
			<input type="text" class ="form-control" name = "Name"
			placeholder= "Name" required>
		</div>
		<div class ="form-group">
			<label for = "SureName">SureName</label>
			<input type="text" class ="form-control" name = "SureName"
			placeholder= "SureName" required>
		</div>
		
		<div class ="form-group">
			<input type="radio" id="male" name="Male" value="Male">
		  <label for="male">Male</label><br>
		  <input type="radio" id="female" name="Female" value="Female">
		  <label for="female">Female</label><br>
				</div>
		<div class ="form-group">
			<label for = "Password">Password</label>
			<input type="password" class ="form-control" name = "Password"
			placeholder="Password" required>
		</div>
			<div class ="form-group">
			<label for = "PasswordControl">PasswordControl</label>
			<input type="password" class ="form-control" name = "PasswordControl"
			placeholder="PasswordControl" required>
		</div>
		<div class="form-group">
					<input type="submit" value="Create"  class="btn btn-success" />
					<a href="/WebProjekat/" id="cancel" name="cancel" class="btn btn-success">Cancel</a>
				</div>
</form>
		</div>
	</div>
</body>
</html>
