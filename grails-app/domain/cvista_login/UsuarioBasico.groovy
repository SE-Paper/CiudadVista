package cvista_login
import java.util.List;



class UsuarioBasico extends Usuario {
	String nombre
	String apellido
	int edad
	String sexo
	String ocupacion
	String fechaNacimiento
	String pais
	String departamento
	String ciudad 
	
	List tags
	
	UsuarioBasico(){
		 this.tags = new ArrayList()
	}
	
	
	
	static constraints = {
		nombre()
		apellido()
		edad(min:0,max:110)
		sexo()
		ocupacion()
		fechaNacimiento()
		pais()
		departamento()
		ciudad()
		
	}

	String toString(){
		super.toString();
	}
}
