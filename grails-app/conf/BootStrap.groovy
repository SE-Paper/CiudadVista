import cvista_login.UsuarioAdministrador
class BootStrap {

    def init = { servletContext ->
		new UsuarioAdministrador(id:111,email:"ceparadac@unal.edu.co",password:"12345").save()
		new UsuarioAdministrador(id:222,email:"clmahechap@unal.edu.co",password:"12345").save()
		new UsuarioAdministrador(id:333,email:"jcdiazh@unal.edu.co",password:"12345").save()
		new UsuarioAdministrador(id:444,email:"coste@unal.edu.co",password:"12345").save()
		new UsuarioAdministrador(id:555,email:"alejo@unal.edu.co",password:"12345").save()
    }
    def destroy = {
    }
}
