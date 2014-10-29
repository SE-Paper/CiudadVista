package cvista_login


import java.util.List;

class UsuarioPromotor extends Usuario  {
	String nombreRazonCultural;
	String nombreApellido
	long cedula
	Byte [] picture


	static hasMany=[actividades:Actividad]
	List actividades
	
	UsuarioPromotor(){
		this.actividades = new ArrayList()
	}

	static constraints = {
		nombreApellido()
		nombreRazonCultural()
		cedula(unique:true)
		picture(nullable:true)
	}
}
