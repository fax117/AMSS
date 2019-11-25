import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.Vector;
import javax.servlet.annotation.WebServlet;

@WebServlet("/ViewPregunta")
public class ViewChatAdmin extends HttpServlet{

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

      ResultSet res = stat.executeQuery("SELECT * FROM Chat;");
      Vector<Chat> chatList = new Vector<Chat>();

			while(res.next()) {
          String cond = res.getString("contestada");
          if ( cond.equals("0") ) {
          String temp = res.getString("id_usuario");
          String asunto = res.getString("asunto");
					String pregunta = res.getString("pregunta");
					String id_pregunta = res.getString("id_pregunta");

          Chat aux = new Chat(temp, pregunta, asunto, id_pregunta);
    			chatList.add(aux);
        }
      }

			stat.close();
			con.close();

			//Cambiar
      request.setAttribute("chatList", chatList);

			RequestDispatcher disp = getServletContext().getRequestDispatcher("/viewAdmin.jsp");
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
