<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

<title>Login</title>
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
      
    <a href="login.jsp" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-user"></i> LOGIN</a>
    </a>
  </div>


  </div>
  <br><br>
  
<%
		String err = "";
		if (request.getAttribute("err") != null) {
			err = (String) request.getAttribute("err");
		}
	%>
	<!--/start-login-one-->
	<div class="login-01">
		<div class="one-login  hvr-float-shadow">
			<div class="one-login-head">
				<img src="images/top-lock.png" alt="" />
				<h1>LOGIN</h1>
				
				<span></span>
			</div>
			<form action="LoginServlet" method="post">
				<% String mess="";
				if (request.getAttribute("mess") != null){
					mess= (String) request.getAttribute("mess");%>
				<li style="color: red"><%=mess%></li>	
					<% }%>
				<li style="color: red"><%=err%></li>
				<p>Username</p>
				<label><input type="text" class="text" value=""
					name="username"><a href="#" class=" icon user"></a></label>
					<br>
				<p>Password</p>
				<label><input type="password" value=""
					name="password"><a href="#" class=" icon lock"></a></label>
				<div class="p-container">
					<label class="checkbox"><input type="checkbox"
						name="checkbox" checked><i></i>Remember Password</label>
					<h6>
						<a href="resetpassword.jsp">Forgot Password?</a>
					</h6>
					<div class="clear"></div>
				</div>
				<div class="submit">
					<input type="submit" value="SIGN IN">
				</div>
				
				<h5>
					Register Account?<a href="Registration.jsp"> Register </a>
				</h5>
			</form>
		</div>
	</div>

</body>
</html>