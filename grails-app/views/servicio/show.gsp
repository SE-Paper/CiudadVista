
<%@ page import="cvista_login.Servicio" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'servicio.label', default: 'Servicio')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-servicio" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-servicio" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list servicio">
			
				<g:if test="${servicioInstance?.nombreComponente}">
				<li class="fieldcontain">
					<span id="nombreComponente-label" class="property-label"><g:message code="servicio.nombreComponente.label" default="Nombre Componente" /></span>
					
						<span class="property-value" aria-labelledby="nombreComponente-label"><g:fieldValue bean="${servicioInstance}" field="nombreComponente"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${servicioInstance?.activo}">
				<li class="fieldcontain">
					<span id="activo-label" class="property-label"><g:message code="servicio.activo.label" default="Activo" /></span>
					
						<span class="property-value" aria-labelledby="activo-label"><g:formatBoolean boolean="${servicioInstance?.activo}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${servicioInstance?.resumen}">
				<li class="fieldcontain">
					<span id="resumen-label" class="property-label"><g:message code="servicio.resumen.label" default="Resumen" /></span>
					
						<span class="property-value" aria-labelledby="resumen-label"><g:fieldValue bean="${servicioInstance}" field="resumen"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${servicioInstance?.ranking}">
				<li class="fieldcontain">
					<span id="ranking-label" class="property-label"><g:message code="servicio.ranking.label" default="Ranking" /></span>
					
						<span class="property-value" aria-labelledby="ranking-label"><g:fieldValue bean="${servicioInstance}" field="ranking"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${servicioInstance?.fechaActivo}">
				<li class="fieldcontain">
					<span id="fechaActivo-label" class="property-label"><g:message code="servicio.fechaActivo.label" default="Fecha Activo" /></span>
					
						<span class="property-value" aria-labelledby="fechaActivo-label"><g:formatDate date="${servicioInstance?.fechaActivo}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${servicioInstance?.fechaInactivo}">
				<li class="fieldcontain">
					<span id="fechaInactivo-label" class="property-label"><g:message code="servicio.fechaInactivo.label" default="Fecha Inactivo" /></span>
					
						<span class="property-value" aria-labelledby="fechaInactivo-label"><g:formatDate date="${servicioInstance?.fechaInactivo}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${servicioInstance?.picture}">
				<li class="fieldcontain">
					<span id="picture-label" class="property-label"><g:message code="servicio.picture.label" default="Picture" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${servicioInstance?.comentarios}">
				<li class="fieldcontain">
					<span id="comentarios-label" class="property-label"><g:message code="servicio.comentarios.label" default="Comentarios" /></span>
					
						<g:each in="${servicioInstance.comentarios}" var="c">
						<span class="property-value" aria-labelledby="comentarios-label"><g:link controller="comentario" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:servicioInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${servicioInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
