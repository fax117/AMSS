import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.Vector;
import javax.servlet.annotation.WebServlet;

@WebServlet("/GenerarReporteServlet")
public class GenerarReporteServlet extends HttpServlet{

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
			
			
			RequestDispatcher disp = getServletContext().getRequestDispatcher("/generateReport.jsp");
			if(disp!=null){
				disp.forward(request,response);
			}

            /*String initialDate = request.getParameter("initialDate");
			String endDate = request.getParameter("endDate");
			String enclosed = "$";
			String linesTerminated = "\n";
			String path = "D:/Documentos/BlocsDeNotas/"+initialDate+".csv";
			ResultSet rec = stat.executeQuery("SELECT * FROM cuestionarioasma WHERE fecha BETWEEN \" "+ initialDate + " \" and \" "+ endDate +" \" INTO OUTFILE  \" "+ path +" \"  FIELDS ENCLOSED BY \" "+enclosed+" \"  LINES TERMINATED BY \" "+linesTerminated+" \" ;");
			
		
			try {
				File file = new File(path);
	
				writer = new FileWriter(file, true);  //True = Append to file, false = Overwrite
				while((rec!=null) && (rec.next()))
				{
				
				writer.write(rec.getString("id_cuestionario_asma"));
				
				writer.write(",");
				
				writer.write(rec.getString("fecha"));
			
				writer.write(",");
				
				writer.write(rec.getString("id_usuario"));
				
				writer.write(",");
				
				writer.write(rec.getString("actividadesAireLibre"));
			
				writer.write(",");
			
				writer.write(rec.getString("aireLibreMasDeTreintaMin"));
			
				writer.write(",");
				
				writer.write(rec.getString("horarioAlAireLibre"));
				
				writer.write("\r\n");
		
				}
			
				writer.close();
			
				System.out.println("Write success!");
			
				} catch (IOException e) {
		
				e.printStackTrace();
				
				}*/

			
		
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }

}