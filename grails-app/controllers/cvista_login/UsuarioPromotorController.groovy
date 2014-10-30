package cvista_login
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UsuarioPromotorController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond UsuarioPromotor.list(params), model:[usuarioPromotorInstanceCount: UsuarioPromotor.count()]
    }

    def show(UsuarioPromotor usuarioPromotorInstance) {
        respond usuarioPromotorInstance
    }

	
	
    def create() {
        respond new UsuarioPromotor(params)
    }
	
	def index2(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		respond UsuarioPromotor.list(params), model:[usuarioPromotorInstanceCount: UsuarioPromotor.count()]
	}

	def show2(UsuarioPromotor usuarioPromotorInstance) {
		respond usuarioPromotorInstance
	}

	def create2() {
		respond new UsuarioPromotor(params)
	}
	
    @Transactional
    def save(UsuarioPromotor usuarioPromotorInstance) {
        if (usuarioPromotorInstance == null) {
            notFound()
            return
        }

        if (usuarioPromotorInstance.hasErrors()) {
            respond usuarioPromotorInstance.errors, view:'create'
            return
        }

        usuarioPromotorInstance.save flush:true
		usuarioPromotorInstance.password = usuarioPromotorInstance.password.encodeAsMD5()
		
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'usuarioPromotor.label', default: 'UsuarioPromotor'), usuarioPromotorInstance.id])
                redirect usuarioPromotorInstance
            }
            '*' { respond usuarioPromotorInstance, [status: CREATED] }
        }
    }

    def edit(UsuarioPromotor usuarioPromotorInstance) {
        respond usuarioPromotorInstance
    }

    @Transactional
    def update(UsuarioPromotor usuarioPromotorInstance) {
        if (usuarioPromotorInstance == null) {
            notFound()
            return
        }

        if (usuarioPromotorInstance.hasErrors()) {
            respond usuarioPromotorInstance.errors, view:'edit'
            return
        }

        usuarioPromotorInstance.save flush:true
		usuarioPromotorInstance.password = usuarioPromotorInstance.password.encodeAsMD5()
		
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'UsuarioPromotor.label', default: 'UsuarioPromotor'), usuarioPromotorInstance.id])
                redirect usuarioPromotorInstance
            }
            '*'{ respond usuarioPromotorInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(UsuarioPromotor usuarioPromotorInstance) {

        if (usuarioPromotorInstance == null) {
            notFound()
            return
        }

        usuarioPromotorInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'UsuarioPromotor.label', default: 'UsuarioPromotor'), usuarioPromotorInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'usuarioPromotor.label', default: 'UsuarioPromotor'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
	
	
	@Transactional
	def save2(UsuarioPromotor usuarioPromotorInstance) {
		
		if (usuarioPromotorInstance == null) {
			notFound2()
			return
		}
		def file = request.getFile('picture')
		if(!file.getContentType().equals("image/jpeg")&&!file.getContentType().equals("image/png")&&!file.getContentType().equals("image/pjpeg"))
		{
			flash.message = "bad type"
		}
		else {
			
			usuarioPromotorInstance.picture = file.getBytes()
			usuarioPromotorInstance.pictureType = file.getContentType()
			usuarioPromotorInstance.pictureName = file.originalFilename			
		}

		
		def act = new UsuarioPromotor()
		act.properties = usuarioPromotorInstance.properties
		
		if (act.hasErrors()) {
			respond usuarioPromotorInstance.errors, view:'create2'
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

	def edit2(UsuarioPromotor usuarioPromotorInstance) {
		respond usuarioPromotorInstance
	}

	@Transactional
	def update2(UsuarioPromotor usuarioPromotorInstance) {
		if (usuarioPromotorInstance == null) {
			notFound2()
			return
		}

		if (usuarioPromotorInstance.hasErrors()) {
			respond usuarioPromotorInstance.errors, view:'edit2'
			return
		}

		usuarioPromotorInstance.save flush:true
		usuarioPromotorInstance.password = usuarioPromotorInstance.password.encodeAsMD5()
		
		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.updated.message', args: [message(code: 'UsuarioPromotor.label', default: 'UsuarioPromotor'), usuarioPromotorInstance.id])
				redirect usuarioPromotorInstance
			}
			'*'{ respond usuarioPromotorInstance, [status: OK] }
		}
	}

	@Transactional
	def delete2(UsuarioPromotor usuarioPromotorInstance) {

		if (usuarioPromotorInstance == null) {
			notFound2()
			return
		}

		usuarioPromotorInstance.delete flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.deleted.message', args: [message(code: 'UsuarioPromotor.label', default: 'UsuarioPromotor'), usuarioPromotorInstance.id])
				redirect action:"index2", method:"GET"
			}
			'*'{ render status: NO_CONTENT }
		}
	}
	
	
	protected void notFound2() {
		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.not.found.message', args: [message(code: 'usuarioPromotor.label', default: 'UsuarioPromotor'), params.id])
				redirect action: "index2", method: "GET"
			}
			'*'{ render status: NOT_FOUND }
		}
	}
}
