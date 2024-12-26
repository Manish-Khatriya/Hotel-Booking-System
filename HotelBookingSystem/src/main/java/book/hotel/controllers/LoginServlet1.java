package book.hotel.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginServlet1")
public class LoginServlet1 extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String adharid = request.getParameter("adharid");
        String phonenumber = request.getParameter("phonenumber");

        // Validate the login (this is just an example, you should implement proper validation)
        if (adharid != null && !adharid.isEmpty() && phonenumber != null && !phonenumber.isEmpty()) {
            HttpSession session = request.getSession();
            session.setAttribute("adharid", adharid);
            session.setAttribute("phonenumber", phonenumber);
            response.sendRedirect("CN.jsp"); // Redirect to the details page
        } else {
            response.sendRedirect("login.jsp"); // Redirect back to login page on failure
        }
    }
}
