
class UrlMappings {
 
	static mappings = {
		"/panel"(controller:"panel", action:"main")
		"/admin"(controller:"usuarioAdministrador", action:"login")
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/index")
        "500"(view:'/error')
	}
}
