
<%@ page import="cvista_login.Sitio" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'sitio.label', default: 'Sitio')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-sitio" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-sitio" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list sitio">
			
				<g:if test="${sitioInstance?.nombreComponente}">
				<li class="fieldcontain">
					<span id="nombreComponente-label" class="property-label"><g:message code="sitio.nombreComponente.label" default="Nombre Componente" /></span>
					
						<span class="property-value" aria-labelledby="nombreComponente-label"><g:fieldValue bean="${sitioInstance}" field="nombreComponente"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sitioInstance?.activo}">
				<li class="fieldcontain">
					<span id="activo-label" class="property-label"><g:message code="sitio.activo.label" default="Activo" /></span>
					
						<span class="property-value" aria-labelledby="activo-label"><g:formatBoolean boolean="${sitioInstance?.activo}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sitioInstance?.resumen}">
				<li class="fieldcontain">
					<span id="resumen-label" class="property-label"><g:message code="sitio.resumen.label" default="Resumen" /></span>
					
						<span class="property-value" aria-labelledby="resumen-label"><g:fieldValue bean="${sitioInstance}" field="resumen"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sitioInstance?.ranking}">
				<li class="fieldcontain">
					<span id="ranking-label" class="property-label"><g:message code="sitio.ranking.label" default="Ranking" /></span>
					
						<span class="property-value" aria-labelledby="ranking-label"><g:fieldValue bean="${sitioInstance}" field="ranking"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sitioInstance?.telefono}">
				<li class="fieldcontain">
					<span id="telefono-label" class="property-label"><g:message code="sitio.telefono.label" default="Telefono" /></span>
					
						<span class="property-value" aria-labelledby="telefono-label"><g:fieldValue bean="${sitioInstance}" field="telefono"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sitioInstance?.direccion}">
				<li class="fieldcontain">
					<span id="direccion-label" class="property-label"><g:message code="sitio.direccion.label" default="Direccion" /></span>
					
						<span class="property-value" aria-labelledby="direccion-label"><g:fieldValue bean="${sitioInstance}" field="direccion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sitioInstance?.esPublico}">
				<li class="fieldcontain">
					<span id="esPublico-label" class="property-label"><g:message code="sitio.esPublico.label" default="Es Publico" /></span>
					
						<span class="property-value" aria-labelledby="esPublico-label"><g:formatBoolean boolean="${sitioInstance?.esPublico}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sitioInstance?.actividades}">
				<li class="fieldcontain">
					<span id="actividades-label" class="property-label"><g:message code="sitio.actividades.label" default="Actividades" /></span>
					
						<g:each in="${sitioInstance.actividades}" var="a">
						<span class="property-value" aria-labelledby="actividades-label"><g:link controller="actividad" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${sitioInstance?.comentarios}">
				<li class="fieldcontain">
					<span id="comentarios-label" class="property-label"><g:message code="sitio.comentarios.label" default="Comentarios" /></span>
					
						<g:each in="${sitioInstance.comentarios}" var="c">
						<span class="property-value" aria-labelledby="comentarios-label"><g:link controller="comentario" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${sitioInstance?.servicios}">
				<li class="fieldcontain">
					<span id="servicios-label" class="property-label"><g:message code="sitio.servicios.label" default="Servicios" /></span>
					
						<g:each in="${sitioInstance.servicios}" var="s">
						<span class="property-value" aria-labelledby="servicios-label"><g:link controller="servicio" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:sitioInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${sitioInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
