<%@ page import="cvista_login.Plan" %>



<div class="fieldcontain ${hasErrors(bean: planInstance, field: 'nombreComponente', 'error')} required">
	<label for="nombreComponente">
		<g:message code="plan.nombreComponente.label" default="Nombre Componente" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombreComponente" required="" value="${planInstance?.nombreComponente}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: planInstance, field: 'activo', 'error')} ">
	<label for="activo">
		<g:message code="plan.activo.label" default="Activo" />
		
	</label>
	<g:checkBox name="activo" value="${planInstance?.activo}" />

</div>

<div class="fieldcontain ${hasErrors(bean: planInstance, field: 'resumen', 'error')} required">
	<label for="resumen">
		<g:message code="plan.resumen.label" default="Resumen" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="resumen" cols="40" rows="5" maxlength="1000" required="" value="${planInstance?.resumen}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: planInstance, field: 'ranking', 'error')} required">
	<label for="ranking">
		<g:message code="plan.ranking.label" default="Ranking" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="ranking" type="number" value="${planInstance.ranking}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: planInstance, field: 'comentarios', 'error')} ">
	<label for="comentarios">
		<g:message code="plan.comentarios.label" default="Comentarios" />
		
	</label>
	<g:select name="comentarios" from="${cvista_login.Comentario.list()}" multiple="multiple" optionKey="id" size="5" value="${planInstance?.comentarios*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: planInstance, field: 'sitios', 'error')} ">
	<label for="sitios">
		<g:message code="plan.sitios.label" default="Sitios" />
		
	</label>
	<g:select name="sitios" from="${cvista_login.Sitio.list()}" multiple="multiple" optionKey="id" size="5" value="${planInstance?.sitios*.id}" class="many-to-many"/>

</div>

