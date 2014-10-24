package cvista_login
import cvista_login.Usuario;
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UsuarioEmpresarioController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond UsuarioEmpresario.list(params), model:[usuarioEmpresarioInstanceCount: UsuarioEmpresario.count()]
    }
	
	def index2(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		respond UsuarioEmpresario.list(params), model:[usuarioEmpresarioInstanceCount: UsuarioEmpresario.count()]
	}

    def show(UsuarioEmpresario usuarioEmpresarioInstance) {
        respond usuarioEmpresarioInstance
    }
	
	def show2(UsuarioEmpresario usuarioEmpresarioInstance) {
		respond usuarioEmpresarioInstance
	}
	
    def create() {
        respond new UsuarioEmpresario(params)
    }
	def create2() {
		respond new UsuarioEmpresario(params)
	}
    @Transactional
    def save(UsuarioEmpresario usuarioEmpresarioInstance) {
        if (usuarioEmpresarioInstance == null) {
            notFound()
            return
        }

        if (usuarioEmpresarioInstance.hasErrors()) {
            respond usuarioEmpresarioInstance.errors, view:'create'
            return
        }

        usuarioEmpresarioInstance.save flush:true
		usuarioEmpresarioInstance.password = usuarioEmpresarioInstance.password.encodeAsMD5()
		
		
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'usuarioEmpresario.label', default: 'UsuarioEmpresario'), usuarioEmpresarioInstance.id])
                redirect usuarioEmpresarioInstance
            }
            '*' { respond usuarioEmpresarioInstance, [status: CREATED] }
        }
    }
	
	def save2(UsuarioEmpresario usuarioEmpresarioInstance) {
		if (usuarioEmpresarioInstance == null) {
			notFound()
			return
		}

		if (usuarioEmpresarioInstance.hasErrors()) {
			respond usuarioEmpresarioInstance.errors, view:'create2'
			return
		}

		usuarioEmpresarioInstance.save flush:true
		usuarioEmpresarioInstance.password = usuarioEmpresarioInstance.password.encodeAsMD5()
		
		
		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.created.message', args: [message(code: 'usuarioEmpresario.label', default: 'UsuarioEmpresario'), usuarioEmpresarioInstance.id])
				redirect usuarioEmpresarioInstance
			}
			'*' { respond usuarioEmpresarioInstance, [status: CREATED] }
		}
	}
    
	def edit(UsuarioEmpresario usuarioEmpresarioInstance) {
        respond usuarioEmpresarioInstance
    }
	
	def edit2(UsuarioEmpresario usuarioEmpresarioInstance) {
		respond usuarioEmpresarioInstance
	}

    @Transactional
    def update(UsuarioEmpresario usuarioEmpresarioInstance) {
        if (usuarioEmpresarioInstance == null) {
            notFound()
            return
        }

        if (usuarioEmpresarioInstance.hasErrors()) {
            respond usuarioEmpresarioInstance.errors, view:'edit'
            return
        }

        usuarioEmpresarioInstance.save flush:true
		usuarioEmpresarioInstance.password = usuarioEmpresarioInstance.password.encodeAsMD5()
		

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'UsuarioEmpresario.label', default: 'UsuarioEmpresario'), usuarioEmpresarioInstance.id])
                redirect usuarioEmpresarioInstance
            }
            '*'{ respond usuarioEmpresarioInstance, [status: OK] }
        }
    }
	
	def update2(UsuarioEmpresario usuarioEmpresarioInstance) {
		if (usuarioEmpresarioInstance == null) {
			notFound()
			return
		}

		if (usuarioEmpresarioInstance.hasErrors()) {
			respond usuarioEmpresarioInstance.errors, view:'edit'
			return
		}

		usuarioEmpresarioInstance.save flush:true
		usuarioEmpresarioInstance.password = usuarioEmpresarioInstance.password.encodeAsMD5()
		

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.updated.message', args: [message(code: 'UsuarioEmpresario.label', default: 'UsuarioEmpresario'), usuarioEmpresarioInstance.id])
				redirect usuarioEmpresarioInstance
			}
			'*'{ respond usuarioEmpresarioInstance, [status: OK] }
		}
	}
    @Transactional
    def delete(UsuarioEmpresario usuarioEmpresarioInstance) {

        if (usuarioEmpresarioInstance == null) {
            notFound()
            return
        }

        usuarioEmpresarioInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'UsuarioEmpresario.label', default: 'UsuarioEmpresario'), usuarioEmpresarioInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }
	
	def delete2(UsuarioEmpresario usuarioEmpresarioInstance) {
		
				if (usuarioEmpresarioInstance == null) {
					notFound()
					return
				}
		
				usuarioEmpresarioInstance.delete flush:true
		
				request.withFormat {
					form multipartForm {
						flash.message = message(code: 'default.deleted.message', args: [message(code: 'UsuarioEmpresario.label', default: 'UsuarioEmpresario'), usuarioEmpresarioInstance.id])
						redirect action:"index", method:"GET"
					}
					'*'{ render status: NO_CONTENT }
				}
			}
	
    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'usuarioEmpresario.label', default: 'UsuarioEmpresario'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
