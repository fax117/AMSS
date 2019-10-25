public class Investigador{
	
	private int clearance;
	private String nombre;
	private String correo;
	private String contraseña;
	private long id_Investigador;

	public User(int clearance, String nombre, String correo String contraseña, long id_Investigador){
		this.clearance = clearance;
		this.nombre = nombre;
		this.correo = correo;
		this.contraseña = contraseña;
		this.id_Investigador = id_Investigador;
	}

	public void setClerance(int clearance){
		this.clearance = clearance;
	}

	public long getClerance(){
		return clearance;
	}

	public void setNombre(String nombre){
		this.nombre = nombre;
	}

	public String getNombre(){
		return nombre;
	}

	public void setCorreo(String correo){
		this.correo = correo;
	}

	public String getCorreo(){
		return correo;
	}

	public void setContraseña(String contraseña){
		this.contraseña = contraseña;
	}

	public String getContraseña(){
		return contraseña;
	}

	public void setId_Investigador(long id_Investigador){
		this.role = role;
	}

	public String getId_Investigador(){
		return id_Investigador;
	}


}