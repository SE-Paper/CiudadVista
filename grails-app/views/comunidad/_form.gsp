<%@ page import="cvista_login.Comunidad" %>



<div class="fieldcontain ${hasErrors(bean: comunidadInstance, field: 'grupoU', 'error')} ">
	<label for="grupoU">
		<g:message code="comunidad.grupoU.label" default="Grupo U" />
		
	</label>
	<g:select name="grupoU" from="${cvista_login.GrupoUsuarios.list()}" multiple="multiple" optionKey="id" size="5" value="${comunidadInstance?.grupoU*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: comunidadInstance, field: 'planes', 'error')} ">
	<label for="planes">
		<g:message code="comunidad.planes.label" default="Planes" />
		
	</label>
	<g:select name="planes" from="${cvista_login.Plan.list()}" multiple="multiple" optionKey="id" size="5" value="${comunidadInstance?.planes*.id}" class="many-to-many"/>

</div>

