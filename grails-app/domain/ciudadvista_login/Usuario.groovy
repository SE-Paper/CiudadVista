package ciudadvista_login

class Usuario {
	long id //cedula
	String password
	String email
	
static constraints = {
		password(password:true)
		id(validator:{val,instance ->
			def auxUserClasses = Usuario.findAllById(val);
			if(auxUserClasses){
				for(Usuario userClass : auxUserClasses){
					if(userClass.class.equals(instance.class) && instance.version == null){
						return ['default.id.error']
					}
				}}
			return true
		})
		email(email:true,validator:{val,instance ->
			def auxUserClasses = Usuario.findAllByEmail(val);
			if(auxUserClasses){
				for(Usuario userClass : auxUserClasses){
					if(userClass.class.equals(instance.class) && instance.version == null){
						return ['default.email.error']
					}
				}}
			return true
		})
	}
}
