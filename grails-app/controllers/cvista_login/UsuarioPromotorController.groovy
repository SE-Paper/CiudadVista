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
}
