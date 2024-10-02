<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <style>
        /* General Styles */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f7f4f1;
            box-sizing: border-box;
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
            color: white;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
            font-weight: bold;
        }

        nav a:hover {
            background-color: #2f4f33;
            color: #f2f2f2;
        }

        /* Contact Section */
        .contact-section {
            max-width: 800px;
            margin: 3rem auto;
            background-color: #fff;
            padding: 2rem;
            border-radius: 8px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
        }

        .contact-section h2 {
            color: #406343;
            font-size: 2.5rem;
            margin-bottom: 1.5rem;
        }

        .contact-section p {
            font-size: 1.1rem;
            color: #555;
            margin-bottom: 1rem;
        }

        .contact-form {
            display: flex;
            flex-direction: column;
        }

        .contact-form label {
            margin-bottom: 5px;
            font-size: 1.1rem;
        }

        .contact-form input, .contact-form textarea {
            padding: 10px;
            margin-bottom: 1.5rem;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 1rem;
        }

        .contact-form textarea {
            resize: vertical;
            min-height: 150px;
        }

        .contact-form button {
            padding: 12px 20px;
            background-color: #406343;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 1.2rem;
            cursor: pointer;
        }

        .contact-form button:hover {
            background-color: #2f4f33;
        }

        /* Footer */
        footer {
            background-color: #5b8a72;
            color: white;
            text-align: center;
            padding: 1.5rem 0;
            font-size: 1rem;
        }
    </style>
</head>
<body>

    <!-- Navigation Bar -->
    <nav>
        <div class="nav-links">
            <a href="index.jsp">Home</a>
            <a href="farmers-info.jsp">For Farmers</a> <!-- Link updated to point to the new farmers-info.jsp page -->
            <a href="buyers-info.jsp">For Buyers</a>
            <a href="#admin">Admin</a>
            <a href="contact.jsp">Contact Us</a>
        </div>
    </nav>

    <!-- Contact Section -->
    <section class="contact-section">
        <h2>Contact Us</h2>
        <p>If you have any questions, feel free to contact us by filling out the form below or reaching out through the provided contact details.</p>
        
        <form class="contact-form" action="submitContactForm" method="POST">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" placeholder="Your Name" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" placeholder="Your Email" required>

            <label for="message">Message:</label>
            <textarea id="message" name="message" placeholder="Your Message" required></textarea>

            <button type="submit">Submit</button>
        </form>
    </section>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 Support the Farmers. All rights reserved.</p>
    </footer>

</body>
</html>