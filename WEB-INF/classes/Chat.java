public class Chat {
    private String nameUser;
    private String mensajeUser;
    private String asuntoUser;
    private String idpreguntaUser;
	/**
	* Default empty Chat constructor
	*/
	public Chat() {
		super();
	}
	/**
	* Default Chat constructor
	*/
	public Chat(String nameUser, String mensajeUser, String asuntoUser, String idpreguntaUser) {
		super();
		this.nameUser = nameUser;
		this.mensajeUser = mensajeUser;
    this.asuntoUser = asuntoUser;
    this.idpreguntaUser = idpreguntaUser;
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
	* Returns value of asuntoUser
	* @return
	*/
	public String getAsuntoUser() {
		return this.asuntoUser;
	}

	/**
	* Returns value of idpreguntaUser
	* @return
	*/
	public String getIdpreguntaUser() {
		return this.idpreguntaUser;
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

	/**
	* Sets new value of asuntoUser
	* @param
	*/
	public void setAsuntoUser(String asuntoUser) {
		this.asuntoUser = asuntoUser;
	}

	/**
	* Sets new value of idpreguntaUser
	* @param
	*/
	public void setIdpreguntaUser(String idpreguntaUser) {
		this.idpreguntaUser = idpreguntaUser;
	}
}
