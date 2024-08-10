### JSP Servlet Registration and Login System
This project provides a simple registration and login system implemented using JavaServer Pages (JSP) and Servlets, along with a MySQL database for user management. 
It demonstrates basic web application functionalities including user registration, login, and form validation.

## Features
User Registration: Users can create a new account with their name, username, and password.
User Login: Users can log in using their credentials.
Client-Side Validation: JavaScript validation ensures that required fields are not left empty and passwords match during registration.
## Technologies Used
   JavaServer Pages (JSP)
   Java Servlets
   Java Programming Language
   MySQL Database
   HTML5/CSS3/JavaScript
## Prerequisites
Java Development Kit (JDK)
Apache Tomcat or similar servlet container
MySQL Database Server
IDE or text editor (e.g., IntelliJ IDEA, Eclipse)
Maven (optional for building and dependency management)
## Setup Instructions
1. Clone the Repository
bash
Copy code
git clone https://github.com/Preethipa19/JSPServlet-register-login-page.git
cd JSPServlet-register-login-page
2. Configure the MySQL Database
Create Database: Execute the following SQL command to create a database:

sql
Copy code
CREATE DATABASE jsp;
Create User Table: Create a users table in the jsp database:

sql
Copy code
USE jsp;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    username VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
);
Update Database Connection: Ensure that the database connection settings in LoginServlet1 and RegisterServlet1 match your MySQL configuration:

java
Copy code
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp", "root", "root");
3. Deploying the Application
Build Project: If using Maven, compile and package the project:

bash
Copy code
mvn clean package
Deploy WAR File: Copy the generated WAR file from target/ directory to the webapps folder of your Tomcat server.

## Start Tomcat: Start your Tomcat server. You can access the application using:

bash
Copy code
http://localhost:8080/jsp/register.jsp       (mention your package name in the place of jsp)
4. Using the Application
Register: Navigate to /register.jsp to create a new user account.
Login: Navigate to /login.jsp to log in with your registered credentials.
## Code Structure
register.jsp: The registration page where new users can sign up.
login.jsp: The login page for registered users.
LoginServlet1: Handles user login and authentication.
RegisterServlet1: Handles user registration and data insertion into the database.
## Troubleshooting
Database Connection Issues: Verify your database URL, username, and password in the servlets.
Servlet Errors: Ensure Tomcat is correctly set up and configured to handle JSP and Servlet deployments.
Dependencies: Ensure the MySQL JDBC driver is available in your project’s classpath.
