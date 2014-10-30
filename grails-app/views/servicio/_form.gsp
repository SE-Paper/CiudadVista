<%@ page import="cvista_login.Servicio" %>



<div class="fieldcontain ${hasErrors(bean: servicioInstance, field: 'nombreComponente', 'error')} required">
	<label for="nombreComponente">
		<g:message code="servicio.nombreComponente.label" default="Nombre Componente" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombreComponente" required="" value="${servicioInstance?.nombreComponente}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: servicioInstance, field: 'activo', 'error')} ">
	<label for="activo">
		<g:message code="servicio.activo.label" default="Activo" />
		
	</label>
	<g:checkBox name="activo" value="${servicioInstance?.activo}" />

</div>

<div class="fieldcontain ${hasErrors(bean: servicioInstance, field: 'resumen', 'error')} required">
	<label for="resumen">
		<g:message code="servicio.resumen.label" default="Resumen" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="resumen" cols="40" rows="5" maxlength="1000" required="" value="${servicioInstance?.resumen}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: servicioInstance, field: 'ranking', 'error')} required">
	<label for="ranking">
		<g:message code="servicio.ranking.label" default="Ranking" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="ranking" type="number" value="${servicioInstance.ranking}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: servicioInstance, field: 'fechaActivo', 'error')} required">
	<label for="fechaActivo">
		<g:message code="servicio.fechaActivo.label" default="Fecha Activo" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaActivo" precision="day"  value="${servicioInstance?.fechaActivo}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: servicioInstance, field: 'fechaInactivo', 'error')} required">
	<label for="fechaInactivo">
		<g:message code="servicio.fechaInactivo.label" default="Fecha Inactivo" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaInactivo" precision="day"  value="${servicioInstance?.fechaInactivo}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: servicioInstance, field: 'picture', 'error')} ">
	<label for="picture">
		<g:message code="servicio.picture.label" default="Picture" />
		
	</label>
	<input type="file" id="picture" name="picture"  value="${request.picture}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: servicioInstance, field: 'comentarios', 'error')} ">
	<label for="comentarios">
		<g:message code="servicio.comentarios.label" default="Comentarios" />
		
	</label>
	<g:select name="comentarios" from="${cvista_login.Comentario.list()}" multiple="multiple" optionKey="id" size="5" value="${servicioInstance?.comentarios*.id}" class="many-to-many"/>

</div>

