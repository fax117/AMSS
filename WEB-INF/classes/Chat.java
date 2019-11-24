public class Chat {
    private String nameUser;
    private String mensajeUser;
	/**
	* Default empty Chat constructor
	*/
	public Chat() {
		super();
	}
	/**
	* Default Chat constructor
	*/
	public Chat(String nameUser, String mensajeUser) {
		super();
		this.nameUser = nameUser;
		this.mensajeUser = mensajeUser;
	}
	/**
	* Returns value of nameUser
	* @return
	*/
	public String getNameUser() {
		return this.nameUser;
	}
	/**
	* Returns value of mensajeUser
	* @return
	*/
	public String getMensajeUser() {
		return this.mensajeUser;
	}
	/**
	* Sets new value of nameUser
	* @param
	*/
	public void setNameUser(String nameUser) {
		this.nameUser = nameUser;
	}
	/**
	* Sets new value of mensajeUser
	* @param
	*/
	public void setMensajeUser(String mensajeUser) {
		this.mensajeUser = mensajeUser;
	}
}
