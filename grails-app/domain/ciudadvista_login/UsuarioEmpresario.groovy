package ciudadvista_login

import java.util.List;

class UsuarioEmpresario extends Usuario {
	
	static hasManyServicios=[servicios:Servicio]
	List servicios
	static hasManySitios=[sitios:Sitio]
	List sitios
	
	
	UsuarioEmpresario(){
		this.servicios = new ArrayList()
		this.sitios = new ArrayList()
	}
	
    static constraints = {
    }
}
