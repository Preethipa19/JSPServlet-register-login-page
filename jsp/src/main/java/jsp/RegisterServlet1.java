package jsp;

import java.io.*;
import javax.servlet.*;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegisterServlet1 extends HttpServlet {
    private static final long serialVersionUID = 1L;
    Connection con;

    public void init(ServletConfig config) {
        String driver = config.getInitParameter("driver");
        String url = config.getInitParameter("url");
        String username = config.getInitParameter("username");
        String password = config.getInitParameter("password");
        try {
            Class.forName(driver);
            con = DriverManager.getConnection(url, username, password);
        } catch (Exception e) {
            System.out.println("Database connection initialization error: " + e);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        response.setContentType("text/html");
        String name = request.getParameter("name");
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<head>");
        out.println("<meta charset=\"UTF-8\">");
        out.println("<title>Register</title>");
        out.println("<style>");
        out.println("body {");
        out.println("    font-family: 'Arial', sans-serif;");
        out.println("    display: flex;");
        out.println("    justify-content: center;");
        out.println("    align-items: center;");
        out.println("    height: 100vh;");
        out.println("    background:url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6urTxCDsHhzRjASB99-MkY6hcvN-Ybc9yWA&s') no-repeat center center;");
        out.println("    background-size:cover;");
        out.println("    margin: 0;");
        out.println("}");
        out.println(".container {");
        out.println("    background: #fff;");
        out.println("    padding: 40px;");
        out.println("    border-radius: 10px;");
        out.println("    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);");
        out.println("    text-align: center;");
        out.println("}");
        out.println("</style>");
        out.println("</head>");
        out.println("<body>");
        out.println("<div class=\"container\">");

        try {
            if (con != null) {
                PreparedStatement st = con.prepareStatement("insert into users (name, username, password) values (?, ?, ?)");
                st.setString(1, name);
                st.setString(2, username);
                st.setString(3, password);
                st.executeUpdate();
                out.println("<h1>Registered Successfully</h1><br>");
                out.println("<p>Click <a href=\"login.jsp\">here</a> to login</p>");
            } else {
                out.println("<h1>Database connection is not initialized.</h1>");
            }
        } catch (Exception e) {
            out.println("<h1>Error during registration: " + e + "</h1>");
        }

        out.println("</div>");
        out.println("</body>");
        out.println("</html>");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    public void destroy() {
        try {
            if (con != null) {
                con.close();
            }
        } catch (Exception e) {
            System.out.println("Error closing the database connection: " + e);
        }
    }
}