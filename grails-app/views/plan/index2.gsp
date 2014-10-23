
<%@ page import="cvista_login.Plan" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'plan.label', default: 'Plan')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-plan" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-plan" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nombreComponente" title="${message(code: 'plan.nombreComponente.label', default: 'Nombre Componente')}" />
					
						<g:sortableColumn property="activo" title="${message(code: 'plan.activo.label', default: 'Activo')}" />
					
						<g:sortableColumn property="resumen" title="${message(code: 'plan.resumen.label', default: 'Resumen')}" />
					
						<g:sortableColumn property="ranking" title="${message(code: 'plan.ranking.label', default: 'Ranking')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${planInstanceList}" status="i" var="planInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${planInstance.id}">${fieldValue(bean: planInstance, field: "nombreComponente")}</g:link></td>
					
						<td><g:formatBoolean boolean="${planInstance.activo}" /></td>
					
						<td>${fieldValue(bean: planInstance, field: "resumen")}</td>
					
						<td>${fieldValue(bean: planInstance, field: "ranking")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${planInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
