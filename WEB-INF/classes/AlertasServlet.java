import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.Vector;
import javax.servlet.annotation.WebServlet;

@WebServlet("/Recordatorio")
public class AlertasServlet extends HttpServlet{

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

			Cookie[] cookies = request.getCookies();
			ResultSet res1 = stat.executeQuery("SELECT id_usuario FROM Usuario WHERE `Correo electronico` ='" + cookies[1].getValue() + "';");
			String usuarioId = res1.getString("id_usuario");

			String chosenIrps = request.getParameter("alert");

			//System.out.println(chosenIrps);
			
			Statement stat = con.createStatement();
			int res = stat.executeUpdate("UPDATE usuario SET NumeroRecordatorio = \"" + 
			chosenIrps + "\" WHERE id_usuario = \"" + usuarioId + "\";");

			response.sendRedirect("./landingUser.jsp");
			stat.close();
			con.close();
		}
		catch(Exception e){
			e.printStackTrace();
		}
    }
    
}