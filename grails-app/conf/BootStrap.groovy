import cvista_login.UsuarioAdministrador
class BootStrap {

    def init = { servletContext ->
<<<<<<< HEAD
		new UsuarioAdministrador(id:111,email:"ceparadac@unal.edu.co",password:"12345").save()
		new UsuarioAdministrador(id:222,email:"clmahechap@unal.edu.co",password:"12345").save()
		new UsuarioAdministrador(id:333,email:"jcdiazh@unal.edu.co",password:"12345").save()
		new UsuarioAdministrador(id:444,email:"coste@unal.edu.co",password:"12345").save()
		new UsuarioAdministrador(id:555,email:"alejo@unal.edu.co",password:"12345").save()
=======
		def u = new UsuarioAdministrador(id:777,email:"admin@eg.com",password:"12345")
		u.save();
		u.password = u.password.encodeAsMD5()

>>>>>>> remotes/origin/templates
    }
    def destroy = {
    }
}
