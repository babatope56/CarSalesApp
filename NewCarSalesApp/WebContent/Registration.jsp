<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.user.User" %>
<%@ page import="com.user.Car" %>
<!DOCTYPE html>
<html>
<head>

<%User user = (User) session.getAttribute("user"); %>
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
<title>Auto Sales</title>
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
	
	  
	<div style="margin-top: 100px">
	</div>
	<div style="width: 50px">
		
		<form class="container"  Servlet.: action="RegistrationServlet" method="post">
		<div class ="form-group">
			<label for="firstName">First Name</label>
				<input type="text" class="form-control" name="firstName" id="firstName" placeholder="First Name">
		</div>
		<div class="form-group">
			<label for="lastName">Last Name</label>
				<input type="text" class="form-control" name="lastName" id="lastName" placeholder = "Last Name">
		</div>
		
		<div class="form-group">
			<label for="email">Email Address</label>
				<input type="text" class="form-control" name="email" id="exampleInputEmail1" placeholder = "Email">
		</div>

		<div class="form-group">
			<label for="password">Password</label>
				<input type="password" class="form-control" name="password" id="password" placeholder = "Password">
		</div>
		<div class="form-group">
			<label for="phoneNumber">Phone Number</label>
				<input type="text" class="form-control" name="phoneNumber" id="phoneNumber" placeholder = "Phone Number">
	</div>
	
	<div>
					<button type="submit" class="btn btn-default" >Sign Up</button>
	
		</div>
	
		</form>
		</div>
		
		
		
</body>
</html>