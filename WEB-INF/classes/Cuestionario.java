import java.util.List;
import java.util.LinkedList;

public class Cuestionario{
	
	private String tipo;
	private String fecha;
	private int idCuestionario;
	private List<String> respuestas;

	public Cuestionario(String tipo, String fecha, int idCuestionario, List<String> respuestas){
		this.tipo = tipo;
		this.fecha = fecha;
		this.idCuestionario = idCuestionario;
		this.respuestas = new LinkedList<>();
	}

	public void setTipo(String tipo){
		this.tipo = tipo;
	}

	public String getTipo(){
		return tipo;
	}

	public void setFecha(String fecha){
		this.fecha = fecha;
	}

	public String getFecha(){
		return fecha;
	}

	public void setIdCuestionario(int idCuestionario){
		this.idCuestionario = idCuestionario;
	}

	public int getIdCuestionario(){
		return idCuestionario;
	}

	public List<String> getRespuestas(){
		return respuestas;
	}

	public void addRespuesta(String respuesta){
		respuestas.add(respuesta);
	}
}