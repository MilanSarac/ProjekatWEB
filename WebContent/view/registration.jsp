<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Registation form</title>
<!-- Bootstrap CSS -->
<link rel= "stylesheet" href="bootstrap/css/bootstrap-grid.css">
<link rel= "stylesheet" href="bootstrap/css/bootstrap.min.css">
</head>
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: white;
}
.btn{
  background-color: #4CAF50;
  color: white;
  padding: 16px 10px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}
.container{
  width: 400px;
  height: 100px;  
  padding: 50px;

}

</style>
<body>

<div class="container">


<h1>Registracija korisnika</h1>
  <div class= "col-5">
		<form method="post">
		<div class ="form-group">
			<label for = "Username">Username</label>
			<input type="text" class ="form-control" name = "Username"
			placeholder=" Enter Username" required>
		</div>
		
		<div class ="form-group">
			<label for = "Name">Name</label>
			<input type="text" class ="form-control" name = "Name"
			placeholder= " Enter Name" required>
		</div>
		<div class ="form-group">
			<label for = "SureName">SureName</label>
			<input type="text" class ="form-control" name = "SureName"
			placeholder= " Enter SureName" required>
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
			placeholder=" Enter Password" required>
		</div>
			<div class ="form-group">
			<label for = "PasswordControl">PasswordControl</label>
			<input type="password" class ="form-control" name = "PasswordControl"
			placeholder="RE-Enter Password" required>
		</div>
		<div class="form-group">
					<input type="submit" value="Create"  class="btn" />
					<a href="/WebProjekat/" id="cancel" name="cancel" class="btn">Cancel</a>
				</div>
		</form>
		</div>
	</div>
	
</body>
</html>
