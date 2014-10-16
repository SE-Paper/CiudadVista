package cvista_login



import grails.test.mixin.*
import spock.lang.*

@TestFor(UsuarioBasicoController)
@Mock(UsuarioBasico)
class UsuarioBasicoControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.usuarioBasicoInstanceList
            model.usuarioBasicoInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.usuarioBasicoInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'POST'
            def usuarioBasico = new UsuarioBasico()
            usuarioBasico.validate()
            controller.save(usuarioBasico)

        then:"The create view is rendered again with the correct model"
            model.usuarioBasicoInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            usuarioBasico = new UsuarioBasico(params)

            controller.save(usuarioBasico)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/usuarioBasico/show/1'
            controller.flash.message != null
            UsuarioBasico.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def usuarioBasico = new UsuarioBasico(params)
            controller.show(usuarioBasico)

        then:"A model is populated containing the domain instance"
            model.usuarioBasicoInstance == usuarioBasico
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def usuarioBasico = new UsuarioBasico(params)
            controller.edit(usuarioBasico)

        then:"A model is populated containing the domain instance"
            model.usuarioBasicoInstance == usuarioBasico
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'PUT'
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/usuarioBasico/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def usuarioBasico = new UsuarioBasico()
            usuarioBasico.validate()
            controller.update(usuarioBasico)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.usuarioBasicoInstance == usuarioBasico

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            usuarioBasico = new UsuarioBasico(params).save(flush: true)
            controller.update(usuarioBasico)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/usuarioBasico/show/$usuarioBasico.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'DELETE'
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/usuarioBasico/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def usuarioBasico = new UsuarioBasico(params).save(flush: true)

        then:"It exists"
            UsuarioBasico.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(usuarioBasico)

        then:"The instance is deleted"
            UsuarioBasico.count() == 0
            response.redirectedUrl == '/usuarioBasico/index'
            flash.message != null
    }
}
