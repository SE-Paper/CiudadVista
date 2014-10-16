package cvista_login

import java.util.List;



class Comunidad {
	
	static hasMany=[grupoU:GrupoUsuarios,planes:Plan]
	List grupoU
	List planes

	Comunidad(){
		this.grupoU = new ArrayList()
		this.planes = new ArrayList()
	}

    static constraints = {
    }
}
