package cvista_login


class GrupoUsuarios {
	
	String nombreGrupo
	String descripcion
	boolean activo
	int maximoIntegrantes
	Date fechaCreacion
	
	static hasMany=[usuarios:UsuarioBasico]
	
	List usuarios
	
	GrupoUsuarios(){
		this.usuarios = new ArrayList()
	}

    static constraints = {
		nombreGrupo()
		activo()
		fechaCreacion()
		
    }
}
