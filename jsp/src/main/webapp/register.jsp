<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Register</title>
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap" rel="stylesheet">
<style>
    body {
        font-family: 'Roboto', sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
         background: url("https://wallpapers.com/images/featured/hd-background-6y0ggs5rjs8ra0lv.jpg") no-repeat center center;

        background-size: cover;
        margin: 0;
    }
    .container {
        background: #ffffff;
        padding: 40px;
        border-radius: 12px;
        box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
        width: 100%;
        max-width: 450px;
        text-align: center;
    }
    .container h1 {
        margin-bottom: 20px;
        font-size: 26px;
        color: #333333;
    }
    form {
        display: flex;
        flex-direction: column;
    }
    .form-group {
        margin-bottom: 20px;
        text-align: left;
    }
    .form-group label {
        font-size: 14px;
        color: #333;
        margin-bottom: 8px;
        display: block;
    }
    .form-group input[type="text"],
    .form-group input[type="password"] {
        padding: 12px;
        width: 100%;
        border: 2px solid #ddd;
        border-radius: 8px;
        box-sizing: border-box;
        font-size: 16px;
        color: #555;
        transition: border-color 0.3s ease, box-shadow 0.3s ease;
    }
    .form-group input[type="text"]:focus,
    .form-group input[type="password"]:focus {
        border-color: #007bff;
        box-shadow: 0 0 8px rgba(0, 123, 255, 0.25);
        outline: none;
    }
    form input[type="submit"] {
        padding: 12px 20px;
        border: none;
        border-radius: 8px;
        background: #007bff;
        color: #ffffff;
        cursor: pointer;
        font-size: 16px;
        font-weight: 500;
        transition: background-color 0.3s ease, transform 0.3s ease;
    }
    form input[type="submit"]:hover {
        background: #0056b3;
        transform: translateY(-2px);
    }
    .register {
        margin-top: 20px;
        font-size: 14px;
    }
    .register a {
        color: #007bff;
        text-decoration: none;
        font-weight: bold;
        transition: color 0.3s;
    }
    .register a:hover {
        color: #0056b3;
    }
</style>
</head>
<body>
    <div class="container">
        <h1>Create Your Account</h1>
        <form name="f2" action="RegisterServlet1" method="post" onSubmit="return validate2()">
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" id="name" name="name" placeholder="Enter your name">
            </div>
            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" id="username" name="username" placeholder="Choose a username">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" placeholder="Create a password">
            </div>
            <div class="form-group">
                <label for="repassword">Retype Password</label>
                <input type="password" id="repassword" name="repassword" placeholder="Confirm your password">
            </div>
            <input type="submit" value="Register">
        </form>
        <div class="register">
            Already registered? <a href="login.jsp">Login</a>
        </div>
    </div>
    <script>
        function validate2() {
            let x1 = document.f2.name.value;
            let x2 = document.f2.username.value;
            let x3 = document.f2.password.value;
            let x4 = document.f2.repassword.value;
            if (x1 == null || x1 == "") {
                alert("Name should not be empty");
                return false;
            }
            if (x2 == null || x2 == "") {
                alert("Username should not be empty");
                return false;
            }
            if (x3 == null || x3 == "") {
                alert("Password should not be empty");
                return false;
            }
            if (x3 != x4) {
                alert("Passwords do not match");
                return false;
            }
            return true;
        }
    </script>
</body>
</html>
