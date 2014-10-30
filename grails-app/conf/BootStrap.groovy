import cvista_login.UsuarioAdministrador
class BootStrap {

    def init = { servletContext ->
		def u = new UsuarioAdministrador(id:777,email:"admin@eg.com",password:"12345")
		u.save();
		u.password = u.password.encodeAsMD5()

    }
    def destroy = {
    }
}
