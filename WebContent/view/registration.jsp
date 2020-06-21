<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<<<<<<< HEAD
=======

>>>>>>> 5f07555b6f6e47accceec22cf80449bb387a50ff
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<<<<<<< HEAD
<script src="javascript/jquery-3.4.1.js"></script>
<title>Registation form</title>
<style>
h1 {
	text-align: center;
}
</style>
</head>
<body>
	<h1>Registracija korisnika</h1>
	<div class="row justify-content-md-center">
		<div class="col-8 offset-2">
			<form method="post">
				<div class="form-group">
					<label for="Username">Username</label> <input type="text"
						class="form-control" name="Username" placeholder=" Enter Username">
				</div>
				<div class="form-group">
					<label for="Name">Name</label> <input type="text"
						class="form-control" name="Name" placeholder=" Enter Name">
				</div>
				<div class="form-group">
					<label for="SureName">SureName</label> <input type="text"
						class="form-control" name="SureName" placeholder=" Enter SureName">
				</div>
				<div class="form-group">
					<input type="radio" id="male" name="Male" value="Male"> <label
						for="male">Male</label><br> <input type="radio" id="female"
						name="Male" value="Female"> <label for="female">Female</label><br>
				</div>
				<div class="form-group">
					<label for="Password">Password</label> <input type="password"
						id="password" class="form-control" name="Password"
						placeholder=" Enter Password">
				</div>
				<div class="form-group">
					<label for="PasswordControl">Password Control</label> <input
						type="password" id="Cpassword" class="form-control"
						name="PasswordControl" placeholder="RE-Enter Password">
				</div>
				<div class="form-group">
					<input type="submit" value="Create" onclick="passwordMatch()"
						class="btn btn-success" /> <a href="/WebProjekat/" id="cancel"
						name="cancel" class="btn btn-secondary">Cancel</a>
=======
	<script src="javascript/jquery-3.4.1.js"></script>
<title>Registation form</title>
</head>
<body>

<h1>Registracija korisnika</h1>
 	<div class="row justify-content-md-center">
		<div class="col-8 offset-2">
		<form method="post">
		<div class ="form-group">
			<label for = "Username">Username</label>
			<input type="text" class ="form-control" name ="Username"
			placeholder=" Enter Username" >
		</div>
		<div class ="form-group">
			<label for = "Name">Name</label>
			<input type="text" class ="form-control" name = "Name"
			placeholder= " Enter Name" >
		</div>
		<div class ="form-group">
			<label for = "SureName">SureName</label>
			<input type="text" class ="form-control" name = "SureName"
			placeholder= " Enter SureName" >
		</div>
		<div class ="form-group">
			<input type="radio" id="male" name="Male" value="Male">
		  <label for="male">Male</label><br>
		  <input type="radio" id="female" name="Male" value="Female">
		  <label for="female">Female</label><br>
				</div>
		<div class ="form-group">
			<label for = "Password">Password</label>
			<input type="password"  id="password"  class ="form-control" name = "Password"
			placeholder=" Enter Password" >
		</div>
			<div class ="form-group">
			<label for = "PasswordControl">Password Control</label>
			<input type="password"  id="Cpassword"  class ="form-control" name = "PasswordControl"
			placeholder="RE-Enter Password" >
		</div>
			<div class="form-group">
					<input type="submit" value="Create" onclick="passwordMatch()"  class="btn btn-success" />
					<a href="/WebProjekat/" id="cancel" name="cancel" class="btn btn-secondary">Cancel</a>
>>>>>>> 5f07555b6f6e47accceec22cf80449bb387a50ff
				</div>

				<script>
					function passwordMatch() {
						var text = document.getElementById("password");
						var text = document.getElementById("Cpassword");
						if (password.value != Cpassword.value) {
							Cpassword
									.setCustomValidity("Passwords Don't Match");
						} else {
							Cpassword.setCustomValidity('');
						}
					}
				</script>
</body>
</html>