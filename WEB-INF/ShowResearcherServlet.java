import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.Vector;
import javax.servlet.annotation.WebServlet;

@WebServlet("/VerInvestigadores")
public class ShowResearcherServlet extends HttpServlet{

	public void init(ServletConfig config){
		try{
			super.init(config);
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response){
		updateAdminTwo(request, response);
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response){
		updateAdminTwo(request, response);
	}

	public void updateAdminTwo(HttpServletRequest request, HttpServletResponse response){
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

			ResultSet researcherContents = stat.executeQuery("SELECT * from investigador;");
			Vector<Researcher> researcherListShow = new Vector<Researcher>();

			while(researcherContents.next()){
                Researcher aux = new Researcher(researcherContents.getString("Clearance"), 
                researcherContents.getString("Nombre"), researcherContents.getString("Correo"),
                researcherContents.getString("Contrasena"));
				researcherListShow.add(aux);
			}


			request.setAttribute("reserarcherListShow", researcherListShow);

			RequestDispatcher disp = getServletContext().getRequestDispatcher("/verInvestigador.jsp");
			if(disp!=null){
				disp.forward(request,response);
			}

			stat.close();
			con.close();

		}
		catch(Exception e){
			/*e.printStackTrace();
			try{
    		RequestDispatcher disp =  getServletContext().getRequestDispatcher("/error.jsp");
        	if(disp!=null){
          	disp.forward(request,response);
          }
        } catch(Exception e2){

				}*/
		}
	}
}
