
<%@ page import="cvista_login.UsuarioPromotor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'usuarioPromotor.label', default: 'UsuarioPromotor')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-usuarioPromotor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-usuarioPromotor" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list usuarioPromotor">
			
				<g:if test="${usuarioPromotorInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="usuarioPromotor.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${usuarioPromotorInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioPromotorInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="usuarioPromotor.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${usuarioPromotorInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioPromotorInstance?.activo}">
				<li class="fieldcontain">
					<span id="activo-label" class="property-label"><g:message code="usuarioPromotor.activo.label" default="Activo" /></span>
					
						<span class="property-value" aria-labelledby="activo-label"><g:formatBoolean boolean="${usuarioPromotorInstance?.activo}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioPromotorInstance?.nombreApellido}">
				<li class="fieldcontain">
					<span id="nombreApellido-label" class="property-label"><g:message code="usuarioPromotor.nombreApellido.label" default="Nombre Apellido" /></span>
					
						<span class="property-value" aria-labelledby="nombreApellido-label"><g:fieldValue bean="${usuarioPromotorInstance}" field="nombreApellido"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioPromotorInstance?.nombreRazonCultural}">
				<li class="fieldcontain">
					<span id="nombreRazonCultural-label" class="property-label"><g:message code="usuarioPromotor.nombreRazonCultural.label" default="Nombre Razon Cultural" /></span>
					
						<span class="property-value" aria-labelledby="nombreRazonCultural-label"><g:fieldValue bean="${usuarioPromotorInstance}" field="nombreRazonCultural"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioPromotorInstance?.cedula}">
				<li class="fieldcontain">
					<span id="cedula-label" class="property-label"><g:message code="usuarioPromotor.cedula.label" default="Cedula" /></span>
					
						<span class="property-value" aria-labelledby="cedula-label"><g:fieldValue bean="${usuarioPromotorInstance}" field="cedula"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioPromotorInstance?.picture}">
				<li class="fieldcontain">
					<span id="picture-label" class="property-label"><g:message code="usuarioPromotor.picture.label" default="Picture" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioPromotorInstance?.actividades}">
				<li class="fieldcontain">
					<span id="actividades-label" class="property-label"><g:message code="usuarioPromotor.actividades.label" default="Actividades" /></span>
					
						<g:each in="${usuarioPromotorInstance.actividades}" var="a">
						<span class="property-value" aria-labelledby="actividades-label"><g:link controller="actividad" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:usuarioPromotorInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${usuarioPromotorInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
