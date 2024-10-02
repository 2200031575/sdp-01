<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Beverages</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            background-color: #f7f4f1;
        }

        nav {
            background-color: #406343;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 20px;
        }

        .nav-links {
            display: flex;
            gap: 15px; /* Space between links */
        }

        .nav-links a {
            color: white;
            text-align: center;
            padding: 16px 22px;
            text-decoration: none;
            font-weight: bold;
        }

        .nav-links a:hover {
            background-color: #2f4f33;
            color: #f2f2f2;
        }

        .nav-right {
            display: flex;
            gap: 15px; /* Space between login/register links */
        }

        .nav-right a {
            color: white;
            text-align: center;
            padding: 10px 15px;
            text-decoration: none;
            font-weight: bold;
        }

        .nav-right a:hover {
            background-color: #2f4f33;
            color: #f2f2f2;
        }

        .product-section {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            margin: 3rem auto;
            max-width: 1200px;
        }

        .product-item {
            background-color: #fff;
            border-radius: 12px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
            padding: 25px;
            width: 30%;
            margin-bottom: 20px;
            text-align: center;
        }

        .product-item h3 {
            color: #406343;
        }

        .product-item img {
            max-width: 100%;
            height: auto;
        }

        .price {
            font-weight: bold;
            margin: 10px 0;
        }

        .quantity {
            width: 80%;
            padding: 5px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .buy-button {
            background-color: #5b8a72;
            color: white;
            text-decoration: none;
            padding: 10px 15px;
            border-radius: 5px;
            cursor: pointer;
            font-weight: bold;
            display: inline-block;
            margin-top: 10px;
        }

        .buy-button:hover {
            background-color: #4a6f61;
        }

        footer {
            background-color: #5b8a72;
            color: white;
            text-align: center;
            padding: 1.5rem 0;
            margin-top: 3rem;
            font-size: 1rem;
        }
    </style>
</head>
<body>

    <nav>
        <div class="nav-links">
            <a href="index.jsp">Home</a>
            <a href="farmers-info.jsp">For Farmers</a>
            <a href="buyers-info.jsp">For Buyers</a>
            <a href="#admin">Admin</a>
            <a href="#contact">Contact Us</a>
        </div>
        <div class="nav-right">
            <a href="login.jsp">Login</a>
            <a href="register.jsp">Register</a>
        </div>
    </nav>

    <section class="product-section">
        <div class="product-item">
            <h3>Orange Juice</h3>
            <img src="images/orangejuice.jpeg" alt="Orange Juice">
            <p>Freshly squeezed orange juice.</p>
            <div class="price">$3.00 per liter</div>
            <input type="number" class="quantity" min="1" placeholder="Enter liters">
            <a href="placeOrder.jsp?product=OrangeJuice&price=3.00&quantity=" class="buy-button" onclick="updateQuantity(this)">Buy Now</a>
        </div>
        <div class="product-item">
            <h3>Apple Juice</h3>
            <img src="images/applejuice.jpeg" alt="Apple Juice">
            <p>Delicious apple juice made from fresh apples.</p>
            <div class="price">$2.50 per liter</div>
            <input type="number" class="quantity" min="1" placeholder="Enter liters">
            <a href="placeOrder.jsp?product=AppleJuice&price=2.50&quantity=" class="buy-button" onclick="updateQuantity(this)">Buy Now</a>
        </div>
        <div class="product-item">
            <h3>Pomegranate Juice</h3>
            <img src="images/pomegranatejuice.jpeg" alt="Pomegranate Juice">
            <p>Rich and refreshing pomegranate juice.</p>
            <div class="price">$4.00 per liter</div>
            <input type="number" class="quantity" min="1" placeholder="Enter liters">
            <a href="placeOrder.jsp?product=PomegranateJuice&price=4.00&quantity=" class="buy-button" onclick="updateQuantity(this)">Buy Now</a>
        </div>
        <div class="product-item">
            <h3>Grape Juice</h3>
            <img src="images/grapejuice.jpeg" alt="Grape Juice">
            <p>Sweet grape juice made from fresh grapes.</p>
            <div class="price">$2.80 per liter</div>
            <input type="number" class="quantity" min="1" placeholder="Enter liters">
            <a href="placeOrder.jsp?product=GrapeJuice&price=2.80&quantity=" class="buy-button" onclick="updateQuantity(this)">Buy Now</a>
        </div>
        
        
        <div class="product-item">
            <h3>Watermelon Juice</h3>
            <img src="images/watermelonjuice.jpeg" alt="Watermelon Juice">
            <p>Refreshing watermelon juice for hot days.</p>
            <div class="price">$2.00 per liter</div>
            <input type="number" class="quantity" min="1" placeholder="Enter liters">
            <a href="placeOrder.jsp?product=WatermelonJuice&price=2.00&quantity=" class="buy-button" onclick="updateQuantity(this)">Buy Now</a>
        </div>
        
        <div class="product-item">
            <h3>Mango Juice</h3>
            <img src="images/mangojuice.jpeg" alt="Mango Juice">
            <p>Sweet and tropical mango juice.</p>
            <div class="price">$3.00 per liter</div>
            <input type="number" class="quantity" min="1" placeholder="Enter liters">
            <a href="placeOrder.jsp?product=MangoJuice&price=3.00&quantity=" class="buy-button" onclick="updateQuantity(this)">Buy Now</a>
        </div>
    </section>

    <footer>
        <p>&copy; 2024 Support the Farmers. All rights reserved.</p>
    </footer>

    <script>
        function updateQuantity(link) {
            const quantityInput = link.previousElementSibling; // Get the input field before the link
            const quantity = quantityInput.value;
            const href = link.getAttribute('href');
            link.setAttribute('href', href + quantity); // Append quantity to the URL
        }
    </script>

</body>
</html>
