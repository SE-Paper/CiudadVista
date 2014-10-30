package cvista_login



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ServicioController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Servicio.list(params), model:[servicioInstanceCount: Servicio.count()]
    }

    def show(Servicio servicioInstance) {
        respond servicioInstance
    }

    def create() {
        respond new Servicio(params)
    }

    @Transactional
    def save(Servicio servicioInstance) {
       if (servicioInstance == null) {
			notFound2()
			return
		}
		def file = request.getFile('picture')
		if(file.empty) {
			flash.message =  "no file"
			
		}
		else if(!file.getContentType().equals("image/jpeg")&&!file.getContentType().equals("image/png")&&!file.getContentType().equals("image/pjpeg"))
		{
			flash.message = "bad type"
		}
		else {
			
			servicioInstance.picture = file.getBytes()
			servicioInstance.pictureType = file.getContentType()
			servicioInstance.pictureName = file.originalFilename
			println file.getContentType()
			println file.originalFilename
			
		}
		
		def act = new Servicio()
		act.properties = servicioInstance.properties
		
		if (act.hasErrors()) {
			respond servicioInstance.errors, view:'create2'
			return
		}	
		act.save flush:true
    }

    def edit(Servicio servicioInstance) {
        respond servicioInstance
    }

    @Transactional
    def update(Servicio servicioInstance) {
        if (servicioInstance == null) {
            notFound()
            return
        }

        if (servicioInstance.hasErrors()) {
            respond servicioInstance.errors, view:'edit'
            return
        }

        servicioInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Servicio.label', default: 'Servicio'), servicioInstance.id])
                redirect servicioInstance
            }
            '*'{ respond servicioInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Servicio servicioInstance) {

        if (servicioInstance == null) {
            notFound()
            return
        }

        servicioInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Servicio.label', default: 'Servicio'), servicioInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'servicio.label', default: 'Servicio'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
	
	
	def index2(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		respond Servicio.list(params), model:[servicioInstanceCount: Servicio.count()]
	}

	def show2(Servicio servicioInstance) {
		respond servicioInstance
	}

	def create2() {
		respond new Servicio(params)
	}

	@Transactional
	def save2(Servicio servicioInstance) {
		
		if (servicioInstance == null) {
			notFound2()
			return
		}
		def file = request.getFile('picture')
		if(file.empty) {
			flash.message =  "no file"
			
		}
		else if(!file.getContentType().equals("image/jpeg")&&!file.getContentType().equals("image/png")&&!file.getContentType().equals("image/pjpeg"))
		{
			flash.message = "bad type"
		}
		else {
			
			servicioInstance.picture = file.getBytes()
			servicioInstance.pictureType = file.getContentType()
			servicioInstance.pictureName = file.originalFilename
			println file.getContentType()
			println file.originalFilename
			
		}
		
		def act = new Servicio()
		act.properties = servicioInstance.properties
		
		if (act.hasErrors()) {
			respond servicioInstance.errors, view:'create2'
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

	def edit2(Servicio servicioInstance) {
		respond servicioInstance
	}

	@Transactional
	def update2(Servicio servicioInstance) {
		if (servicioInstance == null) {
			notFound2()
			return
		}

		if (servicioInstance.hasErrors()) {
			respond servicioInstance.errors, view:'edit2'
			return
		}

		servicioInstance.save flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.updated.message', args: [message(code: 'Servicio.label', default: 'Servicio'), servicioInstance.id])
				redirect servicioInstance
			}
			'*'{ respond servicioInstance, [status: OK] }
		}
	}

	@Transactional
	def delete2(Servicio servicioInstance) {

		if (servicioInstance == null) {
			notFound2()
			return
		}

		servicioInstance.delete flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.deleted.message', args: [message(code: 'Servicio.label', default: 'Servicio'), servicioInstance.id])
				redirect action:"index2", method:"GET"
			}
			'*'{ render status: NO_CONTENT }
		}
	}

	protected void notFound2() {
		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.not.found.message', args: [message(code: 'servicio.label', default: 'Servicio'), params.id])
				redirect action: "index2", method: "GET"
			}
			'*'{ render status: NOT_FOUND }
		}
	}
}
