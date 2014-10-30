
<%@ page import="cvista_login.Actividad" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'actividad.label', default: 'Actividad')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-actividad" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-actividad" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list actividad">
			
				<g:if test="${actividadInstance?.nombreComponente}">
				<li class="fieldcontain">
					<span id="nombreComponente-label" class="property-label"><g:message code="actividad.nombreComponente.label" default="Nombre Componente" /></span>
					
						<span class="property-value" aria-labelledby="nombreComponente-label"><g:fieldValue bean="${actividadInstance}" field="nombreComponente"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${actividadInstance?.activo}">
				<li class="fieldcontain">
					<span id="activo-label" class="property-label"><g:message code="actividad.activo.label" default="Activo" /></span>
					
						<span class="property-value" aria-labelledby="activo-label"><g:formatBoolean boolean="${actividadInstance?.activo}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${actividadInstance?.resumen}">
				<li class="fieldcontain">
					<span id="resumen-label" class="property-label"><g:message code="actividad.resumen.label" default="Resumen" /></span>
					
						<span class="property-value" aria-labelledby="resumen-label"><g:fieldValue bean="${actividadInstance}" field="resumen"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${actividadInstance?.ranking}">
				<li class="fieldcontain">
					<span id="ranking-label" class="property-label"><g:message code="actividad.ranking.label" default="Ranking" /></span>
					
						<span class="property-value" aria-labelledby="ranking-label"><g:fieldValue bean="${actividadInstance}" field="ranking"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${actividadInstance?.fechaInicio}">
				<li class="fieldcontain">
					<span id="fechaInicio-label" class="property-label"><g:message code="actividad.fechaInicio.label" default="Fecha Inicio" /></span>
					
						<span class="property-value" aria-labelledby="fechaInicio-label"><g:formatDate date="${actividadInstance?.fechaInicio}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${actividadInstance?.fechaFinal}">
				<li class="fieldcontain">
					<span id="fechaFinal-label" class="property-label"><g:message code="actividad.fechaFinal.label" default="Fecha Final" /></span>
					
						<span class="property-value" aria-labelledby="fechaFinal-label"><g:formatDate date="${actividadInstance?.fechaFinal}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${actividadInstance?.picture}">
				<li class="fieldcontain">
					<span id="picture-label" class="property-label"><g:message code="actividad.picture.label" default="Picture" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${actividadInstance?.comentarios}">
				<li class="fieldcontain">
					<span id="comentarios-label" class="property-label"><g:message code="actividad.comentarios.label" default="Comentarios" /></span>
					
						<g:each in="${actividadInstance.comentarios}" var="c">
						<span class="property-value" aria-labelledby="comentarios-label"><g:link controller="comentario" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:actividadInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${actividadInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
