package cvista_login
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UsuarioEmpresarioController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond UsuarioEmpresario.list(params), model:[usuarioEmpresarioInstanceCount: UsuarioEmpresario.count()]
    }

    def show(UsuarioEmpresario usuarioEmpresarioInstance) {
        respond usuarioEmpresarioInstance
    }

    def create() {
        respond new UsuarioEmpresario(params)
    }
	
	
	
	def index2(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		respond UsuarioEmpresario.list(params), model:[usuarioEmpresarioInstanceCount: UsuarioEmpresario.count()]
	}

	def show2(UsuarioEmpresario usuarioEmpresarioInstance) {
		respond usuarioEmpresarioInstance
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

    def edit(UsuarioEmpresario usuarioEmpresarioInstance) {
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

	
	def save2(UsuarioEmpresario usuarioEmpresarioInstance) {
		
		if (usuarioEmpresarioInstance == null) {
			notFound2()
			return
		}
		def file = request.getFile('picture')
		if(!file.getContentType().equals("image/jpeg")&&!file.getContentType().equals("image/png")&&!file.getContentType().equals("image/pjpeg"))
		{
			flash.message = "bad type"
		}
		else {
			
			usuarioEmpresarioInstance.picture = file.getBytes()
			usuarioEmpresarioInstance.pictureType = file.getContentType()
			usuarioEmpresarioInstance.pictureName = file.originalFilename			
		}

		
		def act = new UsuarioEmpresario()
		act.properties = usuarioEmpresarioInstance.properties
		
		if (act.hasErrors()) {
			respond usuarioEmpresarioInstance.errors, view:'create2'
			return
		}	
		act.save flush:true
		
	/*
		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.created.message', args: [message(code: 'actividad.label', default: 'Actividad'), actividadInstance.id])
				redirect actividadInstance
			}
			'*' { respond actividadInstance, [status: CREATED] }
		}}*/
		redirect view: 'show2'
	}
	def edit2(UsuarioEmpresario usuarioEmpresarioInstance) {
		respond usuarioEmpresarioInstance
	}

	@Transactional
	def update2(UsuarioEmpresario usuarioEmpresarioInstance) {
		if (usuarioEmpresarioInstance == null) {
			notFound2()
			return
		}

		if (usuarioEmpresarioInstance.hasErrors()) {
			respond usuarioEmpresarioInstance.errors, view:'edit2'
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
            notFound2()
            return
        }

        usuarioEmpresarioInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'UsuarioEmpresario.label', default: 'UsuarioEmpresario'), usuarioEmpresarioInstance.id])
                redirect action:"index2", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'usuarioEmpresario.label', default: 'UsuarioEmpresario'), params.id])
                redirect action: "index2", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
	
	
	@Transactional
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

	protected void notFound2() {
		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.not.found.message', args: [message(code: 'usuarioEmpresario.label', default: 'UsuarioEmpresario'), params.id])
				redirect action: "index", method: "GET"
			}
			'*'{ render status: NOT_FOUND }
		}
	}
}



