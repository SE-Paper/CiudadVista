package cvista_login



class Usuario {
	long id
	String email
	String password
	boolean activo


	static constraints = {
		id()
		email(email:true,validator:{
			val,instance ->
			def userClasses = Usuario.findAllByEmail(val);
			if(userClasses){
				for(Usuario userClass : userClasses){
					if(userClass.class.equals(instance.class) && instance.version == null){
						return ['default.email.error']
					}
				}
			}
			return true
		})
		password(password:true)
		activo()
	}


	static mapping = {
		tablePerHierarchy true
	}


	String toString(){
		id +" - "+email +" "+password
	}
}
