<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard | All Users</title>
    <style>
        *,
        *::before,
        *::after {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            color: black;
            font-family: 'Ubuntu', sans-serif;
            background-color: whitesmoke;
        }

        html {
            display: contents;
            font-family: 'Ubuntu', sans-serif;
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            background-image: url('adminbg2.jpg');
            background-repeat: no-repeat;
            background-size: cover;
            background-color: whitesmoke;
        }

        .admin-nav {
            background-color: rgb(0, 0, 67);
            padding: 4px;
            width: 100%;
            display: flex;
            align-items: center;
            justify-content: space-between; /* Center horizontally */
        }

        h1, h3 {
            color: white;
        }

        .title {
            font-size: 2em;
            margin: 0.125em 0;
        }

        .logout {
            margin: 10px 0;
            margin-right: 40px;
            background-color: rgb(28, 28, 75);
            padding: 8px 12px;
            border-radius: 12px;
            font-size: 16pt;
        }

        .buttons {
            display: flex;
        }

        .item-name, .item_price {
            color: black;
            margin-bottom: 0;
            font-size:16pt;
        }
        .item_price{
        	padding-bottom: 8px;
        } 

        .logo {
            margin-left: 30px;
        }

        .table-container {
            
            margin: 0 auto; /* Center the table horizontally */
            margin: 50px 0;
        }

		.itemdes {
		    font-family: 'Ubuntu', sans-serif;
		    font-size: 12pt;
		    margin-top: 0;
		}

        .table-row-admin {
		    background-color: white;
		    margin: 50px 0;
		}
		.adminDashnav:hover{
			text-decoration:none;
		}
		
		table {
        width: 70%;
        border-collapse: collapse;
        margin: 20px auto;
	    }
	
	    th, td {
	        border: 1px solid #ccc;
	        padding: 8px;
	        text-align: left;
	    }
	
	    th {
	        background-color: #333;
	        color: white;
	    }
	
	    tr:nth-child(even) {
	        background-color: #f2f2f2;
	    }
	
	    tr:nth-child(odd) {
	        background-color: #fff;
	    }

    </style>
</head>
<body >

<nav>
    <div class="admin-nav">
        <div class="logo">
            <img class="logo" src="./images/logo.png" alt="profImage" height="40px">
        </div>
			<a href="./admin-dash.jsp" class="adminDashnav"><h1 class="title">Admin
					Dashboard</h1></a>
			<div class="nav-links">
            <a href="" class="logoutBTN">
                <h3 class="logout">Logout</h3>
            </a>
        </div>
    </div>
</nav>

<h1 style="color: rgb(0, 0, 67); text-align:center; margin-top:50px;">All Users</h1>
	<table>
	<thead>
		<th class="tdHead">Customer ID</th>
		<th>Customer Name</th>
		<th>Customer Email</th>
		<th>Customer phone</th>
		<th>Customer user name</th>
		<th>Customer password</th>
	</thead>
	<c:forEach var="cus" items="${customer}">
	
	<c:set var="id" value="${cus.id}"/> 
    <c:set var="name" value="${cus.name}"/> 
    <c:set var="email" value="${cus.email}"/> 
    <c:set var="phone" value="${cus.phone}"/> 
    <c:set var="username" value="${cus.username}"/> 
    <c:set var="password" value="${cus.password}"/>
	
	
	<tr>
		<td>${cus.id}</td>
		<td>${cus.name}</td>
		<td>${cus.email}</td>
		<td>${cus.phone}</td>
		<td>${cus.username}</td>
		<td>${cus.password}</td>
	</tr>
	
	
	</c:forEach>
	</table>


</body>
</html>
