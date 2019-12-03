import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.Vector;
import javax.servlet.annotation.WebServlet;

@WebServlet("/BorrarInvesti")
public class BorrarInvesti extends HttpServlet{

	public void init(ServletConfig config){
		try{
			super.init(config);
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response){

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

			//------User register STARTS------


			String id = request.getParameter("borrarID");

			System.out.println(id);


      int res = stat.executeUpdate("DELETE FROM Investigador WHERE id_Investigador='"+ id +"';");

			RequestDispatcher disp = getServletContext().getRequestDispatcher("/LandingPageAdmin.jsp");
			if(disp!=null){
				disp.forward(request,response);
			}


			stat.close();
			con.close();

			//Cambiar


		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
}
