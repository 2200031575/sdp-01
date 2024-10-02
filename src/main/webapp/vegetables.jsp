<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vegetables</title>
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
            font-size: 1.2rem;
            color: #406343;
            margin: 10px 0;
        }

        .quantity {
            margin: 10px 0;
        }

        .buy-button {
            background-color: #5b8a72;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 5px;
            cursor: pointer;
            font-weight: bold;
            text-decoration: none;
            transition: background-color 0.3s;
        }

        .buy-button:hover {
            background-color: #406343;
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
            <h3>Tomatoes</h3>
            <img src="images/tomatoes.jpeg" alt="Tomatoes">
            <p>Fresh organic tomatoes picked daily.</p>
            <div class="price">Rs.30 per kg</div>
            <input type="number" class="quantity" min="1" placeholder="Enter kg">
            <a href="placeOrder.jsp?product=Tomatoes&price=2.50&quantity=" class="buy-button" onclick="updateQuantity(this)">Buy Now</a>
        </div>
        <div class="product-item">
            <h3>Potatoes</h3>
            <img src="images/potatoes.jpeg" alt="Potatoes">
            <p>Locally grown potatoes, perfect for every dish.</p>
            <div class="price">Rs.45 per kg</div>
            <input type="number" class="quantity" min="1" placeholder="Enter kg">
            <a href="placeOrder.jsp?product=Potatoes&price=1.80&quantity=" class="buy-button" onclick="updateQuantity(this)">Buy Now</a>
        </div>
        <div class="product-item">
            <h3>Carrots</h3>
            <img src="images/carrots.jpeg" alt="Carrots">
            <p>Crisp carrots, great for snacking and cooking.</p>
            <div class="price">$2.00 per kg</div>
            <input type="number" class="quantity" min="1" placeholder="Enter kg">
            <a href="placeOrder.jsp?product=Carrots&price=2.00&quantity=" class="buy-button" onclick="updateQuantity(this)">Buy Now</a>
        </div>
        <div class="product-item">
            <h3>Chili</h3>
            <img src="images/chili.jpeg" alt="Chili">
            <p>Spicy and fresh chilies to add heat to your dishes.</p>
            <div class="price">$3.00 per kg</div>
            <input type="number" class="quantity" min="1" placeholder="Enter kg">
            <a href="placeOrder.jsp?product=Chili&price=3.00&quantity=" class="buy-button" onclick="updateQuantity(this)">Buy Now</a>
        </div>
        <div class="product-item">
            <h3>Capsicum</h3>
            <img src="images/capsicum.jpeg" alt="Capsicum">
            <p>Crunchy capsicum, perfect for salads and stir-fries.</p>
            <div class="price">$2.50 per kg</div>
            <input type="number" class="quantity" min="1" placeholder="Enter kg">
            <a href="placeOrder.jsp?product=Capsicum&price=2.50&quantity=" class="buy-button" onclick="updateQuantity(this)">Buy Now</a>
        </div>
        <div class="product-item">
            <h3>Spinach</h3>
            <img src="images/spinach.jpeg" alt="Spinach">
            <p>Nutritious spinach, great for salads and cooking.</p>
            <div class="price">$2.20 per kg</div>
            <input type="number" class="quantity" min="1" placeholder="Enter kg">
            <a href="placeOrder.jsp?product=Spinach&price=2.20&quantity=" class="buy-button" onclick="updateQuantity(this)">Buy Now</a>
        </div>
        <div class="product-item">
            <h3>Radish</h3>
            <img src="images/radish.jpeg" alt="Radish">
            <p>Fresh radishes for a crunchy snack.</p>
            <div class="price">$1.50 per kg</div>
            <input type="number" class="quantity" min="1" placeholder="Enter kg">
            <a href="placeOrder.jsp?product=Radish&price=1.50&quantity=" class="buy-button" onclick="updateQuantity(this)">Buy Now</a>
        </div>
    </section>

    <footer>
        <p>&copy; 2024 Support the Farmers. All rights reserved.</p>
    </footer>

    <script>
        function updateQuantity(element) {
            const productContainer = element.closest('.product-item');
            const quantityInput = productContainer.querySelector('.quantity');
            const quantity = quantityInput.value;

            // Update the href of the buy button with the selected quantity
            const baseUrl = element.href.split('?')[0];
            const params = new URLSearchParams(element.href.split('?')[1]);
            params.set('quantity', quantity); // Set the quantity in the URL parameters

            element.href = baseUrl + '?' + params.toString();
        }
    </script>

</body>
</html>
