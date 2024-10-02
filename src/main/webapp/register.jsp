<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register - Support the Farmers</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f7f4f1;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .register-container {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            padding: 30px;
            max-width: 400px;
            width: 100%;
        }

        .register-container h2 {
            text-align: center;
            color: #406343;
            margin-bottom: 20px;
        }

        .register-container form {
            display: flex;
            flex-direction: column;
        }

        .register-container label {
            margin-bottom: 5px;
            color: #555;
        }

        .register-container input[type="text"],
        .register-container input[type="password"],
        .register-container select {
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 1rem;
        }

        .register-container button {
            padding: 10px;
            background-color: #5b8a72;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 1rem;
            cursor: pointer;
        }

        .register-container button:hover {
            background-color: #476b58;
        }

        .register-container .login-link {
            text-align: center;
            margin-top: 20px;
        }

        .register-container .login-link a {
            text-decoration: none;
            color: #5b8a72;
            font-weight: bold;
        }

        .register-container .login-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <div class="register-container">
        <h2>Register</h2>

        <!-- Display any error messages -->
        <div class="error">
            <%= request.getAttribute("errorMessage") != null ? request.getAttribute("errorMessage") : "" %>
        </div>

        <!-- Registration Form -->
        <form action="register" method="post">
            <!-- Select User Type -->
            <label for="userType">Register As:</label>
            <select name="userType" id="userType" required>
                <option value="farmer">Farmer</option>
                <option value="buyer">Buyer</option>
                <option value="admin">Admin</option>
            </select>

            <!-- Username -->
            <label for="username">Username:</label>
            <input type="text" name="username" id="username" required placeholder="Enter your username">

            <!-- Email -->
            <label for="email">Email:</label>
            <input type="text" name="email" id="email" required placeholder="Enter your email">

            <!-- Password -->
            <label for="password">Password:</label>
            <input type="password" name="password" id="password" required placeholder="Enter your password">

            <!-- Confirm Password -->
            <label for="confirmPassword">Confirm Password:</label>
            <input type="password" name="confirmPassword" id="confirmPassword" required placeholder="Confirm your password">

            <!-- Submit Button -->
            <button type="submit">Register</button>
        </form>

        <!-- Login Link -->
        <div class="login-link">
            <p>Already have an account? <a href="login.jsp">Login here</a></p>
        </div>
    </div>

</body>
</html>
