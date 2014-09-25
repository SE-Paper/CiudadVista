package ciudadvista_login

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
	
    static constraints = {
		edad(min:0,max:110)
		sexo(inList:['M', 'F'])
    }
}
