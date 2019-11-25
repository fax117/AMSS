import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.Vector;
import javax.servlet.annotation.WebServlet;

@WebServlet("/TransitionRespuesta")
public class ViewAnswerUser extends HttpServlet{

	public void init(ServletConfig config){
		try{
			super.init(config);
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
	public void doGet(HttpServletRequest request, HttpServletResponse response){
		updateView(request, response);
	}

	public void updateView(HttpServletRequest request, HttpServletResponse response){

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

			Vector<Chat> chatList = new Vector<Chat>();
			Cookie[] cookies = request.getCookies();
			ResultSet res1 = stat.executeQuery("SELECT id_usuario FROM Usuario WHERE `Correo electronico` ='" + cookies[1].getValue() + "';");

			if (res1.next() ) {
				String id_user = res1.getString("id_usuario");
				ResultSet res = stat.executeQuery("SELECT * FROM Chat WHERE id_usuario='" + id_user +"';");


				while(res.next()) {
	          String cond = res.getString("contestada");
	          if ( cond.equals("1") ) {
	          String temp = res.getString("id_usuario");
	          String asunto = res.getString("asunto");
						String pregunta = res.getString("pregunta");
						String respuesta = res.getString("respuesta");
						String id_pregunta = res.getString("id_pregunta");

	          Chat aux = new Chat(temp, pregunta, asunto, respuesta, id_pregunta);
	    			chatList.add(aux);
	        }
	      }
			}





			stat.close();
			con.close();

			//Cambiar
      request.setAttribute("chatList", chatList);

			RequestDispatcher disp = getServletContext().getRequestDispatcher("/viewRespuestaUser.jsp");
			if(disp!=null){
				disp.forward(request,response);
			}

			//:)
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
}
