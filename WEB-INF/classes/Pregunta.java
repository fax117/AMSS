public class Pregunta {
  private String pregunta;
  private String id_pregunta;
	/**
	* Default empty Pregunta constructor
	*/
	public Pregunta() {
		super();
	}

	/**
	* Default Pregunta constructor
	*/
	public Pregunta(String pregunta, String id_pregunta) {
		super();
		this.pregunta = pregunta;
    this.id_pregunta = id_pregunta;
	}
	/**
	* Returns value of pregunta
	* @return
	*/
	public String getPregunta() {
		return this.pregunta;
	}

	/**
	* Returns value of id_pregunta
	* @return
	*/
	public String getId_pregunta() {
		return this.id_pregunta;
	}

	/**
	* Sets new value of pregunta
	* @param
	*/
	public void setPregunta(String pregunta) {
		this.pregunta = pregunta;
	}

	/**
	* Sets new value of id_pregunta
	* @param
	*/
	public void setId_pregunta(String id_pregunta) {
		this.id_pregunta = id_pregunta;
	}
}
