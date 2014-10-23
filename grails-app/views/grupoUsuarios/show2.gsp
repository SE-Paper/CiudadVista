
<%@ page import="cvista_login.GrupoUsuarios" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'grupoUsuarios.label', default: 'GrupoUsuarios')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-grupoUsuarios" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-grupoUsuarios" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list grupoUsuarios">
			
				<g:if test="${grupoUsuariosInstance?.nombreGrupo}">
				<li class="fieldcontain">
					<span id="nombreGrupo-label" class="property-label"><g:message code="grupoUsuarios.nombreGrupo.label" default="Nombre Grupo" /></span>
					
						<span class="property-value" aria-labelledby="nombreGrupo-label"><g:fieldValue bean="${grupoUsuariosInstance}" field="nombreGrupo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${grupoUsuariosInstance?.activo}">
				<li class="fieldcontain">
					<span id="activo-label" class="property-label"><g:message code="grupoUsuarios.activo.label" default="Activo" /></span>
					
						<span class="property-value" aria-labelledby="activo-label"><g:formatBoolean boolean="${grupoUsuariosInstance?.activo}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${grupoUsuariosInstance?.fechaCreacion}">
				<li class="fieldcontain">
					<span id="fechaCreacion-label" class="property-label"><g:message code="grupoUsuarios.fechaCreacion.label" default="Fecha Creacion" /></span>
					
						<span class="property-value" aria-labelledby="fechaCreacion-label"><g:formatDate date="${grupoUsuariosInstance?.fechaCreacion}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${grupoUsuariosInstance?.descripcion}">
				<li class="fieldcontain">
					<span id="descripcion-label" class="property-label"><g:message code="grupoUsuarios.descripcion.label" default="Descripcion" /></span>
					
						<span class="property-value" aria-labelledby="descripcion-label"><g:fieldValue bean="${grupoUsuariosInstance}" field="descripcion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${grupoUsuariosInstance?.maximoIntegrantes}">
				<li class="fieldcontain">
					<span id="maximoIntegrantes-label" class="property-label"><g:message code="grupoUsuarios.maximoIntegrantes.label" default="Maximo Integrantes" /></span>
					
						<span class="property-value" aria-labelledby="maximoIntegrantes-label"><g:fieldValue bean="${grupoUsuariosInstance}" field="maximoIntegrantes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${grupoUsuariosInstance?.usuarios}">
				<li class="fieldcontain">
					<span id="usuarios-label" class="property-label"><g:message code="grupoUsuarios.usuarios.label" default="Usuarios" /></span>
					
						<g:each in="${grupoUsuariosInstance.usuarios}" var="u">
						<span class="property-value" aria-labelledby="usuarios-label"><g:link controller="usuarioBasico" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:grupoUsuariosInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${grupoUsuariosInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
