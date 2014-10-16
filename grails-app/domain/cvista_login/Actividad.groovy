package cvista_login;
import java.util.Date;
import java.util.List;

class Actividad extends Componente {
	Date fechaInicio
	Date fechaFinal

	static belogsTo = UsuarioPromotor

	static constraints = {
		fechaInicio()
		fechaFinal()
	}

	static mapping = { sort "fechaInicio":"desc" }
}
