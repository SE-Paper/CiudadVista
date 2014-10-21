package cvista_login


class SearchController {

    def index = 
	{
	}
	
	def search=
	{
		def query = Componente.findAllByNombreComponenteIlike("%${params.query}%")
		if(query.empty)
		{
			render "No se encontraro resultados con '${params.query}'"
		}
		else
		{
			render template: 'result', collection: query, var:'result'
			
		}
		
	}
	
	
}
	