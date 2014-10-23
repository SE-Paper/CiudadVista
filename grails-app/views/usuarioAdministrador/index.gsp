
<%@ page import="cvista_login.UsuarioAdministrador" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'usuarioAdministrador.label', default: 'UsuarioAdministrador')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-usuarioAdministrador" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-usuarioAdministrador" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="email" title="${message(code: 'usuarioAdministrador.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'usuarioAdministrador.password.label', default: 'Password')}" />
					
						<g:sortableColumn property="activo" title="${message(code: 'usuarioAdministrador.activo.label', default: 'Activo')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${usuarioAdministradorInstanceList}" status="i" var="usuarioAdministradorInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${usuarioAdministradorInstance.id}">${fieldValue(bean: usuarioAdministradorInstance, field: "email")}</g:link></td>
					
						<td>${fieldValue(bean: usuarioAdministradorInstance, field: "password")}</td>
					
						<td><g:formatBoolean boolean="${usuarioAdministradorInstance.activo}" /></td>
					
					</tr>
				</g:each>
				
				<table>
				<tr>
					<td>
						<button class="buttons" name="buttonCrudUsuarioAdministrador">
 						<g:link class="controller" controller="UsuarioAdministrador">
 						CRUD Usuario Administrador
 						</g:link>
						</button>
					</td>
					<td>
						<button class="buttons" name="buttonCrudUsuarioBasico">
 						<g:link class="controller" controller="UsuarioBasico">
 						CRUD Usuario Básico
 						</g:link>
 						</button>
 					</td>	
					<td>
						<button class="buttons" name="buttonCrudUsuarioEmpresario">
 						<g:link class="controller" controller="UsuarioEmpresario">
 						CRUD Usuario Empresario
 						</g:link>
 						</button>
 					</td>
					<td>	
						<button class="buttons" name="buttonCrudUsuarioPromotor">
 						<g:link class="controller" controller="UsuarioPromotor">
 						CRUD Usuario Promotor
 						</g:link>
 						</button>
 					</td>	
				</tr>
				</table>
				
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${usuarioAdministradorInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
