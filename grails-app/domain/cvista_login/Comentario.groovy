package cvista_login


class Comentario {
	static constraints = {
		titulo()
		descripcion(maxSize:300)
		fechaCreacion()
	}
	static belogsTo = Usuario
	
	static mapping = { sort "fechaCreacion":"desc" }

	String titulo
	String descripcion
	Date fechaCreacion
	
}
