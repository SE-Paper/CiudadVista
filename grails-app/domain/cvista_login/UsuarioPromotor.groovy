package cvista_login


import java.util.List;

class UsuarioPromotor extends Usuario  {
	String nombreRazonCultural;
	String nombreApellido
	long cedula



	static hasMany=[actividades:Actividad]
	List actividades
	
	UsuarioPromotor(){
		this.actividades = new ArrayList()
	}

	static constraints = {
		nombreApellido()
		nombreRazonCultural()
		cedula(unique:true)
	
	}
}
