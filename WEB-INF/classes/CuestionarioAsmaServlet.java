import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.time.LocalDate;
import java.util.*;
import javax.servlet.annotation.WebServlet;

@WebServlet("/CuestionarioAsma")
public class CuestionarioAsmaServlet extends HttpServlet{

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
					String actividadesAireLibre = request.getParameter("actividadAsma");
					String aireLibreMasDeTreintaMin = request.getParameter("aireLibre");
					String horarioAlAireLibre = request.getParameter("horaAire");
					String[] sintomasA = request.getParameterValues("sintomas");
					List<String> sintomas = new LinkedList<>();
					for (int i = 0; i < sintomasA.length; i++) {
						sintomas.add(sintomasA[i]);
					}
					String otro = request.getParameter("otroSint");
					String tiempoImpedido = request.getParameter("impedimento");
					String frecuenciaFaltaDeAire = request.getParameter("faltaAire");
					String frecuenciaInhalador = request.getParameter("nebuInha");


					int res = stat.executeUpdate("INSERT INTO CuestionarioAsma (fecha, id_usuario, actividadesAireLibre, aireLibreMasDeTreintaMin, horarioAlAireLibre, sintomas, otro, tiempoImpedido, FrecuenciaFaltaDeAire, FrecuenciaInhalador) VALUES (\""
						+ fecha + "\" , \"" + usuarioId + "\", \"" + actividadesAireLibre + "\" , \"" + aireLibreMasDeTreintaMin + "\", \"" + horarioAlAireLibre + "\" , \"" + sintomas + "\" , \"" + otro + "\" , \"" + tiempoImpedido + "\" , \"" + frecuenciaFaltaDeAire + "\" , \"" + frecuenciaInhalador + "\");");
				}
			}
			response.sendRedirect("./landingUsers.jsp");

			stat.close();
			con.close();


		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
}