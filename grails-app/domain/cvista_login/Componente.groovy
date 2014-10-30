package cvista_login

import java.util.List;

class Componente {

	String  nombreComponente
	String  resumen
	Boolean activo
	int ranking
	List tags
	Byte [] picture
	String pictureName
	String pictureType

	static hasMany=[comentarios:Comentario]
	List comentarios

	Componente(){
		this.comentarios = new ArrayList()
		this.tags = new ArrayList()
	}

	static constraints = {
		nombreComponente()
		activo()
		resumen(maxSize:1000)
		ranking()
		picture(nullable:true)
		pictureName(nullable:true)
		pictureType(nullable:true)		
	}
	
	static mapping = {
		picture(length:2048*2048)
		
	}
}
