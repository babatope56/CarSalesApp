<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.user.User"%>
    <%@ page import="com.user.Car"%>
    <% User user = (User)session.getAttribute("user"); %>
    <% Car car = (Car)session.getAttribute("car"); %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Lato", sans-serif;}
body, html {
  height: 100%;
  color: #777;
  line-height: 1.8;
}

/* Create a Parallax Effect */
.bgimg-1, .bgimg-2, .bgimg-3 {
  background-attachment: fixed;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}

/* First image (Logo. Full height) */
.bgimg-1 {
  background-image: url('/w3images/parallax1.jpg');
  min-height: 100%;
}

/* Second image (Portfolio) */
.bgimg-2 {
  background-image: url("/w3images/parallax2.jpg");
  min-height: 400px;
}

/* Third image (Contact) */
.bgimg-3 {
  background-image: url("/w3images/parallax3.jpg");
  min-height: 400px;
}

.w3-wide {letter-spacing: 10px;}
.w3-hover-opacity {cursor: pointer;}

/* Turn off parallax scrolling for tablets and phones */
@media only screen and (max-device-width: 1600px) {
  .bgimg-1, .bgimg-2, .bgimg-3 {
    background-attachment: scroll;
    min-height: 400px;
  }
}
</style>

<title>Sell Your Car</title>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
$(function(){
	$("#datepicker").datepicker();
});
</script>
</head>
<body>

<div class="w3-top">
  <div class="w3-bar" id="myNavbar">
    <a class="w3-bar-item w3-button w3-hover-black w3-hide-medium w3-hide-large w3-right" href="javascript:void(0);" onclick="toggleFunction()" title="Toggle Navigation Menu">
      <i class="fa fa-bars"></i>
    </a>
    <a href="Home.jsp" class="w3-bar-item w3-button">HOME</a>
    <a href="content.jsp" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-user"></i> Wanna Sell?</a>
    <a href="Search.jsp" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-th"></i> Search</a>
    
    <a href="Search.jsp" class="w3-bar-item w3-button w3-hide-small w3-right w3-hover-red">
      <i class="fa fa-search"></i>
    </a>
  </div>
  


  </div>
  
  <br><br>
  
  <div>
		<form class="container" action="CarServlet" method="post">
		<div class ="form-group">
		<Strong> Car Brand</Strong>
		<select class="form-control" name="manufacturer">
		<option value="BMW">BMW</option>
		<option value="Toyota">Toyota</option>
		<option value="Mercedes">Mercedes</option>
		<option value="GMC">GMC</option>
		<option value="Cadillac">Cadillac</option>
		<option value="Ferrari">Ferrari</option>
		<option value="Buick">Buick</option>
		<option value="Cheverolet">Cheverolet</option>
		<option value="Audi">Audi</option>
		<option value="Lexus">Lexus</option>
		
		</select>
		
		<br><br>
		
		<Strong> Body Type</Strong>
		<select class="form-control" name="bodyType">
		<option value="Sedan">Sedan</option>
		<option value="SUV">SUV</option>
		<option value="Estate Wagon">Estate Wagon</option>
		<option value="Convertible">Convertible</option>	
		</select>


		<div class ="form-group">
			<label for="year">Year</label>
				<input type="text" class="form-control" name="year" id="year" placeholder="Year">
		</div>
		<div class="form-group">
			<label for="price">Price</label>
				<input type="text" class="form-control" name="price" id="price" placeholder = "Price">
		</div>
		
		<div class="form-group">
			<label for="mileage">Mileage</label>
				<input type="text" class="form-control" name="mileage" id="mileage" placeholder = "Mileage">
		</div>
		
		<label for="Date">Date</label> 
					<input type="text" class="form-control" name="invDate" id="datepicker" placeholder="mm/dd/yyyy">
		</div>	
		
		<button type="submit">Add to Inventory</button>
		
		</form>
		</div>
</body>
</html>