public class Chat {
    private String nameUser;
    private String mensajeUser;
    private String asuntoUser;
    private String respuestaAdmin;
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
	public Chat(String nameUser, String mensajeUser, String asuntoUser, String respuestaAdmin, String idpreguntaUser) {
		super();
		this.nameUser = nameUser;
		this.mensajeUser = mensajeUser;
		this.asuntoUser = asuntoUser;
		this.respuestaAdmin = respuestaAdmin;
		this.idpreguntaUser = idpreguntaUser;
	}
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
		return nameUser;
	}

	/**
	* Sets new value of nameUser
	* @param
	*/
	public void setNameUser(String nameUser) {
		this.nameUser = nameUser;
	}

	/**
	* Returns value of mensajeUser
	* @return
	*/
	public String getMensajeUser() {
		return mensajeUser;
	}

	/**
	* Sets new value of mensajeUser
	* @param
	*/
	public void setMensajeUser(String mensajeUser) {
		this.mensajeUser = mensajeUser;
	}

	/**
	* Returns value of asuntoUser
	* @return
	*/
	public String getAsuntoUser() {
		return asuntoUser;
	}

	/**
	* Sets new value of asuntoUser
	* @param
	*/
	public void setAsuntoUser(String asuntoUser) {
		this.asuntoUser = asuntoUser;
	}

	/**
	* Returns value of respuestaAdmin
	* @return
	*/
	public String getRespuestaAdmin() {
		return respuestaAdmin;
	}

	/**
	* Sets new value of respuestaAdmin
	* @param
	*/
	public void setRespuestaAdmin(String respuestaAdmin) {
		this.respuestaAdmin = respuestaAdmin;
	}

	/**
	* Returns value of idpreguntaUser
	* @return
	*/
	public String getIdpreguntaUser() {
		return idpreguntaUser;
	}

	/**
	* Sets new value of idpreguntaUser
	* @param
	*/
	public void setIdpreguntaUser(String idpreguntaUser) {
		this.idpreguntaUser = idpreguntaUser;
	}
}
