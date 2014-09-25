package ciudadvista_login

class EstablecimientoComercial extends Sitio{
	int idPropietario
	String registroRUES
	
    static constraints = {
		registroRUES(validator:{val,instance ->
			//Sacamos todas las instancias de Usuario con la misma cedula
			def auxEnterpriseClasses = EstablecimientoComercial.findAllByRegistroRUES(val);
			//Si hay alguna
			if(auxEnterpriseClasses){
				//Para cada una de ellas
				for(EstablecimientoComercial aux : auxEnterpriseClasses){
					//Si la clase es la misma que la de la instancia por crear, no se puede
					if(aux.class.equals(instance.class) && instance.version == null){
						return ['default.cedula.error']
					}
				}}
			return true
		})
    }
}
