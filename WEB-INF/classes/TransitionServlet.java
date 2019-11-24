import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.Vector;
import javax.servlet.annotation.WebServlet;

@WebServlet("/TransitionServlet")
public class TransitionServlet extends HttpServlet {

 private String message;

  public void init() throws ServletException
  {

  }

  public void doGet(HttpServletRequest request,
                    HttpServletResponse response)
            throws ServletException, IOException
  {
      String pathInfo = request.getPathInfo();
      RequestDispatcher disp = getServletContext().getRequestDispatcher("/consultaUs.jsp");
      if(disp!=null){
        disp.forward(request,response);
      }

  }

  public void destroy()
  {
      // do nothing.
  }
}
