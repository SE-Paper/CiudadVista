package cvista_login



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UsuarioController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Usuario.list(params), model:[usuarioInstanceCount: Usuario.count()]
    }
	
	
	def login = {
		
	}
 
	def loginT = {
		if (request.method == 'POST') {
			def passwordHashed = params.password.encodeAsMD5()
			def u = Usuario.findByEmailAndPassword(params.email, passwordHashed)
			if (u) {
				if(u.class == UsuarioAdministrador.class){
					session.user = u
					session.invalidate()
					redirect(url:"/admin")
				
				}
				if(u.class == UsuarioBasico.class){
					session.user = u
					redirect(controller:'UsuarioBasico')
				}
				
				if(u.class == UsuarioEmpresario.class){
					session.user = u
					redirect(controller:'UsuarioEmpresario')
				}
				if(u.class == UsuarioPromotor.class){
					session.user = u
					redirect(controller:'UsuarioPromotor')
				}
				if(u.class == Usuario.class){
					session.user = u
					redirect(controller:'Usuario')
				}
				
			} else {
				flash.message = "User not found"
				redirect(controller:'main')
			}
		} else if (session.user) {
			// don't allow login while user is logged in
			redirect(controller:'main')
		}
	}
 
	def logout = {
		session.invalidate()
		redirect(controller:'main')
	}

    def show(Usuario usuarioInstance) {
        respond usuarioInstance
    }

    def create() {
        respond new Usuario(params)
    }

    @Transactional
    def save(Usuario usuarioInstance) {
        if (usuarioInstance == null) {
            notFound()
            return
        }

        if (usuarioInstance.hasErrors()) {
            respond usuarioInstance.errors, view:'create'
            return
        }

        usuarioInstance.save flush:true
		usuarioInstance.password = usuarioInstance.password.encodeAsMD5()
		
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'usuario.label', default: 'Usuario'), usuarioInstance.id])
                redirect usuarioInstance
            }
            '*' { respond usuarioInstance, [status: CREATED] }
        }
    }

    def edit(Usuario usuarioInstance) {
        respond usuarioInstance
    }

    @Transactional
    def update(Usuario usuarioInstance) {
        if (usuarioInstance == null) {
            notFound()
            return
        }

        if (usuarioInstance.hasErrors()) {
            respond usuarioInstance.errors, view:'edit'
            return
        }

        usuarioInstance.save flush:true
		usuarioInstance.password = usuarioInstance.password.encodeAsMD5()
		
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Usuario.label', default: 'Usuario'), usuarioInstance.id])
                redirect usuarioInstance
            }
            '*'{ respond usuarioInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Usuario usuarioInstance) {

        if (usuarioInstance == null) {
            notFound()
            return
        }

        usuarioInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Usuario.label', default: 'Usuario'), usuarioInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }
	
    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'usuario.label', default: 'Usuario'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
