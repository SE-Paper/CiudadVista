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

        usuarioAdministradorInstance.save flush:true
		usuarioAdministradorInstance.password = usuarioAdministradorInstance.password.encodeAsMD5()
		
		        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'usuarioAdministrador.label', default: 'UsuarioAdministrador'), usuarioAdministradorInstance.id])
                redirect usuarioAdministradorInstance
            }
            '*' { respond usuarioAdministradorInstance, [status: CREATED] }
        }
    }

<<<<<<< HEAD
	@Transactional
	def save2(UsuarioAdministrador usuarioAdministradorInstance) {
		if (usuarioAdministradorInstance == null) {
			notFound()
			return
		}

		if (usuarioAdministradorInstance.hasErrors()) {
			respond usuarioAdministradorInstance.errors, view:'create2'
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
=======
>>>>>>> remotes/origin/templates
    def edit(UsuarioAdministrador usuarioAdministradorInstance) {
        respond usuarioAdministradorInstance
    }

    def update(UsuarioAdministrador usuarioAdministradorInstance) {
        if (usuarioAdministradorInstance == null) {
            notFound()
            return
        }

        if (usuarioAdministradorInstance.hasErrors()) {
            respond usuarioAdministradorInstance.errors, view:'edit'
            return
        }

        usuarioAdministradorInstance.save flush:true
		usuarioAdministradorInstance.password = usuarioAdministradorInstance.password.encodeAsMD5()
		
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

	def login = {
		if (request.method == 'POST') {
			def passwordHashed = params.password.encodeAsMD5()
			def u = UsuarioAdministrador.findByEmailAndPassword(params.email, passwordHashed)
			if (u) {
				// username and password match -> log in
				session.user = u
				redirect(controller:'Panel', action:"main")
			} else {
				flash.message = "User not found"
				redirect(url:"/admin")
			}
		} else if (session.user) {
			// don't allow login while user is logged in
			redirect(controller:'Panel', action:"main")
		}
	}
	
	 
	def logout = {
		session.invalidate()
		redirect(url:"/admin")
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
