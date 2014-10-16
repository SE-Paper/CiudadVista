package cvista_login


import java.util.List;

class UsuarioPromotor {
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
		cedula(validator:{val,instance ->
			def userClasses = Usuario.findAllByCedula(val);
			if(userClasses){
				for(Usuario userClass : userClasses){
					if(userClass.class.equals(instance.class) && instance.version == null){
						return ['default.cedula.error']
					}
				}
			}
			return true
		})
	}
}
