import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.Vector;
import javax.servlet.annotation.WebServlet;

@WebServlet("/AnswerAdmin")
public class AnswerAdmin extends HttpServlet{

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


			String id_pregunta = request.getParameter("preguntaID");

			ResultSet res = stat.executeQuery("SELECT pregunta FROM Chat WHERE id_pregunta='" + id_pregunta + "';");
			Vector<Pregunta> preguntaList = new Vector<Pregunta>();

			while(res.next() ) {
				String pregunta = res.getString("pregunta");

				Pregunta aux = new Pregunta(pregunta, id_pregunta);
				preguntaList.add(aux);
			}

			request.setAttribute("preguntaList", preguntaList);

			RequestDispatcher disp = getServletContext().getRequestDispatcher("/AdminRespuesta.jsp");
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
