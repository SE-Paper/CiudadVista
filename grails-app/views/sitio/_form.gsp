<%@ page import="cvista_login.Sitio" %>



<div class="fieldcontain ${hasErrors(bean: sitioInstance, field: 'nombreComponente', 'error')} required">
	<label for="nombreComponente">
		<g:message code="sitio.nombreComponente.label" default="Nombre Componente" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombreComponente" required="" value="${sitioInstance?.nombreComponente}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: sitioInstance, field: 'activo', 'error')} ">
	<label for="activo">
		<g:message code="sitio.activo.label" default="Activo" />
		
	</label>
	<g:checkBox name="activo" value="${sitioInstance?.activo}" />

</div>

<div class="fieldcontain ${hasErrors(bean: sitioInstance, field: 'resumen', 'error')} required">
	<label for="resumen">
		<g:message code="sitio.resumen.label" default="Resumen" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="resumen" cols="40" rows="5" maxlength="1000" required="" value="${sitioInstance?.resumen}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: sitioInstance, field: 'ranking', 'error')} required">
	<label for="ranking">
		<g:message code="sitio.ranking.label" default="Ranking" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="ranking" type="number" value="${sitioInstance.ranking}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: sitioInstance, field: 'telefono', 'error')} required">
	<label for="telefono">
		<g:message code="sitio.telefono.label" default="Telefono" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telefono" required="" value="${sitioInstance?.telefono}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: sitioInstance, field: 'direccion', 'error')} required">
	<label for="direccion">
		<g:message code="sitio.direccion.label" default="Direccion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="direccion" required="" value="${sitioInstance?.direccion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: sitioInstance, field: 'esPublico', 'error')} ">
	<label for="esPublico">
		<g:message code="sitio.esPublico.label" default="Es Publico" />
		
	</label>
	<g:checkBox name="esPublico" value="${sitioInstance?.esPublico}" />

</div>

<div class="fieldcontain ${hasErrors(bean: sitioInstance, field: 'picture', 'error')} ">
	<label for="picture">
		<g:message code="sitio.picture.label" default="Picture" />
		
	</label>
	<input type="file" id="picture" name="picture" />

</div>

<div class="fieldcontain ${hasErrors(bean: sitioInstance, field: 'lat', 'error')} required">
	<label for="lat">
		<g:message code="sitio.lat.label" default="Lat" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lat" required="" value="${sitioInstance?.lat}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: sitioInstance, field: 'lng', 'error')} required">
	<label for="lng">
		<g:message code="sitio.lng.label" default="Lng" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lng" required="" value="${sitioInstance?.lng}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: sitioInstance, field: 'actividades', 'error')} ">
	<label for="actividades">
		<g:message code="sitio.actividades.label" default="Actividades" />
		
	</label>
	<g:select name="actividades" from="${cvista_login.Actividad.list()}" multiple="multiple" optionKey="id" size="5" value="${sitioInstance?.actividades*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: sitioInstance, field: 'comentarios', 'error')} ">
	<label for="comentarios">
		<g:message code="sitio.comentarios.label" default="Comentarios" />
		
	</label>
	<g:select name="comentarios" from="${cvista_login.Comentario.list()}" multiple="multiple" optionKey="id" size="5" value="${sitioInstance?.comentarios*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: sitioInstance, field: 'servicios', 'error')} ">
	<label for="servicios">
		<g:message code="sitio.servicios.label" default="Servicios" />
		
	</label>
	<g:select name="servicios" from="${cvista_login.Servicio.list()}" multiple="multiple" optionKey="id" size="5" value="${sitioInstance?.servicios*.id}" class="many-to-many"/>

</div>

