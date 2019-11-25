import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.Vector;
import javax.servlet.annotation.WebServlet;

@WebServlet("/BorrarVerServlet")
public class BorrarServlet extends HttpServlet{

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

      ResultSet res = stat.executeQuery("SELECT * FROM Investigador WHERE clearance='2';");
      Vector<Researcher> rList = new Vector<Researcher>();

			while(res.next() ) {
          Long id_Investigador = Long.parseLong( res.getString("id_Investigador") );
          String corre = res.getString("Correo");
          String nombre = res.getString("Nombre");

          Researcher aux = new Researcher(nombre, corre, id_Investigador);
    			rList.add(aux);
      }

			stat.close();
			con.close();

			//Cambiar
      request.setAttribute("rList", rList);

			RequestDispatcher disp = getServletContext().getRequestDispatcher("/borrarAdmin.jsp");
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
