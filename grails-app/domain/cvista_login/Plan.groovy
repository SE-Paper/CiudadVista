package cvista_login

import java.util.List;



class Plan extends Componente{


	static hasMany=[sitios:Sitio]
	List sitios

	
	Plan(){
		this.sitios = new ArrayList()
	}
	
    static constraints = {
    }
}
