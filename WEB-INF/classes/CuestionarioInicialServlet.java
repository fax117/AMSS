import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.time.LocalDate;
import java.util.*;
import javax.servlet.annotation.WebServlet;

@WebServlet("/CuestionarioInicial")
public class CuestionarioInicialServlet extends HttpServlet{

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


			ResultSet res1 = stat.executeQuery("select id_usuario from Usuario order by id_usuario desc limit 1");

			if(res1.next() ) {
				String usuarioId = res1.getString("id_usuario");
				LocalDate fecha = java.time.LocalDate.now();
				String encuestaPorLlenar = request.getParameter("enfermedad");
				String nivelDeEstudios = request.getParameter("studyLevel");
				String fuma = request.getParameter("fuma");
				String cantidadCigarros = request.getParameter("cantidadCigarros");
				String tiempoSinFumar = request.getParameter("tiempoSinFumar");
				String conviveConFumadores = request.getParameter("convivirFumadores");
				String dondeFumadores = request.getParameter("dondeFumadores");
				String otrosHumos = request.getParameter("otrosHumos");
				String[] enfermedadesDiag = request.getParameterValues("enfermedadDiag");
				List<String> enfermedadesDiagList = new LinkedList<>();
				int edad = Integer.parseInt(request.getParameter("edad"));
				for (int i = 0; i < enfermedadesDiag.length ; i++) {
					enfermedadesDiagList.add(enfermedadesDiag[i]);
				}
				String tipoCancer = request.getParameter("tipoCancer");
				String otraEnf = request.getParameter("otraEnf");
				String ejercicio = request.getParameter("ejercicio");
				String dondeEjercicio = request.getParameter("dondeEjercicio");

				int res = stat.executeUpdate("INSERT INTO CuestionarioInicial (fecha, id_usuario, encuestaPorLlenar, nivelEstudios, fuma, cantidadCigarros, tiempoSinFumar, conviveConFumadores, dondeConvive, otroTipoDeHumo, otraEnfermedadDiag, tipoCancer, otraEnfermedadLibre, realizaEjercicio, dondeEjercicio, edad) VALUES (\""
					+ fecha + "\" , \"" + usuarioId + "\", \"" + encuestaPorLlenar + "\" , \"" + nivelDeEstudios + "\", \"" + fuma + "\" , \"" + cantidadCigarros + "\" , \"" + tiempoSinFumar + "\" , \"" + conviveConFumadores + "\" , \"" + dondeFumadores + "\" , \"" + otrosHumos + "\" , \"" + enfermedadesDiagList + "\" , \"" + tipoCancer + "\" , \""
					+ otraEnf + "\" , \"" + ejercicio + "\" , \"" + dondeEjercicio + "\" , \"" + edad + "\");");
			}
			response.sendRedirect("/index.html");

			stat.close();
			con.close();


		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
}