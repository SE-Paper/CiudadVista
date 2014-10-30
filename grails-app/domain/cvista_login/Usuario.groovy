package cvista_login



class Usuario {
	long id
	String email
	String password
	boolean activo
	Byte [] picture
	String pictureName
	String pictureType

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
		picture(nullable:true)
		pictureName(nullable:true)
		pictureType(nullable:true)
	}


	static mapping = {
		tablePerHierarchy true
		picture(length:2048*2048)
	}


	String toString(){
		id +" - "+email +" "+password
	}
}
