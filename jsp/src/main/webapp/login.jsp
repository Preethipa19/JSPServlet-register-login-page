<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<style>
    body {
        font-family: 'Poppins', sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
               background: url("https://c4.wallpaperflare.com/wallpaper/132/818/377/eiffel-tower-cityscape-city-landmark-wallpaper-preview.jpg") no-repeat center center;
        background-size: cover;
        margin: 0;
    }
    .container {
        background: rgba(255, 255, 255, 0.9);
        padding: 50px 40px;
        border-radius: 15px;
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
        text-align: center;
        max-width: 400px;
        width: 100%;
    }
    .container h1 {
        margin-bottom: 25px;
        color: #333;
        font-size: 28px;
        font-weight: bold;
    }
    form {
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    form input[type="text"],
    form input[type="password"] {
        margin-bottom: 20px;
        padding: 12px;
        width: 100%;
        border: 1px solid #ddd;
        border-radius: 8px;
        box-shadow: inset 0 2px 5px rgba(0, 0, 0, 0.1);
        font-size: 16px;
    }
    form input[type="submit"] {
        padding: 12px 30px;
        border: none;
        border-radius: 8px;
        background: #ff6b6b;
        color: #fff;
        cursor: pointer;
        font-size: 18px;
        transition: background 0.3s, transform 0.3s;
    }
    form input[type="submit"]:hover {
        background: #ff5252;
        transform: translateY(-2px);
    }
    .register {
        margin-top: 25px;
        font-size: 14px;
    }
    .register a {
        color: #ff6b6b;
        text-decoration: none;
        font-weight: bold;
        transition: color 0.3s;
    }
    .register a:hover {
        color: #ff3d3d;
    }
</style>
</head>
<body>
    <div class="container">
        <h1>Login</h1>
        <form name="f1" action="LoginServlet1" method="post" onSubmit="return validate1()">
            <input type="text" name="username" placeholder="Username" /><br>
            <input type="password" name="password" placeholder="Password" /><br>
            <input type="submit" value="Login" /><br>
        </form>
        <div class="register">
            New User? <a href="register.jsp">Register</a>
        </div>
    </div>
    <script>
        function validate1() {
            let x1 = document.f1.username.value;
            let x2 = document.f1.password.value;
            if (x1 == null || x1 == "") {
                alert("Username should not be empty");
                return false;
            }
            if (x2 == null || x2 == "") {
                alert("Password should not be empty");
                return false;
            }
            return true;
        }
    </script>
</body>
</html>
