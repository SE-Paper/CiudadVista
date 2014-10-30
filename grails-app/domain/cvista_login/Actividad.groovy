package cvista_login
import java.util.Date;
import java.util.List;

class Actividad extends Componente {
	Date fechaInicio
	Date fechaFinal
	Byte [] picture

	
	static belogsTo = UsuarioPromotor

	static constraints = {
		fechaInicio()
		fechaFinal()
		picture(nullable:true)
	}

	static mapping = { sort "fechaInicio":"desc" }
}
