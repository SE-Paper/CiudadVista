package cvista_login

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ActividadController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Actividad.list(params), model:[actividadInstanceCount: Actividad.count()]
    }

    def show(Actividad actividadInstance) {
        respond actividadInstance
    }

    def create() {
        respond new Actividad(params)
    }

    @Transactional
    def save(Actividad actividadInstance) {
       if (actividadInstance == null) {
			notFound2()
			return
		}
		def file = request.getFile('picture')
		if(!file.getContentType().equals("image/jpeg")&&!file.getContentType().equals("image/png")&&!file.getContentType().equals("image/pjpeg"))
		{
			flash.message = "bad type"
		}
		else {
			
			actividadInstance.picture = file.getBytes()
			actividadInstance.pictureType = file.getContentType()
			actividadInstance.pictureName = file.originalFilename			
		}

		
		def act = new Actividad()
		act.properties = actividadInstance.properties
		
		if (act.hasErrors()) {
			respond actividadInstance.errors, view:'create2'
			return
		}	
		act.save flush:true
    }

    def edit(Actividad actividadInstance) {
        respond actividadInstance
    }

    @Transactional
    def update(Actividad actividadInstance) {
        if (actividadInstance == null) {
            notFound()
            return
        }

        if (actividadInstance.hasErrors()) {
            respond actividadInstance.errors, view:'edit'
            return
        }

        actividadInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Actividad.label', default: 'Actividad'), actividadInstance.id])
                redirect actividadInstance
            }
            '*'{ respond actividadInstance, [status: OK] }
        }
    }
/*
	def download(long id) {
		Componente actividadInstance = Componente.get(id)
		if ( actividadInstance == null) {
			flash.message = "bad type"
			redirect (action:'index')
		} else {
		
			response.setContentType(actividadInstance.pictureType)
			response.setHeader("Content-Disposition", "Attachment;Filename=\"${actividadInstance.pictureName}\"")

			java.io.File archivo = new java.io.File("text.txt")
			java.io.FileOutputStream output = new java.io.FileOutputStream(archivo)
			output.write(actividadInstance.picture)
			output.flush()
			output.close()
			def outputStream = response.getOutputStream()
			outputStream << archivo.newInputStream()
			outputStream.flush()
			outputStream.close()
		}
	}
	*/
    @Transactional
    def delete(Actividad actividadInstance) {

        if (actividadInstance == null) {
            notFound()
            return
        }

        actividadInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Actividad.label', default: 'Actividad'), actividadInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'actividad.label', default: 'Actividad'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
	
	def index2(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		respond Actividad.list(params), model:[actividadInstanceCount: Actividad.count()]
	}

	def show2(Actividad actividadInstance) {
		respond actividadInstance
	}

	def create2() {
		respond new Actividad(params)
		
		
	}

	@Transactional
	def save2(Actividad actividadInstance) {
		
		if (actividadInstance == null) {
			notFound2()
			return
		}
		def file = request.getFile('picture')
		if(!file.getContentType().equals("image/jpeg")&&!file.getContentType().equals("image/png")&&!file.getContentType().equals("image/pjpeg"))
		{
			flash.message = "bad type"
		}
		else {
			
			actividadInstance.picture = file.getBytes()
			actividadInstance.pictureType = file.getContentType()
			actividadInstance.pictureName = file.originalFilename			
		}

		
		def act = new Actividad()
		act.properties = actividadInstance.properties
		
		if (act.hasErrors()) {
			respond actividadInstance.errors, view:'create2'
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

	def edit2(Actividad actividadInstance) {
		respond actividadInstance
	}

	@Transactional
	def update2(Actividad actividadInstance) {
		if (actividadInstance == null) {
			notFound2()
			return
		}

		if (actividadInstance.hasErrors()) {
			respond actividadInstance.errors, view:'edit2'
			return
		}

		actividadInstance.save flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.updated.message', args: [message(code: 'Actividad.label', default: 'Actividad'), actividadInstance.id])
				redirect actividadInstance
			}
			'*'{ respond actividadInstance, [status: OK] }
		}
	}

	@Transactional
	def delete2(Actividad actividadInstance) {

		if (actividadInstance == null) {
			notFound2()
			return
		}

		actividadInstance.delete flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.deleted.message', args: [message(code: 'Actividad.label', default: 'Actividad'), actividadInstance.id])
				redirect action:"index2", method:"GET"
			}
			'*'{ render status: NO_CONTENT }
		}
	}

	protected void notFound2() {
		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.not.found.message', args: [message(code: 'actividad.label', default: 'Actividad'), params.id])
				redirect action: "index2", method: "GET"
			}
			'*'{ render status: NOT_FOUND }
		}
	}
}
