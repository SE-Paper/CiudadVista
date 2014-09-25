package ciudadvista_login


class UsuarioController {

    def autenticacionService
	static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	def index() {

		render(view:"/usuario/login")
	}
	
}
