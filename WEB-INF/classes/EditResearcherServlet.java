import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.Vector;
import javax.servlet.annotation.WebServlet;

@WebServlet("/EditarInvestigador")
public class EditResearcherServlet extends HttpServlet{

	public void init(ServletConfig config){
		try{
			super.init(config);
		}
		catch(Exception e){
			e.printStackTrace();
		}
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response){
		updateAdmin(request, response);
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response){
		updateAdmin(request, response);
    }

    public void updateAdmin(HttpServletRequest request, HttpServletResponse response){

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
            
            String id = request.getParameter("idToModify");
            String name = request.getParameter("nameToModify");
            String mail = request.getParameter("mailToModify");

            int res = stat.executeUpdate("UPDATE investigador SET Nombre = \"" + name + "\" , Correo = \"" + mail + "\" WHERE id_investigador = " + id + ";");
            
            RequestDispatcher disp =  getServletContext().getRequestDispatcher("/ShowClients");
            if(disp!=null){
				disp.forward(request,response);
            }
            
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }
    
}