package cvista_login



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class GrupoUsuariosController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond GrupoUsuarios.list(params), model:[grupoUsuariosInstanceCount: GrupoUsuarios.count()]
    }

    def show(GrupoUsuarios grupoUsuariosInstance) {
        respond grupoUsuariosInstance
    }

    def create() {
        respond new GrupoUsuarios(params)
    }

    @Transactional
    def save(GrupoUsuarios grupoUsuariosInstance) {
        if (grupoUsuariosInstance == null) {
            notFound()
            return
        }

        if (grupoUsuariosInstance.hasErrors()) {
            respond grupoUsuariosInstance.errors, view:'create'
            return
        }

        grupoUsuariosInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'grupoUsuarios.label', default: 'GrupoUsuarios'), grupoUsuariosInstance.id])
                redirect grupoUsuariosInstance
            }
            '*' { respond grupoUsuariosInstance, [status: CREATED] }
        }
    }

    def edit(GrupoUsuarios grupoUsuariosInstance) {
        respond grupoUsuariosInstance
    }

    @Transactional
    def update(GrupoUsuarios grupoUsuariosInstance) {
        if (grupoUsuariosInstance == null) {
            notFound()
            return
        }

        if (grupoUsuariosInstance.hasErrors()) {
            respond grupoUsuariosInstance.errors, view:'edit'
            return
        }

        grupoUsuariosInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'GrupoUsuarios.label', default: 'GrupoUsuarios'), grupoUsuariosInstance.id])
                redirect grupoUsuariosInstance
            }
            '*'{ respond grupoUsuariosInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(GrupoUsuarios grupoUsuariosInstance) {

        if (grupoUsuariosInstance == null) {
            notFound()
            return
        }

        grupoUsuariosInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'GrupoUsuarios.label', default: 'GrupoUsuarios'), grupoUsuariosInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'grupoUsuarios.label', default: 'GrupoUsuarios'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
