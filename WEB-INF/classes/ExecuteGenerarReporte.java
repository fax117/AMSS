import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.Vector;
import javax.servlet.annotation.WebServlet;

@WebServlet("/ExecuteGenerarReporte")
public class ExecuteGenerarReporte extends HttpServlet{

    public void init(ServletConfig config){
		try{
			super.init(config);
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response){
		doPost(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response){
		FileWriter writer;
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
			
		
            String initialDate = request.getParameter("initialDate");
			String endDate = request.getParameter("endDate");
			//String enclosed = "$";
			//String linesTerminated = "\n";
			String path ="../webapps/IRPS/csv/" + initialDate + ".csv";
            ResultSet recAsma = stat.executeQuery("SELECT * FROM cuestionarioasma WHERE fecha BETWEEN \" "+ initialDate + " \" and \" "+ endDate +" \" ");
			ResultSet recEpoc = stat.executeQuery("SELECT * FROM cuestionarioepoc WHERE fecha BETWEEN \" "+ initialDate + " \" and \" "+ endDate +" \" ");
			ResultSet recSanos = stat.executeQuery("SELECT * FROM cuestionariosanos WHERE fecha BETWEEN \" "+ initialDate + " \" and \" "+ endDate +" \" ");
			ResultSet recAsmaNinos = stat.executeQuery("SELECT * FROM cuestionarioasmaninos WHERE fecha BETWEEN \" "+ initialDate + " \" and \" "+ endDate +" \" ");

			try {
				File file = new File(path);
	
				writer = new FileWriter(file, true);  //True = Append to file, false = Overwrite

				while((recAsma!=null) && (recAsma.next()))
				{
				
				writer.write(recAsma.getString("id_cuestionario_asma"));
				
				writer.write(",");
				
				writer.write(recAsma.getString("fecha"));
			
				writer.write(",");
				
				writer.write(recAsma.getString("id_usuario"));
				
				writer.write(",");
				
				writer.write(recAsma.getString("actividadesAireLibre"));
			
				writer.write(",");
			
				writer.write(recAsma.getString("aireLibreMasDeTreintaMin"));
			
				writer.write(",");
				
				writer.write(recAsma.getString("horarioAlAireLibre"));
				
				writer.write("\r\n");
		
				}

				while((recEpoc!=null) && (recEpoc.next()))
				{
				
				writer.write(recEpoc.getString("id_cuestionario_epoc"));
				
				writer.write(",");
				
				writer.write(recEpoc.getString("fecha"));
			
				writer.write(",");
				
				writer.write(recAsma.getString("id_usuario"));
				
				writer.write(",");
					
				writer.write(recAsma.getString("actividadesAireLibreHoy"));
			
				writer.write(",");
		
				writer.write(recAsma.getString("aireLibreMasDeTreintaMinHoy"));
			
				writer.write(",");
				
				writer.write(recAsma.getString("horarioAlAireLibreHoy"));

				writer.write(",");
				
				writer.write(recAsma.getString("sintomas"));

				writer.write(",");
				
				writer.write(recAsma.getString("otra"));

				writer.write(",");
				
				writer.write(recAsma.getString("tos"));

				writer.write(",");
				
				writer.write(recAsma.getString("flemas"));

				writer.write(",");
				
				writer.write(recAsma.getString("opresionEnPecho"));

				writer.write(",");
				
				writer.write(recAsma.getString("faltaDeAireEscaleras"));
				
				writer.write(",");

				writer.write(recAsma.getString("actividadesDomesticas"));

				writer.write(",");

				writer.write(recAsma.getString("seguridadSalirDeCasa"));

				writer.write(",");

				writer.write(recAsma.getString("duermoSinProblemas"));

				writer.write(",");

				writer.write(recAsma.getString("energia"));
				
				writer.write("\r\n");
		
				}

				while((recSanos!=null) && (recSanos.next()))
				{
				
				writer.write(recSanos.getString("id_cuestionario_sanos"));
				
				writer.write(",");
				
				writer.write(recSanos.getString("fecha"));
			
				writer.write(",");
				
				writer.write(recSanos.getString("id_usuario"));
				
				writer.write(",");
					
				writer.write(recSanos.getString("actividadesAireLibre"));
			
				writer.write(",");
		
				writer.write(recSanos.getString("done"));
			
				writer.write(",");
				
				writer.write(recSanos.getString("tipoEjercicio"));

				writer.write(",");
				
				writer.write(recSanos.getString("cansancio"));

				writer.write(",");
				
				writer.write(recSanos.getString("cansancioEscaleras"));

				writer.write(",");
				
				writer.write(recSanos.getString("aireLibreTreintaMins"));

				writer.write(",");
				
				writer.write(recSanos.getString("horarioAireLibre"));

				writer.write(",");
				
				writer.write(recSanos.getString("sintomas"));

				writer.write(",");
				
				writer.write(recSanos.getString("otros"));
				
				writer.write("\r\n");
		
				}

				while((recAsmaNinos!=null) && (recAsmaNinos.next()))
				{
				
				writer.write(recAsmaNinos.getString("id_cuestionario_asma_ninos"));
				
				writer.write(",");
				
				writer.write(recAsmaNinos.getString("fecha"));
			
				writer.write(",");
				
				writer.write(recAsmaNinos.getString("id_usuario"));
				
				writer.write(",");
					
				writer.write(recAsmaNinos.getString("actividadesAireLibre"));
			
				writer.write(",");
		
				writer.write(recAsmaNinos.getString("aireLibreMasDeTreintaMin"));
			
				writer.write(",");
				
				writer.write(recAsmaNinos.getString("horarioAlAireLibre"));

				writer.write(",");
				
				writer.write(recAsmaNinos.getString("sintomas"));

				writer.write(",");
				
				writer.write(recAsmaNinos.getString("otro"));

				writer.write(",");
				
				writer.write(recAsmaNinos.getString("sensacionDeAsma"));

				writer.write(",");
				
				writer.write(recAsmaNinos.getString("respiracionAfectada"));

				writer.write(",");
				
				writer.write(recAsmaNinos.getString("tos"));

				writer.write(",");
				
				writer.write(recAsmaNinos.getString("nocheAsma"));

				writer.write(",");
				
				writer.write(recAsmaNinos.getString("sitomasDeAsma"));

				writer.write(",");
				
				writer.write(recAsmaNinos.getString("queDias"));

				writer.write(",");
				
				writer.write(recAsmaNinos.getString("despertarseEnLaNoche"));
				
				writer.write("\r\n");
		
				}
			
				writer.close();
			
				System.out.println("Write success!");
			
            } catch (IOException e) {
    
            e.printStackTrace();
            
            }

            
			RequestDispatcher disp = getServletContext().getRequestDispatcher("/csvGenerated.jsp");
			if(disp!=null){
				disp.forward(request,response);
			}

        } 
        catch(Exception e){
            e.printStackTrace();
        }

    }
                
}

    