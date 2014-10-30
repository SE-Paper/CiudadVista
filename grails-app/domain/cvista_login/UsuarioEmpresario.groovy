package cvista_login


import java.util.List;

class UsuarioEmpresario extends Usuario {

	String nombreEmpresa;
	String matriculaMercantil;
	String nomApRep
	long cedula
	Byte [] picture
	
	static hasMany=[servicios:Servicio]
	List servicios
	
	UsuarioEmpresario(){
		this.servicios = new ArrayList()
	}

	static constraints = {
		nomApRep()
		nombreEmpresa()
		matriculaMercantil()
<<<<<<< HEAD
		cedula(validator:{val,instance ->
			def userClasses = UsuarioEmpresario.findAllByCedula(val);
			if(userClasses){
				for(Usuario userClass : userClasses){
					if(userClass.class.equals(instance.class) && instance.version == null){
						return ['default.cedula.error']
					}
				}
			}
			return true
		})
=======
		cedula(unique:true)
		picture(nullable:true)
>>>>>>> remotes/origin/templates
	}
}
