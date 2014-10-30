package cvista_login


import java.util.List;

class UsuarioEmpresario extends Usuario {

	String nombreEmpresa;
	String matriculaMercantil;
	String nomApRep
	long cedula

	
	static hasMany=[servicios:Servicio]
	List servicios
	
	UsuarioEmpresario(){
		this.servicios = new ArrayList()
	}

	static constraints = {
		nomApRep()
		nombreEmpresa()
		matriculaMercantil()
		cedula(unique:true)
		
	}
}
