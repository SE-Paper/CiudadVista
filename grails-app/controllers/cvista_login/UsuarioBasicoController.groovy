package cvista_login



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UsuarioBasicoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond UsuarioBasico.list(params), model:[usuarioBasicoInstanceCount: UsuarioBasico.count()]
    }

    def show(UsuarioBasico usuarioBasicoInstance) {
        respond usuarioBasicoInstance
    }

    def create() {
        respond new UsuarioBasico(params)
    }
	
	def index2(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		respond UsuarioBasico.list(params), model:[usuarioBasicoInstanceCount: UsuarioBasico.count()]
	}

	def show2(UsuarioBasico usuarioBasicoInstance) {
		respond usuarioBasicoInstance
	}

	def create2() {
		respond new UsuarioBasico(params)
	}

    @Transactional
    def save(UsuarioBasico usuarioBasicoInstance) {
        if (usuarioBasicoInstance == null) {
            notFound()
            return
        }

        if (usuarioBasicoInstance.hasErrors()) {
            respond usuarioBasicoInstance.errors, view:'create'
            return
        }

        usuarioBasicoInstance.save flush:true
usuarioBasicoInstance.password = usuarioBasicoInstance.password.encodeAsMD5()

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'usuarioBasico.label', default: 'UsuarioBasico'), usuarioBasicoInstance.id])
                redirect usuarioBasicoInstance
            }
            '*' { respond usuarioBasicoInstance, [status: CREATED] }
        }
    }

    def edit(UsuarioBasico usuarioBasicoInstance) {
        respond usuarioBasicoInstance
    }

	def save2(UsuarioBasico usuarioBasicoInstance) {
		if (usuarioBasicoInstance == null) {
			notFound2()
			return
		}

		if (usuarioBasicoInstance.hasErrors()) {
			respond usuarioBasicoInstance.errors, view:'create2'
			return
		}

		usuarioBasicoInstance.save flush:true
		usuarioBasicoInstance.password = usuarioBasicoInstance.password.encodeAsMD5()
		
		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.created.message', args: [message(code: 'usuarioBasico.label', default: 'UsuarioBasico'), usuarioBasicoInstance.id])
				redirect usuarioBasicoInstance
			}
			'*' { respond usuarioBasicoInstance, [status: CREATED] }
		}
	}

	def edit2(UsuarioBasico usuarioBasicoInstance) {
		respond usuarioBasicoInstance
	}

    @Transactional
    def update(UsuarioBasico usuarioBasicoInstance) {
        if (usuarioBasicoInstance == null) {
            notFound()
            return
        }

        if (usuarioBasicoInstance.hasErrors()) {
            respond usuarioBasicoInstance.errors, view:'edit'
            return
        }

        usuarioBasicoInstance.save flush:true
		usuarioBasicoInstance.password = usuarioBasicoInstance.password.encodeAsMD5()
		
		
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'UsuarioBasico.label', default: 'UsuarioBasico'), usuarioBasicoInstance.id])
                redirect usuarioBasicoInstance
            }
            '*'{ respond usuarioBasicoInstance, [status: OK] }
        }
    }
	
	def update2(UsuarioBasico usuarioBasicoInstance) {
		if (usuarioBasicoInstance == null) {
			notFound2()
			return
		}

		if (usuarioBasicoInstance.hasErrors()) {
			respond usuarioBasicoInstance.errors, view:'edit2'
			return
		}

		usuarioBasicoInstance.save flush:true
		usuarioBasicoInstance.password = usuarioBasicoInstance.password.encodeAsMD5()
		
		
		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.updated.message', args: [message(code: 'UsuarioBasico.label', default: 'UsuarioBasico'), usuarioBasicoInstance.id])
				redirect usuarioBasicoInstance
			}
			'*'{ respond usuarioBasicoInstance, [status: OK] }
		}
	}
    @Transactional
    def delete(UsuarioBasico usuarioBasicoInstance) {

        if (usuarioBasicoInstance == null) {
            notFound()
            return
        }

        usuarioBasicoInstance.delete flush:true
		
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'UsuarioBasico.label', default: 'UsuarioBasico'), usuarioBasicoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

	def delete2(UsuarioBasico usuarioBasicoInstance) {
		
				if (usuarioBasicoInstance == null) {
					notFound2()
					return
				}
		
				usuarioBasicoInstance.delete flush:true
		
				request.withFormat {
					form multipartForm {
						flash.message = message(code: 'default.deleted.message', args: [message(code: 'UsuarioBasico.label', default: 'UsuarioBasico'), usuarioBasicoInstance.id])
						redirect action:"index2", method:"GET"
					}
					'*'{ render status: NO_CONTENT }
				}
			}
	
	def login = {
		if (request.method == 'POST') {
			def passwordHashed = params.password.encodeAsMD5()
			def u = UsuarioBasico.findByEmailAndPassword(params.email, passwordHashed)
			if (u) {
				// username and password match -> log in
				session.user = u
				redirect(controller:'UsuarioBasico')
			} else {
				flash.message = "User not found"
				redirect(controller:'main')
			}
		} else if (session.user) {
			// don't allow login while user is logged in
			redirect(controller:'main')
		}
	}
 
	def logout = {
		session.invalidate()
		redirect(controller:'main')
	}
	
	protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'usuarioBasico.label', default: 'UsuarioBasico'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
	
	
	
	protected void notFound2() {
		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.not.found.message', args: [message(code: 'usuarioBasico.label', default: 'UsuarioBasico'), params.id])
				redirect action: "index2", method: "GET"
			}
			'*'{ render status: NOT_FOUND }
		}
	}
}
