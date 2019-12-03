import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.*;
import javax.servlet.annotation.WebServlet;
import java.lang.Math;

@WebServlet("/LoginUser")
public class LoginServlet extends HttpServlet{

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

			//------User login STARTS------

			//retrieve values from register's forms
			String username = request.getParameter("username");
			String password = request.getParameter("password");

			//retrieve all registered users and store them in a vector

			ResultSet res = stat.executeQuery("SELECT * FROM Usuario;");
			Vector<User> userList = new Vector<User>();

			while(res.next()){
				User aux = new User(Long.valueOf(res.getString("id_usuario")), res.getString("Nombre"), res.getString("Apellido"), res.getString("Fecha de Nacimiento"), res.getString("Direccion"), Integer.valueOf(res.getString("Codigo Postal")), res.getString("Correo electronico"), res.getString("Contrasena"));
				userList.add(aux);
			}

			ResultSet inves = stat.executeQuery("SELECT * from Investigador");
			Vector<Researcher> researcherList = new Vector<Researcher>();

			while(inves.next()){
				Researcher aux = new Researcher(Long.valueOf(inves.getString("id_Investigador")), Integer.valueOf(inves.getString("Clearance")), inves.getString("Nombre"), inves.getString("Correo"), inves.getString("Contrasena"));
				researcherList.add(aux);
			}

			//login

			int loginSuccess = 0;
			for(int i = 0; i<userList.size(); i++){
				if(username.equals(userList.get(i).getEmail())){
					//username exists in database
					if(password.equals(userList.get(i).getPassword())){
						loginSuccess = 1; // User login
					}
				}
			}

			//compare users with info submitted by login action

			for(int i = 0; i<researcherList.size(); i++){
				if(username.equals(researcherList.get(i).getEmail())){
					//username researcher exists in database
					if(password.equals(researcherList.get(i).getPassword())){
						if(researcherList.get(i).getClearance() == 1){
							//admin login
							loginSuccess = 2;
						}
						else{
							loginSuccess = 3;
						}
					}
				}
			}

			if(loginSuccess == 1){
				HttpSession session = request.getSession();
				session.setAttribute("user", "usuario");
				//setting session to expiry in 30 mins
				session.setMaxInactiveInterval(30*60);
				Cookie userName = new Cookie("user", username );
				userName.setMaxAge(30*60);
				userName.setPath("/IRPS");
				response.addCookie(userName);

				//load main values of userLanding page

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

				ResultSet getCustomIndex = stat.executeQuery("SELECT IndicePersonalizado FROM usuario where `Correo electronico` = '" + username + "';");
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
			}
			else if(loginSuccess == 2){
				HttpSession session = request.getSession();
				session.setAttribute("user", "admin");
				//setting session to expiry in 30 mins
				session.setMaxInactiveInterval(30*60);
				Cookie userName = new Cookie("user", username );
				userName.setMaxAge(30*60);
				userName.setPath("/IRPS");
				response.addCookie(userName);
				RequestDispatcher disp = getServletContext().getRequestDispatcher("/LandingPageAdmin.jsp");
				if(disp!=null){
					disp.forward(request,response);
				}
			}
			else if(loginSuccess == 3){
				HttpSession session = request.getSession();
				session.setAttribute("user", "investigador");
				//setting session to expiry in 30 mins
				session.setMaxInactiveInterval(30*60);
				Cookie userName = new Cookie("user", username);
				userName.setMaxAge(30*60);
				userName.setPath("/IRPS");
				response.addCookie(userName);
				RequestDispatcher disp = getServletContext().getRequestDispatcher("/landingPageResearcher.jsp");
				if(disp!=null){
					disp.forward(request,response);
				}
			}
			else{
				response.sendRedirect("./index.html");
			}

			stat.close();
			con.close();

			//------User login ENDS------
		}
		catch(Exception e){
			e.printStackTrace();
			try{
    		RequestDispatcher disp =  getServletContext().getRequestDispatcher("/error.jsp");
        	if(disp!=null){
          	disp.forward(request,response);
          }
        } catch(Exception e2){

				}
		}
	}
}
