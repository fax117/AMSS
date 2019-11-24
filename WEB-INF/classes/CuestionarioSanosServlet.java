import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.time.LocalDate;
import java.util.*;
import javax.servlet.annotation.WebServlet;

@WebServlet("/CuestionarioSanos")
public class CuestionarioSanosServlet extends HttpServlet{

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

			String dbbase = getServletContext().getInitParameter("base");
			String dbusuario = getServletContext().getInitParameter("usuario");
			String dbpassword = getServletContext().getInitParameter("pass");
			Class.forName("com.mysql.jdbc.Driver");

			String url = "jdbc:mysql://localhost/"+dbbase+"?useSSL=false&allowPublicKeyRetrieval=true";
			Connection con = DriverManager.getConnection(url,dbusuario,dbpassword);
			Statement stat = con.createStatement();

			Cookie[] cookies = request.getCookies();
			ResultSet res1 = stat.executeQuery("SELECT id_usuario FROM Usuario WHERE `Correo electronico` ='" + cookies[1].getValue() + "';");

			if( request.getSession(false).getAttribute("user").equals("usuario") ) {
				if(res1.next() ) {
					String usuarioId = res1.getString("id_usuario");
					LocalDate fecha = java.time.LocalDate.now();
					String actividadesAireLibre = request.getParameter("enfermedad");
					String aireLibreMasDeTreintaMin = request.getParameter("studyLevel");
					String horarioAlAireLibre = request.getParameter("fuma");
					String sintomas = request.getParameter("cantidadCigarros");
					String otro = request.getParameter("tiempoSinFumar");
					String tiempoImpedido = request.getParameter("convivirFumadores");
					String frecuenciaFaltaDeAire = request.getParameter("dondeFumadores");
					String frecuenciaInhalador = request.getParameter("otrosHumos");


					int res = stat.executeUpdate("INSERT INTO CuestionarioAsma (fecha, id_usuario, actividadesAireLibre, aireLibreMasDeTreintaMin, horarioAlAireLibre, sintomas, otro, tiempoImpedido, FrecuenciaFaltaDeAire, FrecuenciaInhalador) VALUES (\""
						+ fecha + "\" , \"" + usuarioId + "\", \"" + actividadesAireLibre + "\" , \"" + aireLibreMasDeTreintaMin + "\", \"" + horarioAlAireLibre + "\" , \"" + sintomas + "\" , \"" + otro + "\" , \"" + tiempoImpedido + "\" , \"" + frecuenciaFaltaDeAire + "\" , \"" + frecuenciaInhalador + "\");");
				}
			}
			response.sendRedirect("/landingUser.jsp");

			stat.close();
			con.close();


		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
}