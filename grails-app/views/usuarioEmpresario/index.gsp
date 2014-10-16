
<%@ page import="cvista_login.UsuarioEmpresario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'usuarioEmpresario.label', default: 'UsuarioEmpresario')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-usuarioEmpresario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-usuarioEmpresario" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="email" title="${message(code: 'usuarioEmpresario.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'usuarioEmpresario.password.label', default: 'Password')}" />
					
						<g:sortableColumn property="activo" title="${message(code: 'usuarioEmpresario.activo.label', default: 'Activo')}" />
					
						<g:sortableColumn property="nomApRep" title="${message(code: 'usuarioEmpresario.nomApRep.label', default: 'Nom Ap Rep')}" />
					
						<g:sortableColumn property="nombreEmpresa" title="${message(code: 'usuarioEmpresario.nombreEmpresa.label', default: 'Nombre Empresa')}" />
					
						<g:sortableColumn property="matriculaMercantil" title="${message(code: 'usuarioEmpresario.matriculaMercantil.label', default: 'Matricula Mercantil')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${usuarioEmpresarioInstanceList}" status="i" var="usuarioEmpresarioInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${usuarioEmpresarioInstance.id}">${fieldValue(bean: usuarioEmpresarioInstance, field: "email")}</g:link></td>
					
						<td>${fieldValue(bean: usuarioEmpresarioInstance, field: "password")}</td>
					
						<td><g:formatBoolean boolean="${usuarioEmpresarioInstance.activo}" /></td>
					
						<td>${fieldValue(bean: usuarioEmpresarioInstance, field: "nomApRep")}</td>
					
						<td>${fieldValue(bean: usuarioEmpresarioInstance, field: "nombreEmpresa")}</td>
					
						<td>${fieldValue(bean: usuarioEmpresarioInstance, field: "matriculaMercantil")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${usuarioEmpresarioInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
