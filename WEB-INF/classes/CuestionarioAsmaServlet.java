import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.time.LocalDate;
import java.util.*;
import javax.servlet.annotation.WebServlet;
import java.lang.Math;

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

			UserLandingRedirect redirect = new UserLandingRedirect();
			String irpsVal = "5";
			try{
				irpsVal = redirect.loadLanding();
				request.setAttribute("irpsServerValue",irpsVal);
			}
			catch(Exception e){
				//
			}
			
			int customIRPS = 0;
			
			ResultSet getCustomIndex = stat.executeQuery("SELECT IndicePersonalizado FROM usuario where `Correo electronico` = '" + cookies[1].getValue() + "';");
			while(getCustomIndex.next()){
				String javaCustomIndex = getCustomIndex.getString("IndicePersonalizado");
				if(javaCustomIndex == null){
					javaCustomIndex = irpsVal;
				}
				else{
					List<String> historicVList;
					historicVList = Arrays.asList(javaCustomIndex.split("\\s*,\\s*")); 
					for(int i=0; i<historicVList.size(); i++){
						customIRPS = customIRPS + Integer.parseInt(historicVList.get(i));
					}
					customIRPS = customIRPS / historicVList.size();
				}
			}
			request.setAttribute("irpsCustomValue",customIRPS);
			
			ResultSet recomendacionesRS  = stat.executeQuery("SELECT * from recomendaciones;");
			Vector<Recommendation> recommendationVector = new Vector<Recommendation>();
			
			while(recomendacionesRS.next()){
				Recommendation aux = new Recommendation(Integer.parseInt(recomendacionesRS.getString("id_Recomendaciones")), recomendacionesRS.getString("Descripcion"), recomendacionesRS.getString("Nombre"), Integer.parseInt(recomendacionesRS.getString("AssociatedVal")));
				if(aux.getAssociatedVal() <= Integer.parseInt(irpsVal)+1 && aux.getAssociatedVal() >= Integer.parseInt(irpsVal)-1){
					recommendationVector.add(aux);
				}
			}
			
			int randomInt = (int)(Math.random()*recommendationVector.size()+1);
			String customAdvice = recommendationVector.get(randomInt-1).getDescripcion();
			
			request.setAttribute("customRecommendation",customAdvice);
			
			RequestDispatcher disp = getServletContext().getRequestDispatcher("/landingUsers.jsp");
			if(disp!=null){
				disp.forward(request,response);
			}

			stat.close();
			con.close();


		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
}