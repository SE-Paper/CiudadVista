package ciudadvista_login

import java.util.List;

class UsuarioPromotor {
	static hasManyActividades=[actividades:Actividad]
	List actividades
	static hasManySitios=[sitios:Sitio]
	List sitios
	
	
	UsuarioPromotor(){
		this.actividades = new ArrayList()
		this.sitios = new ArrayList()
	}
    static constraints = {
    }
}
