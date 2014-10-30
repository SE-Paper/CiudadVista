
<%@ page import="cvista_login.UsuarioPromotor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'usuarioPromotor.label', default: 'UsuarioPromotor')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-usuarioPromotor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-usuarioPromotor" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="email" title="${message(code: 'usuarioPromotor.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'usuarioPromotor.password.label', default: 'Password')}" />
					
						<g:sortableColumn property="activo" title="${message(code: 'usuarioPromotor.activo.label', default: 'Activo')}" />
					
						<g:sortableColumn property="nombreApellido" title="${message(code: 'usuarioPromotor.nombreApellido.label', default: 'Nombre Apellido')}" />
					
						<g:sortableColumn property="nombreRazonCultural" title="${message(code: 'usuarioPromotor.nombreRazonCultural.label', default: 'Nombre Razon Cultural')}" />
					
						<g:sortableColumn property="cedula" title="${message(code: 'usuarioPromotor.cedula.label', default: 'Cedula')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${usuarioPromotorInstanceList}" status="i" var="usuarioPromotorInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${usuarioPromotorInstance.id}">${fieldValue(bean: usuarioPromotorInstance, field: "email")}</g:link></td>
					
						<td>${fieldValue(bean: usuarioPromotorInstance, field: "password")}</td>
					
						<td><g:formatBoolean boolean="${usuarioPromotorInstance.activo}" /></td>
					
						<td>${fieldValue(bean: usuarioPromotorInstance, field: "nombreApellido")}</td>
					
						<td>${fieldValue(bean: usuarioPromotorInstance, field: "nombreRazonCultural")}</td>
					
						<td>${fieldValue(bean: usuarioPromotorInstance, field: "cedula")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${usuarioPromotorInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
