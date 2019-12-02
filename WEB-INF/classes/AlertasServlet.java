import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.Vector;
import javax.servlet.annotation.WebServlet;

@WebServlet("/Alertas")
public class LoginServlet extends HttpServlet{

    public void init(ServletConfig config){
		try{
			super.init(config);
		}
		catch(Exception e){
			e.printStackTrace();
		}
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response){

    }
    
}