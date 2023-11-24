<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<head>
<meta charset="ISO-8859-1">
<title>ETech | Home</title>
<style>
*, *::before, *::after {
	box-sizing: border-box;
}

body {
	margin: 0;
	overflow: auto;
	font-family: 'Ubuntu', sans-serif;
}

html {
	display: contents;
	font-family: 'Ubuntu', sans-serif;
	box-sizing: border-box;
	margin: 0 0 0 0;
	padding: 0;
	background-image: url('adminbg2.jpg');
	background-repeat: no-repeat;
	background-size: cover;
	scroll-behavior: smooth;
}

.home-nav {
	background-color: rgb(0, 0, 67);
	width: 100%;
	display: flex;
	align-items: center;
	justify-content: space-between; /* Center horizontally */
	font-family: 'Ubuntu', sans-serif;
}

.nav2 {
	background-color: rgb(37, 37, 108);
	width: 100%;
	display: flex;
	align-items: center;
	justify-content: center; /* Center horizontally */
}

h1, h5 {
	color: white;
}

.title {
	font-size: 2em;
	margin: 0.125em 0;
}

.logout {
	margin: 0;
	background-color: rgb(28, 28, 75);
	padding: 4px 8px;
	border-radius: 12px;
}

.userprof, .logout-btn {
	margin: 0.75em 0;
	margin-right: 70px;
	background-color: rgb(28, 28, 75);
	padding: 0px 12px;
	border-radius: 12px;
	display: flex;
	align-items: center;
	align-content: center;
}

.userprof {
	margin-right: 15px;
}

.uname {
	margin: 10px 10px 10px 5px;
}

.logo {
	margin-left: 50px;
}

.nav-links {
	display: flex;
}

.logout-btn {
	align-items: center;
	align-content: center;
}

.buttons {
	display: flex;
}

/* Style the search box inside the navigation bar */
.topnav input[type=text] {
	float: right;
	padding: 6px;
	border: none;
	margin-top: 8px;
	margin-right: 5px;
	font-size: 17px;
	width: 550px;
	background-color: rgb(53, 53, 86);
	border-radius: 20px;
}

.nav-list2 {
	display: flex;
	text-decoration: none;
	margin: 10px 0;
}

.nav2links, .a1 {
	padding: 2px 0;
	color: white;
	text-decoration: none;
	list-style-type: none;
}

.a1:hover {
	padding: 2px 0;
	color: white;
	text-decoration: none;
	list-style-type: none;
}

.ourProducts {
	text-align: center;
	margin-top: 30px;
	font-family: 'Ubuntu', sans-serif;
}

.pill {
	height: 0px;
	border-radius: 2px;
	color: rgb(0, 0, 86);
	border: 3px solid currentColor;
	width: 27%;
	margin-bottom: 40px;
}

.usernameBTN {
	display: flex;
	align-items: center;
	align-content: center;
	text-decoration: none;
}

.siteAlinks {
	text-decoration: none;
	font-size: large;
	padding: 12px 30px;
	color: white;
}

.siteAlinks:hover {
	background-color: rgb(218, 88, 2);
	text-decoration: none;
	color: white;
}

.endform {
	background-color: rgb(0, 0, 67);
	align-items: center;
	align-content: center;
	color: white;
	padding-top: 4rem;
}

.container {
	margin-inline: auto;
	margin: 0 auto;
	width: min(90%, 70.5rem);
	
}

.split {
	display: flex;
	justify-content: space-evenly;
}

.list, .quickLinks {
	margin-left: 70px;
}

.footerTitle {
	margin-bottom: 30px;
}

.footerLogo {
	margin: 23px 0;
}
.cardsSet {
    width: 300px; /* Adjust to your preferred width */
    margin: 10px; /* Optional spacing between cards */
    background-color:white;
}

.card{
    margin: 20px;
    width:288.4px;
    box-sizing: border-box;
    background-color:white;
}
.row {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-evenly;
}
.cardsSet{
	margin:30px auto;
	width:328.4px;
	border-radius: 10px;
	box-sizing: border-box;
}
.card-img-center {
    display: block;
    margin: 0 auto;
    max-width: 288.4px; /* Optional: constrain the image width to fit its container */
    margin-left:-50px;
}
.btnBuy{
    text-decoration: none;
    font-size: 16pt;
    padding: 10px;
    color:white;
    border-radius: 10px;
}
.btnAdd{
	text-decoration: none;
    font-size: 16pt;
    padding: 10px;
    color:white;
    border-radius: 10px;
    margin-bottom:20px;
}
.card-body{
	margin:20px 0;
}
.btnSection{
	margin-bottom:50px;
}
.card-text{
font-size:14pt;
margin-top:10px;
}

 /* Style the form container */
   .search-form {
       text-align: center;
   }

   /* Style the text input */
   input[type="text"] {
       width: 350px;
       padding: 10px;
       border: 1px solid #ccc;
       border-radius: 20px;
       background-color: rgb(32, 32, 82);
       margin-right:10px;

   }

   /* Style the submit button */
   input[type="submit"] {
       background-color: rgb(235, 97, 6);
       color: white;
       padding: 10px 20px;
       border: none;
       border-radius: 20px;
       cursor: pointer;
   }



</style>

<nav>
	<div class="home-nav">
		<div class="logo">
			<img class="logo" src="./images/logo.png" alt="profImage"
				height="40px">

		</div>

		<form action="SearchServlet" method="GET">
		    <input type="text" name="searchQuery" placeholder="Search here">
		    <input type="submit" value="Search">
		</form>


		<div class="nav-links">
			<div class="userprof">
				<a href="" class="usernameBTN"> <img class="proficon"
					src="images/profIcon.png" alt="profImage" width="30px"
					height="30px">
					<h5 class="uname">Username</h5></a>
			</div>
			<div class="logout-btn">
				<a href="" class="logoutBTN">
					<h5 class="logout">Logout</h5>
				</a>
			</div>

		</div>
	</div>
	<div class="nav2">
		<ul class="nav-list2">
			<li class="nav2links"><a class="siteAlinks" href="#">Home</a></li>
			<li class="nav2links"><a class="siteAlinks" href="#products">Products</a></li>
			<li class="nav2links"><a class="siteAlinks" href="#">My
					orders</a></li>
			<li class="nav2links"><a class="siteAlinks" href="ReviewDash.jsp">Reviews</a></li>
			<li class="nav2links"><a class="siteAlinks" href="#formbox">Contact</a></li>
		</ul>
	</div>
</nav>


</head>
<body style="background-color: whitesmoke;">
	<img src="images/banner2.jpg" alt="Banner image" class="banner image"
		style="width: 100%;">

	<b><h3 class="ourProducts" style="font-size: 24pt;">Our Products</h3></b>
	<hr class="pill">
	
	<div class="container" id="products">
		<div class="row">
			<c:forEach var="item" items="${items}">
				<div class="cardsSet">
			    <div class="card">
			        <img src="images/${item.itemImage}" alt="Item Image" class="card-img-top" style="width: 288.4px;">
			        <div class="card-body">
			            <h5 class="card-title" style="color: black;">${item.itemName}</h5>
			            <p class="card-text">${item.description}</p>
			            <h6 class="card-text">Rs.${item.price}</h6>
			            <div class="btnSection">
			            <a href="#" class="btnBuy" style="margin-right: 20px; padding: 10px; background-color: rgb(3, 3, 126);">Buy Now</a>
			            <a href="#" class="btnAdd" style="padding: 10px; background-color: rgb(235, 97, 6); border-color: orange; color: white;">Add to Cart</a>
			            </div>
			        </div>
			    </div>
			</div>

			</c:forEach>
		</div>
	</div>
	<section class="endform" id="formbox">
		<div class="container">
			<div class="split">
				<div class="logoCont">
					<img class="footerLogo" src="images/logo.png" width="200px"
						alt="Logo">
					<h2>Do you want to become a seller?</h2>
					<p>Perfect! Contact our group members</p>
				</div>

				<div class="list">
					<h4 class="footerTitle">Group Mambers</h4>
					<ul>
						<li><a class="a1" href="#">De Silva M.B.H. IT22602732</a></li>
						<br>
						<li><a class="a1" href="#">Himansha L.M.H IT22601360</a></li>
						<br>
						<li><a class="a1" href="#">Rajapaksha R.M.D.L. IT22607096</a>
						</li>
						<br>
						<li><a class="a1" href="#">Sandamal R. T. IT22606860</a></li>
						<br>

					</ul>

				</div>
				<div class="quickLinks">
					<h4 class="footerTitle">Quick links</h4>
					<ul>
						<li><a class="a1" href="#">Home</a></li>
						<br>
						<li><a class="a1" href="#products">Products</a></li>
						<br>
						<li><a class="a1" href="#">My orders</a></li>
						<br>
						<li><a class="a1" href="#">Reviews</a></li>
						<br>

					</ul>
				</div>
			</div>
		</div>
	</section>


</body>
</html>