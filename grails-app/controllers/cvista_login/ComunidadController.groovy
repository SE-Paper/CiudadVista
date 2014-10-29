package cvista_login



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ComunidadController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Comunidad.list(params), model:[comunidadInstanceCount: Comunidad.count()]
    }

    def show(Comunidad comunidadInstance) {
        respond comunidadInstance
    }

    def create() {
        respond new Comunidad(params)
    }

    @Transactional
    def save(Comunidad comunidadInstance) {
        if (comunidadInstance == null) {
            notFound()
            return
        }

        if (comunidadInstance.hasErrors()) {
            respond comunidadInstance.errors, view:'create'
            return
        }

        comunidadInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'comunidad.label', default: 'Comunidad'), comunidadInstance.id])
                redirect comunidadInstance
            }
            '*' { respond comunidadInstance, [status: CREATED] }
        }
    }

    def edit(Comunidad comunidadInstance) {
        respond comunidadInstance
    }

    @Transactional
    def update(Comunidad comunidadInstance) {
        if (comunidadInstance == null) {
            notFound()
            return
        }

        if (comunidadInstance.hasErrors()) {
            respond comunidadInstance.errors, view:'edit'
            return
        }

        comunidadInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Comunidad.label', default: 'Comunidad'), comunidadInstance.id])
                redirect comunidadInstance
            }
            '*'{ respond comunidadInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Comunidad comunidadInstance) {

        if (comunidadInstance == null) {
            notFound()
            return
        }

        comunidadInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Comunidad.label', default: 'Comunidad'), comunidadInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'comunidad.label', default: 'Comunidad'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
	
	
	def index2(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		respond Comunidad.list(params), model:[comunidadInstanceCount: Comunidad.count()]
	}

	def show2(Comunidad comunidadInstance) {
		respond comunidadInstance
	}

	def create2() {
		respond new Comunidad(params)
	}

	@Transactional
	def save2(Comunidad comunidadInstance) {
		if (comunidadInstance == null) {
			notFound()
			return
		}

		if (comunidadInstance.hasErrors()) {
			respond comunidadInstance.errors, view:'create2'
			return
		}

		comunidadInstance.save flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.created.message', args: [message(code: 'comunidad.label', default: 'Comunidad'), comunidadInstance.id])
				redirect comunidadInstance
			}
			'*' { respond comunidadInstance, [status: CREATED] }
		}
	}

	def edit2(Comunidad comunidadInstance) {
		respond comunidadInstance
	}

	@Transactional
	def update2(Comunidad comunidadInstance) {
		if (comunidadInstance == null) {
			notFound2()
			return
		}

		if (comunidadInstance.hasErrors()) {
			respond comunidadInstance.errors, view:'edit'
			return
		}

		comunidadInstance.save flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.updated.message', args: [message(code: 'Comunidad.label', default: 'Comunidad'), comunidadInstance.id])
				redirect comunidadInstance
			}
			'*'{ respond comunidadInstance, [status: OK] }
		}
	}

	@Transactional
	def delete2(Comunidad comunidadInstance) {

		if (comunidadInstance == null) {
			notFound2()
			return
		}

		comunidadInstance.delete flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.deleted.message', args: [message(code: 'Comunidad.label', default: 'Comunidad'), comunidadInstance.id])
				redirect action:"index2", method:"GET"
			}
			'*'{ render status: NO_CONTENT }
		}
	}

	protected void notFound2() {
		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.not.found.message', args: [message(code: 'comunidad.label', default: 'Comunidad'), params.id])
				redirect action: "index2", method: "GET"
			}
			'*'{ render status: NOT_FOUND }
		}
	}
}
