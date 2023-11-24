<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="admin-styles.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        *,
        *::before,
        *::after {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            padding: 0;
        }

        html {
            display: contents;
            font-family: 'Ubuntu', sans-serif;
            background-image: url('adminbg2.jpg');
            background-repeat: no-repeat;
            background-size: cover;
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
            margin: 0.75em 0;
            margin-right: 40px;
            background-color: rgb(28, 28, 75);
            padding: 8px 12px;
            border-radius: 12px;
        }

        .logo {
            margin-left: 30px;
        }

        .container {
            margin-top: 50px;
        }

        .item-image {
            margin-top: 15px;
        }

        .submit-btn {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="admin-nav">
        <div class="logo">
            <img class="logo" src="./images/logo.png" alt="profImage" height="40px">
        </div>
        <h1 class="title">Admin Dashboard</h1>
        <div class="nav-links">
            <h3 class="logout">Logout</h3>
        </div>
    </div>
    
    <%
		String itemNo = request.getParameter("itemNo");
		String itemName = request.getParameter("itemName");
		String description = request.getParameter("description");
		String itemImage = request.getParameter("itemImage");
		String price = request.getParameter("price");
	%>
	
	
    <div class="container">
        <form class="add-items-form" action="delete" method="post" id="items_form">
            <fieldset>
                <c:forEach var="item" items="${items}">
                    <c:set var="itemImage" value="${item.itemImage}" />
                    <c:out value="${item.itemImage}" />
                </c:forEach>
    
                <legend>Delete Item</legend>
    
                <div class="form-group">
                    <label for="itemNo">Item Number</label>
                    <input name="itemNo" id="itemNo" class="form-control" type="text" value="<%=itemNo%>" readonly>
                </div>
    
                <div class="form-group">
                    <label for="itemName">Item Name</label>
                    <input name="itemName" id="itemName" class="form-control" type="text" value="<%=itemName%>"readonly>
                </div>
    
                <div class="form-group">
                    <label for="description">Description</label>
                    <input name="description" id="description" class="form-control" type="text" value="<%=description%>"readonly>
                </div>
    
                <div class="form-group item-image">
                    <label for="itemImage">Image</label>
                    <input name="itemImage" id="itemImage" class="form-control" type="text" value="<%=itemImage%>"readonly>
 

                </div>
    
                <div class="form-group">
                    <label for="price">Price</label>
                    <input name="price" id="price" class="form-control" type="text" value="<%=price%>"readonly>
                </div>
    
                <div class="form-group submit-btn">
                	<button type="button" class="btn btn-secondary" onclick="history.back();">Back</button>
				    <button type="submit" class="btn btn-danger" id="deleteButton">Delete Item</button>
					<script>
					document.addEventListener("DOMContentLoaded", function() {
					  // Get a reference to the delete button
					  const deleteButton = document.getElementById("deleteButton");
					  // Add a click event listener to the delete button
					  deleteButton.addEventListener("click", function() {
					    // Display a confirmation dialog
					    const confirmation = confirm("Do you want to delete this item?");
					    if (confirmation) {
					      alert("Item deleted.");
					    }
					  });
					});
					</script>

				    
				</div>

            </fieldset>
        </form>
    </div>
    
</body>
</html>