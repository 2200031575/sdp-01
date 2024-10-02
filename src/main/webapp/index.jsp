<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        /* General Styles */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            background-color: #f7f4f1;
        }

        /* Header */
        header {
            background-color: #5b8a72;
            color: white;
            padding: 1.5rem;
            text-align: center;
        }

        header h1 {
            margin: 0;
            font-size: 3rem;
        }

        header p {
            margin-top: 0.5rem;
            font-size: 1.2rem;
        }

        /* Navigation Bar */
        nav {
            background-color: #406343;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 20px;
        }

        nav .nav-links {
            display: flex;
        }

        nav a {
            display: block;
            color: white;
            text-align: center;
            padding: 16px 22px;
            text-decoration: none;
            font-weight: bold;
        }

        nav a:hover {
            background-color: #2f4f33; /* Darker shade for hover */
            color: #f2f2f2;
        }

        /* Right Section for Login and Register */
        .nav-right {
            display: flex;
        }

        .nav-right a {
            padding: 16px 22px;
        }

        /* Banner Section */
        .banner {
            background-image: url('images/home.jpg'); /* Replace with real image URL */
            background-size: cover;
            background-position: center;
            height: 550px;
            color: white;
            text-align: center;
            padding-top: 150px;
            background-blend-mode: overlay;
            background-color: rgba(0, 0, 0, 0.4);
        }

        .banner h2 {
            font-size: 3.5rem;
        }

        .banner p {
            font-size: 1.5rem;
        }

        /* Main Section */
        .main-section {
            display: flex;
            justify-content: space-around;
            margin: 3rem auto;
            max-width: 1200px;
        }

        .section {
            background-color: #fff;
            border-radius: 12px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
            padding: 25px;
            width: 30%;
            text-align: center;
            transition: transform 0.2s;
        }

        .section:hover {
            transform: translateY(-5px);
        }

        .section h3 {
            color: #406343;
            margin-bottom: 1.2rem;
            font-size: 1.8rem;
        }

        .section p {
            color: #555;
            font-size: 1rem;
            line-height: 1.6;
        }

        .section a {
            display: inline-block;
            margin-top: 15px;
            padding: 12px 24px;
            color: white;
            background-color: #5b8a72;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
        }

        .section a:hover {
            background-color: #476b58;
        }

        /* Footer */
        footer {
            background-color: #5b8a72;
            color: white;
            text-align: center;
            padding: 1.5rem 0;
            margin-top: 3rem;
            font-size: 1rem;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .main-section {
                flex-direction: column;
                align-items: center;
            }

            .section {
                width: 80%;
                margin-bottom: 1.5rem;
            }

            .banner h2 {
                font-size: 2.5rem;
            }

            .banner p {
                font-size: 1.2rem;
            }

            nav {
                flex-direction: column;
            }
        }
    </style>
</head>
<body>

   

    <!-- Navigation -->
    <nav>
        <div class="nav-links">
            <a href="index.jsp">Home</a>
            <a href="farmers-info.jsp">For Farmers</a> <!-- Link updated to point to the new farmers-info.jsp page -->
            <a href="buyers-info.jsp">For Buyers</a>
            <a href="#admin">Admin</a>
            <a href="contact.jsp">Contact Us</a>
        </div>
        <div class="nav-right">
            <a href="login.jsp">Login</a>
            <a href="register.jsp">Register</a>
        </div>
    </nav>

    <!-- Banner Section -->
    <section class="banner">
        <h2>Empowering Farmers through Innovation</h2>
        <p>Helping farmers turn their crops into valuable products and connect with global buyers</p>
    </section>

    <!-- Main Section -->
    <section class="main-section">
        <!-- Farmer Section -->
        <div class="section" id="farmers">
            <h3>Farmer Portal</h3>
            <p>List your agricultural products, manage inventory, and interact with buyers worldwide.</p>
            <a href="farmer-dashboard.jsp">Farmer Dashboard</a>
        </div>

        <!-- Buyer Section -->
        <div class="section" id="buyers">
            <h3>Buyer Portal</h3>
            <p>Browse a variety of locally produced, value-added agricultural products and place orders easily.</p>
            <a href="buyer-dashboard.jsp">Buyer Dashboard</a>
        </div>

        <!-- Admin Section -->
        <div class="section" id="admin">
            <h3>Admin Panel</h3>
            <p>Manage users, oversee transactions, and maintain the integrity of the platform.</p>
            <a href="admin-dashboard.jsp">Admin Dashboard</a>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 Support the Farmers. All rights reserved.</p>
    </footer>

</body>
</html>
