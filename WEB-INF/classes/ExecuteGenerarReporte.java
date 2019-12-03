import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
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
			Statement stat1 = con.createStatement();
			Statement stat2 = con.createStatement();
			Statement stat3 = con.createStatement();
			
            //------Connection to mySQL setup ENDS----------
			
		
            String initialDate = request.getParameter("initialDate");
			String endDate = request.getParameter("endDate");
			String enfermedad = request.getParameter("enfermedad");
			String path ="../webapps/IRPS/csv/"+initialDate+" "+ enfermedad+".csv";

			


            ResultSet recAsma = stat.executeQuery("SELECT * FROM cuestionarioasma WHERE fecha BETWEEN \" "+ initialDate + " \" and \" "+ endDate +" \" ");
			ResultSet recEpoc = stat1.executeQuery("SELECT * FROM cuestionarioepoc WHERE fecha BETWEEN \" "+ initialDate + " \" and \" "+ endDate +" \" ");
			ResultSet recSanos = stat2.executeQuery("SELECT * FROM cuestionariosanos WHERE fecha BETWEEN \" "+ initialDate + " \" and \" "+ endDate +" \" ");
			ResultSet recAsmaNinos = stat3.executeQuery("SELECT * FROM cuestionarioasmaninos WHERE fecha BETWEEN \" "+ initialDate + " \" and \" "+ endDate +" \" ");

			try {
				File file = new File(path);
	
				writer = new FileWriter(file, true);  //True = Append to file, false = Overwrite
			
				
				if(enfermedad.equals("asma")){

					writer.write("PACIENTES CON ASMA");
					writer.write("\r\n");
					writer.write("num. Cuestionario, Fecha, Usuario, Actividades al aire libre, Mas de treinta minutos al aire libre, Horario al aire Libre, Sintomas, Otro, Tiempo Impedido, Frecuencia de Falta de Aire, Frecuencia del uso del Inhalador ");
					writer.write("\r\n");
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
					
					writer.write(",");

					writer.write(recAsma.getString("sintomas"));

					writer.write(",");

					writer.write(recAsma.getString("otro"));
					
					writer.write(",");

					writer.write(recAsma.getString("tiempoImpedido"));
					
					writer.write(",");

					writer.write(recAsma.getString("Frecuencia de Falta de Aire"));

					writer.write(",");

					writer.write(recAsma.getString("Frecuencia de uso de Inhalador"));

					writer.write("\r\n");
			
					}
	
				}
				
				if(enfermedad.equals("asmaNinos")){

					writer.write("INFANTES CON ASMA");
					writer.write("\r\n");
					writer.write("num. Cuestionario, Fecha, Usuario, Actividades al aire libre, Mas de treinta minutos al aire libre, Horario al aire Libre, Sintomas, Otro, Sensacion de Asma, Respiracion Afectada, Tos, Asma en la Noche, Sintomas de Asma, Que Dias, Te despertaste en la noche ");
					writer.write("\r\n");

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
					
					writer.write(recAsmaNinos.getString("sintomasDeAsma"));
	
					writer.write(",");
					
					writer.write(recAsmaNinos.getString("queDias"));
	
					writer.write(",");
					
					writer.write(recAsmaNinos.getString("despertarseEnLaNoche"));
					
					writer.write("\r\n");
			
					}
	
				}
				
				if(enfermedad.equals("epoc")){

					writer.write("PACIENTES CON EPOC");
					writer.write("\r\n");
					writer.write("num. Cuestionario, Fecha, Usuario, Actividades al aire libre, Mas de treinta minutos al aire libre, Horario al aire Libre, Sintomas, Otra, Tos, Flemas, Opresion en el Pecho, Falta de aire en escaleras, Actividades domésticas, Seguro al salir de casa, Duermes sin problemas, Energia ");
					writer.write("\r\n");

					while((recEpoc!=null) && (recEpoc.next()))
					{
				
					writer.write(recEpoc.getString("id_cuestionario_epoc"));
		
					writer.write(",");
					
					writer.write(recEpoc.getString("fecha"));
			
					writer.write(",");
					
					writer.write(recEpoc.getString("id_usuario"));
				
					writer.write(",");
						
					writer.write(recEpoc.getString("actividadesAireLibreHoy"));
				
					writer.write(",");
			
					writer.write(recEpoc.getString("aireLibreMasDeTreintaMinHoy"));
				
					writer.write(",");
					
					writer.write(recEpoc.getString("horarioAlAireLibreHoy"));
	
					writer.write(",");
					
					writer.write(recEpoc.getString("sintomas"));
	
					writer.write(",");
					
					writer.write(recEpoc.getString("otra"));
	
					writer.write(",");
					
					writer.write(recEpoc.getString("tos"));
	
					writer.write(",");
					
					writer.write(recEpoc.getString("flemas"));
	
					writer.write(",");
					
					writer.write(recEpoc.getString("opresionEnPecho"));
	
					writer.write(",");
					
					writer.write(recEpoc.getString("faltaDeAireEscaleras"));
					
					writer.write(",");
	
					writer.write(recEpoc.getString("actividadesDomesticas"));
	
					writer.write(",");
	
					writer.write(recEpoc.getString("seguridadSalirDeCasa"));
	
					writer.write(",");
	
					writer.write(recEpoc.getString("duermoSinProblemas"));
	
					writer.write(",");
	
					writer.write(recEpoc.getString("energia"));
					
					writer.write("\r\n");
			
					}
				}
				
				if(enfermedad.equals("sanos")){

					writer.write("PACIENTES SANOS");
					writer.write("\r\n");
					writer.write("num. Cuestionario, Fecha, Usuario, Actividades al aire libre,Donde, Tipo de Ejercicio, Cansancio, Cansancio en Escaleras, Mas de treinta minutos al aire libre, Horario al aire Libre, Sintomas, Otros");
					writer.write("\r\n");

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
			
					writer.write(recSanos.getString("donde"));
				
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

    