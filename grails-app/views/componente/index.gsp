
<%@ page import="cvista_login.Componente" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'componente.label', default: 'Componente')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-componente" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-componente" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nombreComponente" title="${message(code: 'componente.nombreComponente.label', default: 'Nombre Componente')}" />
					
						<g:sortableColumn property="activo" title="${message(code: 'componente.activo.label', default: 'Activo')}" />
					
						<g:sortableColumn property="resumen" title="${message(code: 'componente.resumen.label', default: 'Resumen')}" />
					
						<g:sortableColumn property="ranking" title="${message(code: 'componente.ranking.label', default: 'Ranking')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${componenteInstanceList}" status="i" var="componenteInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${componenteInstance.id}">${fieldValue(bean: componenteInstance, field: "nombreComponente")}</g:link></td>
					
						<td><g:formatBoolean boolean="${componenteInstance.activo}" /></td>
					
						<td>${fieldValue(bean: componenteInstance, field: "resumen")}</td>
					
						<td>${fieldValue(bean: componenteInstance, field: "ranking")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${componenteInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
