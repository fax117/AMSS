import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.Vector;
import javax.servlet.annotation.WebServlet;

@WebServlet("/Logout")
public class LogoutServlet extends HttpServlet {
        protected void doGet(HttpServletRequest request, HttpServletResponse response)
                                throws ServletException, IOException {
            response.setContentType("text/html");
            PrintWriter out=response.getWriter();

            request.getRequestDispatcher("index.html").include(request, response);

            HttpSession session=request.getSession();
            session.invalidate();

            Cookie[] cookies = request.getCookies();
            for (int i=0; i < cookies.length; i++) {
              Cookie killCookie = cookies[i];
              killCookie.setMaxAge(0);
              killCookie.setPath("/IRPS");
              response.addCookie(killCookie);
            }

            out.print("You are successfully logged out!");

            out.close();
    }
}
