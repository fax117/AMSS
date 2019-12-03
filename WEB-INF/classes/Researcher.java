public class Researcher{
	private Long id_Researcher;
	private int clearance;
	private String name;
	private String email;
	private String password;

	public Researcher(Long id_Researcher, int clearance, String name, String email, String password){
		this.id_Researcher = id_Researcher;
		this.clearance = clearance;
		this.name = name;
		this.email = email;
		this.password = password;
	}

	public Researcher(String name, String email, Long id_Researcher){
		this.name = name;
		this.email = email;
		this.id_Researcher = id_Researcher;
	}

	public void setId_Researcher(Long id_Researcher){
		this.id_Researcher = id_Researcher;
	}

	public Long getId_Researcher(){
		return id_Researcher;
	}

	public void setClearance(int clearance){
		this.clearance = clearance;
	}

	public int getClearance(){
		return clearance;
	}

	public void setName(String name){
		this.name = name;
	}

	public String getName(){
		return name;
	}

	public void setEmail(String email){
		this.email = email;
	}

	public String getEmail(){
		return email;
	}

	public void setPassword(String password){
		this.password = password;
	}

	public String getPassword(){
		return password;
	}
}
