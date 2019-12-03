public class Recommendation{
	
	private int id_Recomendaciones;
	private String Descripcion;
	private String Nombre;
	private int AssociatedVal;

	public Recommendation(int id_Recomendaciones, String Descripcion, String Nombre, int AssociatedVal){
		this.id_Recomendaciones = id_Recomendaciones;
		this.Descripcion = Descripcion;
		this.Nombre = Nombre;
		this.AssociatedVal = AssociatedVal;
	}

	public void setId_Recomendaciones(int id_Recomendaciones){
		this.id_Recomendaciones = id_Recomendaciones;
	}

	public int getId_Recomendaciones(){
		return id_Recomendaciones;
	}

	public void setDescripcion(String Descripcion){
		this.Descripcion = Descripcion;
	}

	public String getDescripcion(){
		return Descripcion;
	}

	public void setNombre(String Nombre){
		this.Nombre = Nombre;
	}

	public String getNombre(){
		return Nombre;
	}

	public void setAssociatedVal(int AssociatedVal){
		this.AssociatedVal = AssociatedVal;
	}

	public int getAssociatedVal(){
		return AssociatedVal;
	}

}