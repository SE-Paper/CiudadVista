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
	/*
	def download(long id) {
		
		
		//UsuarioBasico actividadInstance = UsuarioBasico.get(id)
		 Usuario user = Usuario.get(id)
		if (user == null) {
			flash.message = "bad type"
			redirect (action:'index')
		} else {
		
			response.setContentType(user.pictureType)
			response.setHeader("Content-Disposition", "Attachment;Filename=\"${user.pictureName}\"")

			java.io.File archivo = new java.io.File("text.txt")
			java.io.FileOutputStream output = new java.io.FileOutputStream(archivo)
			output.write(user.picture)
			output.flush()
			output.close()
			def outputStream = response.getOutputStream()
			outputStream << archivo.newInputStream()
			outputStream.flush()
			outputStream.close()
		}
	}*/
	
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
		def file = request.getFile('picture')
		if(!file.getContentType().equals("image/jpeg")&&!file.getContentType().equals("image/png")&&!file.getContentType().equals("image/pjpeg"))
		{
			flash.message = "bad type"
		}
		else {
			
			print file.getContentType()
			usuarioBasicoInstance.picture = file.getBytes()
			usuarioBasicoInstance.pictureType = file.getContentType()
			usuarioBasicoInstance.pictureName = file.originalFilename			
		}

		
		def act = new UsuarioBasico()
		act.properties = usuarioBasicoInstance.properties
		
		if (act.hasErrors()) {
			respond usuarioBasicoInstance.errors, view:'create2'
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
