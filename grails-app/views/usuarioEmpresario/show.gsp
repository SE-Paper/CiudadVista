
<%@ page import="cvista_login.UsuarioEmpresario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'usuarioEmpresario.label', default: 'UsuarioEmpresario')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-usuarioEmpresario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-usuarioEmpresario" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list usuarioEmpresario">
			
				<g:if test="${usuarioEmpresarioInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="usuarioEmpresario.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${usuarioEmpresarioInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioEmpresarioInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="usuarioEmpresario.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${usuarioEmpresarioInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioEmpresarioInstance?.activo}">
				<li class="fieldcontain">
					<span id="activo-label" class="property-label"><g:message code="usuarioEmpresario.activo.label" default="Activo" /></span>
					
						<span class="property-value" aria-labelledby="activo-label"><g:formatBoolean boolean="${usuarioEmpresarioInstance?.activo}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioEmpresarioInstance?.nomApRep}">
				<li class="fieldcontain">
					<span id="nomApRep-label" class="property-label"><g:message code="usuarioEmpresario.nomApRep.label" default="Nom Ap Rep" /></span>
					
						<span class="property-value" aria-labelledby="nomApRep-label"><g:fieldValue bean="${usuarioEmpresarioInstance}" field="nomApRep"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioEmpresarioInstance?.nombreEmpresa}">
				<li class="fieldcontain">
					<span id="nombreEmpresa-label" class="property-label"><g:message code="usuarioEmpresario.nombreEmpresa.label" default="Nombre Empresa" /></span>
					
						<span class="property-value" aria-labelledby="nombreEmpresa-label"><g:fieldValue bean="${usuarioEmpresarioInstance}" field="nombreEmpresa"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioEmpresarioInstance?.matriculaMercantil}">
				<li class="fieldcontain">
					<span id="matriculaMercantil-label" class="property-label"><g:message code="usuarioEmpresario.matriculaMercantil.label" default="Matricula Mercantil" /></span>
					
						<span class="property-value" aria-labelledby="matriculaMercantil-label"><g:fieldValue bean="${usuarioEmpresarioInstance}" field="matriculaMercantil"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioEmpresarioInstance?.cedula}">
				<li class="fieldcontain">
					<span id="cedula-label" class="property-label"><g:message code="usuarioEmpresario.cedula.label" default="Cedula" /></span>
					
						<span class="property-value" aria-labelledby="cedula-label"><g:fieldValue bean="${usuarioEmpresarioInstance}" field="cedula"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioEmpresarioInstance?.picture}">
				<li class="fieldcontain">
					<span id="picture-label" class="property-label"><g:message code="usuarioEmpresario.picture.label" default="Picture" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioEmpresarioInstance?.servicios}">
				<li class="fieldcontain">
					<span id="servicios-label" class="property-label"><g:message code="usuarioEmpresario.servicios.label" default="Servicios" /></span>
					
						<g:each in="${usuarioEmpresarioInstance.servicios}" var="s">
						<span class="property-value" aria-labelledby="servicios-label"><g:link controller="servicio" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:usuarioEmpresarioInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${usuarioEmpresarioInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
