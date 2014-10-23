import cvista_login.UsuarioAdministrador
class BootStrap {

    def init = { servletContext ->
		new UsuarioAdministrador(id:777,email:"admin@eg.com",password:"12345").save()
    }
    def destroy = {
    }
}
