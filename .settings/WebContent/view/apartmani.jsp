  
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
<script src="javascript/jquery-3.4.1.js"></script>
<title>Dodavanje Apartmana</title>
</head>

<body>
<div id="navbar"></div>
	<BR>
	<BR>
	<h1>Dodavanje Apartmana</h1>
<div class="container">
<div class= "col-5">
		<form method="post">
        
		<div class ="form-group">
       <label for = "Type ">Tip Apartmana</label> 
<div class="col-lg-1" style="background-color: white;">
    	<select name="status">
    		<option>Soba</option>
    		<option>Ceo Apartman</option>
  		</select> 
    </div>

	<div class ="form-group">

<label for = "Number_Rooms">Broj Soba</label>
<div class="col-lg-1" style="background-color: white;">
    	<select name="status">
    		<option>1</option>
    		<option>2</option>
    		<option>3</option>
  		</select> 
    </div>

	<div class ="form-group"> 
<label for = "Number_Guests"> Broj gostiju </label>
			
		<div class="col-lg-1" style="background-color: white;">
    	<select name="status">
    		<option>1</option>
    		<option>2</option>
    		<option>3</option>
  		</select> 
    </div>
		
			<div class ="form-group"> 
<label for = "Lokacija Apartmana"> Lokacija Apartmana</label>
			<input type="text" class ="form-control" name = "Alocation" placeholder= " Alocation" >
		</div>

       <div class="row justify-content-md-center" >
  	<div class="col-lg-1" style="background-color: white;">
    	<label for="Date_for_Rent">Datum za izdavanje od:</label> 
    </div>
    <div class="col-lg-2" style="background-color: gray;">
    	<input name="OglasOd" class="span2 form-control" size="16" type="date" value="" id="oglas-start" data-date="">
    </div>
    
  	<div class="col-lg-1" style="background-color: gray;">
    	<label>Datum za izdavanje do:</label> 
    </div>
    <div class="col-lg-2" style="background-color: gray;">
    	<input name="OglasDo" class="span2 form-control" size="16" type="date" value="" id="end" data-date="">
    </div>    
        
<div class ="form-group"> 
<label for = "Avaliable_by_Date">Dostupni datumi</label>
			<input type="text" class ="form-control" name = "Avaliable_by_Date"
			placeholder= "Avaliable_by_Date" readonly class="form_datetime" >
            
		</div>
<div class ="form-group"> 
			<label for = "Host">Domacin</label>
			<input type="text" class ="form-control" name = "Host" placeholder= "Domacin" >
		</div>
<div class ="form-group"> 
			<label for = "Comments_visited"> Komentari posetilaca</label>
			<input type="text" class ="form-control" name = "Comments_visited"
			placeholder= "Komentari posetilaca" >
		</div>
<div class ="form-group"> 
			<label for = "Price_per_night">Cena po noci</label>
			<input type="text" class ="form-control" name = "Price_per_night" placeholder= "Cena po noci" >
		</div>
        
             <div class="row justify-content-md-center" >
  	<div class="col-lg-1" style="background-color: white;">
    	<label for="Check_in_time">Vreme za prijavu:</label> 
    </div>
    <div class="col-lg-2" style="background-color: white;">
    	<input name="OglasOd" class="span2 form-control" size="16" type="time" value="02:00 PM" id="oglas-start" data-time="">
    </div>
    
  	<div class="col-lg-1" style="background-color: white;">
    	<label for="Check_out_time">Vreme za odjavu:</label> 
    </div>
    <div class="col-lg-2" style="background-color: white;">
    	<input name="OglasDo" class="span2 form-control" size="16" type="time" value="10:00 AM)" id="end" data-time="">
    </div> 

<div class ="form-group"> 
	<div class ="form-group">
       <label for = "Type ">Status Apartmana</label> 
<div class="col-lg-1" style="background-color: white;">
    	<select name="status">
    		<option>Aktivan</option>
    		<option>Ne Aktivan</option>
  		</select> 
    </div>

 <div class ="form-group"> 
		<label for = "Amenities">Amenities</label>
			<input type="text" class ="form-control" name = "Amenities"
			placeholder= " Amenities" >
		</div>
											<div class="form-group">
					<input type="submit" value="Create"  class="btn" />
					<a href="/WebProjekat/" id="cancel" name="cancel" class="btn">Cancel</a>
				</div>
	<script>
		$(function() {
			$("#navbar").load("view/navbar.jsp");
		});
	</script>
</body>
</html>