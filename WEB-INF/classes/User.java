public class User{
	
	private long id_usuario;
	private String name;
	private String surname;
	private String birthday;
	private String address;
	private int postalCode;
	private String email;
	private String password;

	//Nullable objects
	private int personalizedIndex;
	private int remainderNumber;

	public User(long id_usuario, String name, String surname, String birthday, String address, int postalCode, String email, String password){
		this.id_usuario = id_usuario;
		this.name = name;
		this.surname = surname;
		this.birthday = birthday;
		this.address = address;
		this.postalCode = postalCode;
		this.email = email;
		this.password = password;
		personalizedIndex = -1;
		remainderNumber = -1;
	}

	public void setId_Usuario(long id_usuario){
		this.id_usuario = id_usuario;
	}

	public long getId_Usuario(){
		return id_usuario;
	}

	public void setName(String name){
		this.name = name;
	}

	public String getName(){
		return name;
	}

	public void setSurname(String surname){
		this.surname = surname;
	}

	public String getSurname(){
		return surname;
	}

	public void setBirthday(String birthday){
		this.birthday = birthday;
	}

	public String getBirthday(){
		return birthday;
	}

	public void setAddress(String address){
		this.address = address;
	}

	public String getAddress(){
		return address;
	}

	public void setPostalCode(int postalCode){
		this.postalCode = postalCode;
	}

	public int getPostalCode(){
		return postalCode;
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

	public void setPersonalizedIndex(int personalizedIndex){
		this.personalizedIndex = personalizedIndex;
	}

	public int getPersonalizedIndex(){
		return personalizedIndex;
	}

	public void setRemainderNumber(int remainderNumber){
		this.remainderNumber = remainderNumber;
	}

	public int getRemainderNumber(){
		return remainderNumber;
	}
}