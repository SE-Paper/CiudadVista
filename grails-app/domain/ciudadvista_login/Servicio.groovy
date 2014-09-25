package ciudadvista_login

class Servicio {
	String tipoServicio
	Boolean activo
	String empresa //numeroRegistro
	

    static constraints = {
		tipoServicio(inList:['Mantenimiento', 'Domicilio', 'Alquiler', 'Talleres'])

    }
}
