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
