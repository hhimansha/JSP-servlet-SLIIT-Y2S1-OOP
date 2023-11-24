<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Dashboard</title>
<link rel="stylesheet" href="admin-styles.css">
<style>
	*,
*::before,
*::after{
    box-sizing: border-box;
}

body{
    margin: 0;
    color: black;
}

html{
    display: contents;
    font-family: 'Ubuntu', sans-serif;
    box-sizing: border-box;
    margin: 0 0 0 0 ;
    padding: 0;
    background-image: url('adminbg2.jpg');
    background-repeat: no-repeat;
    background-size: cover;
    background-color:whitesmoke;
}

.admin-nav{
    background-color: rgb(0, 0, 67);
    padding: 4px;
    width: 100%;
    display: flex;
    align-items: center;
    justify-content: space-between; /* Center horizontally */
}

h1,h3{
    color: white;
} 
.mngProdTxt{
	color: black;
}
.title{
    font-size: 2em;
    margin: 0.125em 0;
}

.logout{
    
    margin:10px 0;
    margin-right: 40px;
    background-color:  rgb(28, 28, 75);
    padding: 8px 12px;
    border-radius: 12px;
    font-size:16pt;
}

.item-name, .item_price{
	color: black;
	margin-bottom: 0;
}


.logo{
    margin-left: 30px;
}
.manage-prod-link, .orders-link, .users-link{
	    text-decoration: none;
	
}

.itemdes{
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12pt;
	margin-top: 0;
	
}

.table-row-admin{
    background-color: white;
    margin: 50px 0 ;
    
}

.manage_products, .orders, .users{
    border-radius: 20px;
    margin: 30px;
    padding : 10px 20px;
    background-color: white;
}
.manage_products:hover, .orders:hover, .users:hover{

    background-color: rgb(208, 208, 248);
}

.buttons{
	display: flex;
	align-items: center;
    justify-content: center;
    margin: 0 auto;
    margin-top: 150px;
    
}
	
</style>
<nav>
	<div class="admin-nav">
		<div class="logo">
            <img class="logo" src="./images/logo.png" alt="profImage" height="40px">
		</div>
		<h1 class="title">Admin Dashboard</h1>
		<div class="nav-links"><a href="" class="logoutBTN">
			<h3 class="logout">Logout</h3></a>
		</div>
	</div>
</nav>
</head>
<body >
<div class="buttons">
		<button class="manage_products">
			<a href="./add-items-form.jsp" class="manage-prod-link">
			<img class="mngProdIcon" src="./images/manageProd.png" alt="profImage" height="120px">
			<h1 class="mngProdTxt">Add Items</h1></a>
		</button>
		<button class="manage_products">
			<a href="./AdminViewServlet" class="manage-prod-link">
			<img class="mngProdIcon" src="./images/manage.png" alt="profImage" height="120px">
			<h1 class="mngProdTxt">Manage Items</h1></a>
		</button>
		<button class="orders">
			<a href="" class="orders-link">
			<img class="ordersIcon" src="./images/orders1.png" alt="profImage" height="120px">
			<h1 class="mngProdTxt">Active Orders</h1>
			</a>
		</button>
		<button class="users">
			<a href="./AllCusViewServlet" class="users-link">
			<img class="ordersIcon" src="./images/users.png" alt="profImage" height="120px">
			<h1 class="mngProdTxt">Website Users</h1>
			</a>
		</button>

	</div>


</body>
</html>
