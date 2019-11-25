import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.time.LocalDate;
import java.util.*;
import javax.servlet.annotation.WebServlet;

@WebServlet("/CuestionarioNinos")
public class CuestionarioNinosServlet extends HttpServlet{

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
					String actividadAsmaK = request.getParameter("actividadAsmaK");
					String aireLibreAsmaK = request.getParameter("aireLibreAsmaK");
					String[] horaAireAsmaK = request.getParameterValues("horaAireAsmaK");
					List<String> horarios = new LinkedList<>();
					for (int i = 0; i < horaAireAsmaK.length; i++) {
						horarios.add(horaAireAsmaK[i]);
					}
					String[] sintomasAK = request.getParameterValues("sintomasAK");
					List<String> sintomas = new LinkedList<>();
					for (int i = 0; i < sintomasAK.length ; i++) {
						sintomas.add(sintomasAK[i]);
					}
					String otroSintE = request.getParameter("otroSintE");
					String sentirAsmaK = request.getParameter("sentirAsmaK");
					String afectaEjerAK = request.getParameter("afectaEjerAK");
					String tosAK = request.getParameter("tosAK");
					String nocheAsmaK = request.getParameter("nocheAsmaK");
					String sintAsKTut = request.getParameter("sintAsKTut");
					String sintAsK = request.getParameter("sintAsK");
					String despertoAsmaK = request.getParameter("despertoAsmaK");


					int res = stat.executeUpdate("INSERT INTO CuestionarioAsmaNinos (fecha, id_usuario, actividadesAireLibre, aireLibreMasDeTreintaMin, horarioAlAireLibre, sintomas, otro, sensacionDeAsma, respiracionAfectada, tos, nocheAsma, sintomasDeAsma, queDias, despertarseEnLaNoche) VALUES (\""
						+ fecha + "\" , \"" + usuarioId + "\", \"" + actividadAsmaK + "\" , \"" + aireLibreAsmaK + "\", \"" + horarios + "\" , \"" + sintomas + "\" , \"" + otroSintE + "\" , \"" + sentirAsmaK + "\" , \""
						+ afectaEjerAK + "\" , \"" + tosAK + "\" , \"" + nocheAsmaK + "\" , \"" + sintAsKTut + "\" , \"" + sintAsK + "\" , \"" + despertoAsmaK + "\");");
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