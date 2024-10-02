<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Confirmation</title>
</head>
<body>
    <h2>Order Confirmation</h2>
    <%
        String product = request.getParameter("product");
        String quantity = request.getParameter("quantity");
    %>
    <p>Thank you for your order!</p>
    <p>Product: <strong><%= product %></strong></p>
    <p>Quantity: <strong><%= quantity %></strong> kg</p>

    <!-- You can add database logic here to save the order -->

    <a href="buyers-info.jsp">Go Back to Products</a>
</body>
</html>
