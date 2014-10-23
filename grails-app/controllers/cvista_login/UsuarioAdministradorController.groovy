package cvista_login



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UsuarioAdministradorController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond UsuarioAdministrador.list(params), model:[usuarioAdministradorInstanceCount: UsuarioAdministrador.count()]
    }

    def show(UsuarioAdministrador usuarioAdministradorInstance) {
        respond usuarioAdministradorInstance
    }

    def create() {
        respond new UsuarioAdministrador(params)
    }
	
	def login = {
	}

	def doLogin = {
		def user = UsuarioAdministrador.findWhere(email:params['email'], password:params['password'])
		session.user = user
		session.email = params['email']
		if (user)
			redirect(controller:'panel',action:'main')
		else
			redirect(url:"/admin")
	}

	def logout = {
		session.invalidate()
		redirect(url:"/admin")
	}


    @Transactional
    def save(UsuarioAdministrador usuarioAdministradorInstance) {
        if (usuarioAdministradorInstance == null) {
            notFound()
            return
        }

        if (usuarioAdministradorInstance.hasErrors()) {
            respond usuarioAdministradorInstance.errors, view:'create'
            return
        }

		usuarioAdministradorInstance.password = usuarioAdministradorInstance.password.encodeAsMD5()
		usuarioAdministradorInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'usuarioAdministrador.label', default: 'UsuarioAdministrador'), usuarioAdministradorInstance.id])
                redirect usuarioAdministradorInstance
            }
            '*' { respond usuarioAdministradorInstance, [status: CREATED] }
        }
    }

    def edit(UsuarioAdministrador usuarioAdministradorInstance) {
        respond usuarioAdministradorInstance
    }

    @Transactional
    def update(UsuarioAdministrador usuarioAdministradorInstance) {
        if (usuarioAdministradorInstance == null) {
            notFound()
            return
        }

        if (usuarioAdministradorInstance.hasErrors()) {
            respond usuarioAdministradorInstance.errors, view:'edit'
            return
        }

		usuarioAdministradorInstance.password = usuarioAdministradorInstance.password.encodeAsMD5()
		usuarioAdministradorInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'UsuarioAdministrador.label', default: 'UsuarioAdministrador'), usuarioAdministradorInstance.id])
                redirect usuarioAdministradorInstance
            }
            '*'{ respond usuarioAdministradorInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(UsuarioAdministrador usuarioAdministradorInstance) {

        if (usuarioAdministradorInstance == null) {
            notFound()
            return
        }

        usuarioAdministradorInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'UsuarioAdministrador.label', default: 'UsuarioAdministrador'), usuarioAdministradorInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'usuarioAdministrador.label', default: 'UsuarioAdministrador'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
