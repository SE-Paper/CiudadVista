package cvista_login
import java.util.List;



class Sitio extends Componente{
	
	boolean esPublico
	String direccion
	String telefono
	Byte [] picture
	String lat
	String lng
	
	
	static hasMany=[actividades:Actividad,servicios:Servicio]
	List actividades
	List servicios
	
	Sitio(){
		this.actividades = new ArrayList()
		this.servicios = new ArrayList()
	}

    static constraints = {
		telefono()
		direccion()
		esPublico()
		picture(nullable:true)
		lat()
		lng()
    }
}
