import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.Vector;
import javax.servlet.annotation.WebServlet;

@WebServlet("/GenerarReporteServlet")
public class GenerarReporteServlet extends HttpServlet{

    public void init(ServletConfig config){
		try{
			super.init(config);
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response){
		doPost(request, response);
	}
    
    
    public void doPost(HttpServletRequest request, HttpServletResponse response){
		FileWriter writer;
		try{

			//------Connection to mySQL setup STARTS-------
			//credentials
			String dbbase = getServletContext().getInitParameter("base");
			String dbusuario = getServletContext().getInitParameter("usuario");
			String dbpassword = getServletContext().getInitParameter("pass");
			Class.forName("com.mysql.jdbc.Driver");

			//general setup - driver setup, connection, statement setup
			String url = "jdbc:mysql://localhost/"+dbbase+"?useSSL=false&allowPublicKeyRetrieval=true";
			Connection con = DriverManager.getConnection(url,dbusuario,dbpassword);
			Statement stat = con.createStatement();
			
            //------Connection to mySQL setup ENDS----------
			
			
			RequestDispatcher disp = getServletContext().getRequestDispatcher("/generateReport.jsp");
			if(disp!=null){
				disp.forward(request,response);
			}


			
		
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }

}