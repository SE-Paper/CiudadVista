<%@ page import="cvista_login.Componente" %>



<div class="fieldcontain ${hasErrors(bean: componenteInstance, field: 'nombreComponente', 'error')} required">
	<label for="nombreComponente">
		<g:message code="componente.nombreComponente.label" default="Nombre Componente" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombreComponente" required="" value="${componenteInstance?.nombreComponente}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: componenteInstance, field: 'activo', 'error')} ">
	<label for="activo">
		<g:message code="componente.activo.label" default="Activo" />
		
	</label>
	<g:checkBox name="activo" value="${componenteInstance?.activo}" />

</div>

<div class="fieldcontain ${hasErrors(bean: componenteInstance, field: 'resumen', 'error')} required">
	<label for="resumen">
		<g:message code="componente.resumen.label" default="Resumen" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="resumen" cols="40" rows="5" maxlength="1000" required="" value="${componenteInstance?.resumen}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: componenteInstance, field: 'ranking', 'error')} required">
	<label for="ranking">
		<g:message code="componente.ranking.label" default="Ranking" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="ranking" type="number" value="${componenteInstance.ranking}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: componenteInstance, field: 'comentarios', 'error')} ">
	<label for="comentarios">
		<g:message code="componente.comentarios.label" default="Comentarios" />
		
	</label>
	<g:select name="comentarios" from="${cvista_login.Comentario.list()}" multiple="multiple" optionKey="id" size="5" value="${componenteInstance?.comentarios*.id}" class="many-to-many"/>

</div>

