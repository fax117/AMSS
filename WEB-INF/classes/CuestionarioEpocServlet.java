import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.time.LocalDate;
import java.util.*;
import javax.servlet.annotation.WebServlet;

@WebServlet("/CuestionarioEpoc")
public class CuestionarioEpocServlet extends HttpServlet{

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
					String actividadesAireLibreHoy = request.getParameter("actividadEpoc");
					String aireLibreMasDeTreintaMinHoy = request.getParameter("aireLibreEpoc");
					String[] horarioAlAireLibreHoy = request.getParameterValues("horaAireEpoc");
					List<String> horarios = new LinkedList<>();
					for (int i = 0; i < horarioAlAireLibreHoy.length; i++) {
						horarios.add(horarioAlAireLibreHoy[i]);
					}
					String[] sintomas = request.getParameterValues("sintomasE");
					List<String> sintomasList = new LinkedList<>();
					for (int i = 0; i < sintomas.length ; i++) {
						sintomasList.add(sintomas[i]);
					}
					String otro = request.getParameter("otroSintE");
					String tos = request.getParameter("tos");
					String flemas = request.getParameter("flemas");
					String opresionEnPecho = request.getParameter("opresion");
					String faltaDeAireEscaleras = request.getParameter("escaleras");
					String actividadesDomesticas = request.getParameter("actividades");
					String seguridadSalirDeCasa = request.getParameter("salirCasa");
					String duermoSinProblemas = request.getParameter("duermo");
					String energia = request.getParameter("energia");


					int res = stat.executeUpdate("INSERT INTO CuestionarioEpoc (fecha, id_usuario, actividadesAireLibreHoy, aireLibreMasDeTreintaMinHoy, horarioAlAireLibreHoy, sintomas, otra, tos, flemas, opresionEnPecho, faltaDeAireEscaleras, actividadesDomesticas, seguridadSalirDeCasa, duermoSinProblemas, energia) VALUES (\""
						+ fecha + "\" , \"" + usuarioId + "\", \"" + actividadesAireLibreHoy + "\" , \"" + aireLibreMasDeTreintaMinHoy + "\", \"" + horarios + "\" , \"" + sintomasList + "\" , \"" + otro + "\" , \"" + tos + "\" , \"" + flemas + "\" , \"" + opresionEnPecho + "\" , \"" + faltaDeAireEscaleras + "\" , \"" + actividadesDomesticas + "\" , \""
						+ seguridadSalirDeCasa + "\" , \"" + duermoSinProblemas + "\" , \"" + energia + "\");");
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