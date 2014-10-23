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

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'usuarioBasico.label', default: 'UsuarioBasico'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
