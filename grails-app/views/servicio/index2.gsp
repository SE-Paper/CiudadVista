
<%@ page import="cvista_login.Servicio" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'servicio.label', default: 'Servicio')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-servicio" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-servicio" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nombreComponente" title="${message(code: 'servicio.nombreComponente.label', default: 'Nombre Componente')}" />
					
						<g:sortableColumn property="activo" title="${message(code: 'servicio.activo.label', default: 'Activo')}" />
					
						<g:sortableColumn property="resumen" title="${message(code: 'servicio.resumen.label', default: 'Resumen')}" />
					
						<g:sortableColumn property="ranking" title="${message(code: 'servicio.ranking.label', default: 'Ranking')}" />
					
						<g:sortableColumn property="fechaActivo" title="${message(code: 'servicio.fechaActivo.label', default: 'Fecha Activo')}" />
					
						<g:sortableColumn property="fechaInactivo" title="${message(code: 'servicio.fechaInactivo.label', default: 'Fecha Inactivo')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${servicioInstanceList}" status="i" var="servicioInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${servicioInstance.id}">${fieldValue(bean: servicioInstance, field: "nombreComponente")}</g:link></td>
					
						<td><g:formatBoolean boolean="${servicioInstance.activo}" /></td>
					
						<td>${fieldValue(bean: servicioInstance, field: "resumen")}</td>
					
						<td>${fieldValue(bean: servicioInstance, field: "ranking")}</td>
					
						<td><g:formatDate date="${servicioInstance.fechaActivo}" /></td>
					
						<td><g:formatDate date="${servicioInstance.fechaInactivo}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${servicioInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
