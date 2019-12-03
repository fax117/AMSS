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
					String actividadesAireLibre = request.getParameter("ejercicioSanos");
					String donde = request.getParameter("ejercicioDonde");
					String tipoEjercicio = request.getParameter("ejercicioTipo");
					String cansancio = request.getParameter("cansancio");
					String cansancioEscaleras = request.getParameter("cansancioEmpinado");
					String aireLibreTreintaMins = request.getParameter("aireLibre");
					String[] horarioAireLibre = request.getParameterValues("horaAire");
					List<String> horarios = new LinkedList<>();
					for (int i = 0; i < horarioAireLibre.length; i++) {
						horarios.add(horarioAireLibre[i]);
					}
					String[] sintomas = request.getParameterValues("sintomas");
					List<String> sintomasL = new LinkedList<>();
					for (int i = 0; i < sintomas.length; i++) {
						sintomasL.add(sintomas[i]);
					}
					String otros = request.getParameter("otroSint");


					int res = stat.executeUpdate("INSERT INTO CuestionarioSanos (fecha, id_usuario, actividadesAireLibre, donde, tipoEjercicio, cansancio, cansancioEscaleras, aireLibreTreintaMins, horarioAireLibre, sintomas, otros) VALUES (\""
						+ fecha + "\" , \"" + usuarioId + "\", \"" + actividadesAireLibre + "\" , \"" + donde + "\" , \"" + tipoEjercicio + "\", \"" + cansancio + "\" , \"" + cansancioEscaleras + "\" , \"" + aireLibreTreintaMins + "\" , \""
						+ horarios + "\" , \"" + sintomasL + "\" , \"" + otros + "\");");
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