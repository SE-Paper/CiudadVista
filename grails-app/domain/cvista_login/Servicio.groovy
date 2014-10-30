package cvista_login

import java.util.Date;
import java.util.List;



class Servicio extends Componente{


	Date fechaActivo
	Date fechaInactivo
	

	
	static belogsTo = UsuarioEmpresario

	static constraints = {
		fechaActivo() 
		fechaInactivo()
		picture(nullable:true)
	}
	static mapping = { sort "fechaActivo":"desc" }
}
