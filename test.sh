<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Login</title>
    <style>
        /* Basic reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f9;
            color: #333;
            line-height: 1.6;
        }

        /* Header */
        header {
            background-color: #333;
            color: #fff;
            padding: 20px 0;
            text-align: center;
        }

        header h1 {
            font-size: 36px;
            font-weight: bold;
        }

        /* Hero Section with Subtle Background Image */
        .hero {
            background: url('https://via.placeholder.com/1920x800/000000/FFFFFF?text=Welcome+Back') center center/cover no-repeat;
            background-blur: 5px;
            padding: 120px 20px;
            text-align: center;
            color: white;
            border-bottom: 5px solid #ff6347;
            box-shadow: inset 0 0 50px rgba(0, 0, 0, 0.6);
        }

        .hero h2 {
            font-size: 48px;
            margin-bottom: 20px;
            font-weight: bold;
            color: #292424;
        }

        .hero p {
            font-size: 20px;
            margin-bottom: 30px;
            color: #4d4646;
        }

        /* Login Form Styling */
        .login-form {
            background-color: rgba(255, 255, 255, 0.9);
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 30px;
            border-radius: 10px;
            max-width: 400px;
            margin: 0 auto;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
        }

        .login-form input, .login-form button {
            padding: 15px;
            margin: 10px;
            width: 100%;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
            background-color: #f4f4f9;
        }

        .login-form button {
            background-color: #ff6347;
            color: white;
            cursor: pointer;
            transition: background-color 0.3s ease;
            font-weight: bold;
        }

        .login-form button:hover {
            background-color: #e55347;
        }

        /* Footer */
        footer {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 20px;
            margin-top: 40px;
        }
    </style>
</head>
<body>

    <!-- Header Section -->
    <header>
        <h1>Flight / Hotel Booking</h1>
    </header>

    <!-- Hero Section with Subtle Background Image -->
    <section class="hero">
        <h2>Welcome Back!</h2>
        <p>Please login to book your flight.</p>

        <!-- Login Form -->
        <form class="login-form" onsubmit="return handleLogin(event)">
            <input type="text" id="username" placeholder="Username" required>
            <input type="password" id="password" placeholder="Password" required>
            <button type="submit">Login</button>
        </form>
    </section>

    <!-- Footer Section -->
    <footer>
        <p>&copy; 2025 FlightBooking.com | All Rights Reserved</p>
    </footer>

    <script>
        // Handle login form submission
        function handleLogin(event) {
            event.preventDefault();

            const username = document.getElementById('username').value;
            const password = document.getElementById('password').value;

            if (username && password) {
                alert(`Welcome back, ${username}!`);
            } else {
                alert('Please enter both username and password!');
            }
        }
    </script>

</body>
</html>
