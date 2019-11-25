import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.Vector;
import javax.servlet.annotation.WebServlet;

@WebServlet("/RespuestaConsultaAdmin")
public class RespuestaConsultaAdmin extends HttpServlet{

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

			//retrieve values from register's forms

			Cookie[] cookies = request.getCookies();

			ResultSet res1 = stat.executeQuery("SELECT id_Investigador FROM Investigador WHERE `Correo` ='" + cookies[1].getValue() + "';");

				if(res1.next() ) {
					String usuarioId = res1.getString("id_Investigador");
					String consulta = request.getParameter("consultaTx");
					String id_pregunta = request.getParameter("id_pregunta");
					System.out.println(id_pregunta);
					int estado = 1;
					//save values in database
					int res = stat.executeUpdate("UPDATE Chat SET respuesta='"+ consulta +"' WHERE id_pregunta='"+ id_pregunta + "';");
					int res2 = stat.executeUpdate("UPDATE Chat SET contestada='"+ estado +"' WHERE id_pregunta='"+ id_pregunta + "';");
				}
				response.sendRedirect("./LandingPageAdmin.jsp");

			stat.close();
			con.close();

			//Cambiar


		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
}
