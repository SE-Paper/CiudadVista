
<%@ page import="cvista_login.UsuarioBasico" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'usuarioBasico.label', default: 'UsuarioBasico')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-usuarioBasico" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-usuarioBasico" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list usuarioBasico">
			
				<g:if test="${usuarioBasicoInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="usuarioBasico.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${usuarioBasicoInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioBasicoInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="usuarioBasico.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${usuarioBasicoInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioBasicoInstance?.activo}">
				<li class="fieldcontain">
					<span id="activo-label" class="property-label"><g:message code="usuarioBasico.activo.label" default="Activo" /></span>
					
						<span class="property-value" aria-labelledby="activo-label"><g:formatBoolean boolean="${usuarioBasicoInstance?.activo}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioBasicoInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="usuarioBasico.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${usuarioBasicoInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioBasicoInstance?.apellido}">
				<li class="fieldcontain">
					<span id="apellido-label" class="property-label"><g:message code="usuarioBasico.apellido.label" default="Apellido" /></span>
					
						<span class="property-value" aria-labelledby="apellido-label"><g:fieldValue bean="${usuarioBasicoInstance}" field="apellido"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioBasicoInstance?.edad}">
				<li class="fieldcontain">
					<span id="edad-label" class="property-label"><g:message code="usuarioBasico.edad.label" default="Edad" /></span>
					
						<span class="property-value" aria-labelledby="edad-label"><g:fieldValue bean="${usuarioBasicoInstance}" field="edad"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioBasicoInstance?.sexo}">
				<li class="fieldcontain">
					<span id="sexo-label" class="property-label"><g:message code="usuarioBasico.sexo.label" default="Sexo" /></span>
					
						<span class="property-value" aria-labelledby="sexo-label"><g:fieldValue bean="${usuarioBasicoInstance}" field="sexo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioBasicoInstance?.ocupacion}">
				<li class="fieldcontain">
					<span id="ocupacion-label" class="property-label"><g:message code="usuarioBasico.ocupacion.label" default="Ocupacion" /></span>
					
						<span class="property-value" aria-labelledby="ocupacion-label"><g:fieldValue bean="${usuarioBasicoInstance}" field="ocupacion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioBasicoInstance?.fechaNacimiento}">
				<li class="fieldcontain">
					<span id="fechaNacimiento-label" class="property-label"><g:message code="usuarioBasico.fechaNacimiento.label" default="Fecha Nacimiento" /></span>
					
						<span class="property-value" aria-labelledby="fechaNacimiento-label"><g:fieldValue bean="${usuarioBasicoInstance}" field="fechaNacimiento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioBasicoInstance?.pais}">
				<li class="fieldcontain">
					<span id="pais-label" class="property-label"><g:message code="usuarioBasico.pais.label" default="Pais" /></span>
					
						<span class="property-value" aria-labelledby="pais-label"><g:fieldValue bean="${usuarioBasicoInstance}" field="pais"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioBasicoInstance?.departamento}">
				<li class="fieldcontain">
					<span id="departamento-label" class="property-label"><g:message code="usuarioBasico.departamento.label" default="Departamento" /></span>
					
						<span class="property-value" aria-labelledby="departamento-label"><g:fieldValue bean="${usuarioBasicoInstance}" field="departamento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioBasicoInstance?.ciudad}">
				<li class="fieldcontain">
					<span id="ciudad-label" class="property-label"><g:message code="usuarioBasico.ciudad.label" default="Ciudad" /></span>
					
						<span class="property-value" aria-labelledby="ciudad-label"><g:fieldValue bean="${usuarioBasicoInstance}" field="ciudad"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioBasicoInstance?.picture}">
				<li class="fieldcontain">
					<span id="picture-label" class="property-label"><g:message code="usuarioBasico.picture.label" default="Picture" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:usuarioBasicoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${usuarioBasicoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
