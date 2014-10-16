
<%@ page import="cvista_login.UsuarioBasico" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'usuarioBasico.label', default: 'UsuarioBasico')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-usuarioBasico" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-usuarioBasico" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="email" title="${message(code: 'usuarioBasico.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'usuarioBasico.password.label', default: 'Password')}" />
					
						<g:sortableColumn property="activo" title="${message(code: 'usuarioBasico.activo.label', default: 'Activo')}" />
					
						<g:sortableColumn property="nombre" title="${message(code: 'usuarioBasico.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="apellido" title="${message(code: 'usuarioBasico.apellido.label', default: 'Apellido')}" />
					
						<g:sortableColumn property="edad" title="${message(code: 'usuarioBasico.edad.label', default: 'Edad')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${usuarioBasicoInstanceList}" status="i" var="usuarioBasicoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${usuarioBasicoInstance.id}">${fieldValue(bean: usuarioBasicoInstance, field: "email")}</g:link></td>
					
						<td>${fieldValue(bean: usuarioBasicoInstance, field: "password")}</td>
					
						<td><g:formatBoolean boolean="${usuarioBasicoInstance.activo}" /></td>
					
						<td>${fieldValue(bean: usuarioBasicoInstance, field: "nombre")}</td>
					
						<td>${fieldValue(bean: usuarioBasicoInstance, field: "apellido")}</td>
					
						<td>${fieldValue(bean: usuarioBasicoInstance, field: "edad")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${usuarioBasicoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
