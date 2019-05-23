<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
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

<title>Search Result</title>
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

<c:if test="${found!=null}"> 
<c:choose> 

  <c:when test="${found.size()>0}">
  <p> Here are the available used cars:</p> 
 
  <table class="table table-bordered">
<tr>

<th>Photo</th>
<th>Manufacturer</th>
<th>Year</th>
<th>Mileage</th>
<th>Price</th>
<th>Body Type</th>
</tr>
<tbody>
<c:forEach items="${found}" var="myCar">
<tr>
<td><img border="0" src="/Users/babatopeayelabola/Documents/bmw 2019.jpg"
      width="304" height="228"><button href="Transaction.jsp" class="btn btn-lg btn-primary btn-block" type="submit">Buy Now</button></td>
<td><c:out value="${myCar.manufacturer}"/></td>
<td><c:out value="${myCar.year} "/></td>
<td><c:out value="${myCar.mileage}"/></td>
<td><c:out value="${myCar.price}"/></td>
<td><c:out value="${myCar.bodyType}"/></td>
<td><c:out value="${myCar.discountDate}"/></td>
</tr>
</c:forEach>
</tbody>
	

</table>
</c:when>
  <c:otherwise> <p>No Cars Found in System </p>
  </c:otherwise>
</c:choose>	
 
</c:if>
</body>
</html>