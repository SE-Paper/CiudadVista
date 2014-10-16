package cvista_login



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SitioController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Sitio.list(params), model:[sitioInstanceCount: Sitio.count()]
    }

    def show(Sitio sitioInstance) {
        respond sitioInstance
    }

    def create() {
        respond new Sitio(params)
    }

    @Transactional
    def save(Sitio sitioInstance) {
        if (sitioInstance == null) {
            notFound()
            return
        }

        if (sitioInstance.hasErrors()) {
            respond sitioInstance.errors, view:'create'
            return
        }

        sitioInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'sitio.label', default: 'Sitio'), sitioInstance.id])
                redirect sitioInstance
            }
            '*' { respond sitioInstance, [status: CREATED] }
        }
    }

    def edit(Sitio sitioInstance) {
        respond sitioInstance
    }

    @Transactional
    def update(Sitio sitioInstance) {
        if (sitioInstance == null) {
            notFound()
            return
        }

        if (sitioInstance.hasErrors()) {
            respond sitioInstance.errors, view:'edit'
            return
        }

        sitioInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Sitio.label', default: 'Sitio'), sitioInstance.id])
                redirect sitioInstance
            }
            '*'{ respond sitioInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Sitio sitioInstance) {

        if (sitioInstance == null) {
            notFound()
            return
        }

        sitioInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Sitio.label', default: 'Sitio'), sitioInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'sitio.label', default: 'Sitio'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
