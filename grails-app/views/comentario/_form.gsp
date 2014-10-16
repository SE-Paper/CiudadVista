<%@ page import="cvista_login.Comentario" %>



<div class="fieldcontain ${hasErrors(bean: comentarioInstance, field: 'titulo', 'error')} required">
	<label for="titulo">
		<g:message code="comentario.titulo.label" default="Titulo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="titulo" required="" value="${comentarioInstance?.titulo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: comentarioInstance, field: 'descripcion', 'error')} required">
	<label for="descripcion">
		<g:message code="comentario.descripcion.label" default="Descripcion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="descripcion" cols="40" rows="5" maxlength="300" required="" value="${comentarioInstance?.descripcion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: comentarioInstance, field: 'fechaCreacion', 'error')} required">
	<label for="fechaCreacion">
		<g:message code="comentario.fechaCreacion.label" default="Fecha Creacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaCreacion" precision="day"  value="${comentarioInstance?.fechaCreacion}"  />

</div>

