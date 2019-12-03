import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.*;
import javax.servlet.annotation.WebServlet;
import java.lang.Math;

@WebServlet("/RedirectHome")
public class RedirectHome extends HttpServlet{

    public void init(ServletConfig config){
		try{
			super.init(config);
		}
		catch(Exception e){
			e.printStackTrace();
		}
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response){
		redirection(request, response);
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		redirection(request, response);
	}

    public void redirection(HttpServletRequest request, HttpServletResponse response){
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

			Cookie[] cookies = request.getCookies();
			
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

				RequestDispatcher disp = getServletContext().getRequestDispatcher("./RedirectHome");
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