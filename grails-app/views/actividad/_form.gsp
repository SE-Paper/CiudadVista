<%@ page import="cvista_login.Actividad" %>



<div class="fieldcontain ${hasErrors(bean: actividadInstance, field: 'nombreComponente', 'error')} required">
	<label for="nombreComponente">
		<g:message code="actividad.nombreComponente.label" default="Nombre Componente" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombreComponente" required="" value="${actividadInstance?.nombreComponente}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: actividadInstance, field: 'activo', 'error')} ">
	<label for="activo">
		<g:message code="actividad.activo.label" default="Activo" />
		
	</label>
	<g:checkBox name="activo" value="${actividadInstance?.activo}" />

</div>

<div class="fieldcontain ${hasErrors(bean: actividadInstance, field: 'resumen', 'error')} required">
	<label for="resumen">
		<g:message code="actividad.resumen.label" default="Resumen" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="resumen" cols="40" rows="5" maxlength="1000" required="" value="${actividadInstance?.resumen}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: actividadInstance, field: 'ranking', 'error')} required">
	<label for="ranking">
		<g:message code="actividad.ranking.label" default="Ranking" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="ranking" type="number" value="${actividadInstance.ranking}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: actividadInstance, field: 'fechaInicio', 'error')} required">
	<label for="fechaInicio">
		<g:message code="actividad.fechaInicio.label" default="Fecha Inicio" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaInicio" precision="day"  value="${actividadInstance?.fechaInicio}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: actividadInstance, field: 'fechaFinal', 'error')} required">
	<label for="fechaFinal">
		<g:message code="actividad.fechaFinal.label" default="Fecha Final" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaFinal" precision="day"  value="${actividadInstance?.fechaFinal}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: actividadInstance, field: 'picture', 'error')} ">
	<label for="picture">
		<g:message code="actividad.picture.label" default="Picture" />
		
	</label>
	<input type="file" id="picture" name="picture" />

</div>

<div class="fieldcontain ${hasErrors(bean: actividadInstance, field: 'comentarios', 'error')} ">
	<label for="comentarios">
		<g:message code="actividad.comentarios.label" default="Comentarios" />
		
	</label>
	<g:select name="comentarios" from="${cvista_login.Comentario.list()}" multiple="multiple" optionKey="id" size="5" value="${actividadInstance?.comentarios*.id}" class="many-to-many"/>

</div>

