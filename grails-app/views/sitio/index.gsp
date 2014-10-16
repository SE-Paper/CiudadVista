
<%@ page import="cvista_login.Sitio" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'sitio.label', default: 'Sitio')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-sitio" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-sitio" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nombreComponente" title="${message(code: 'sitio.nombreComponente.label', default: 'Nombre Componente')}" />
					
						<g:sortableColumn property="activo" title="${message(code: 'sitio.activo.label', default: 'Activo')}" />
					
						<g:sortableColumn property="resumen" title="${message(code: 'sitio.resumen.label', default: 'Resumen')}" />
					
						<g:sortableColumn property="ranking" title="${message(code: 'sitio.ranking.label', default: 'Ranking')}" />
					
						<g:sortableColumn property="telefono" title="${message(code: 'sitio.telefono.label', default: 'Telefono')}" />
					
						<g:sortableColumn property="direccion" title="${message(code: 'sitio.direccion.label', default: 'Direccion')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${sitioInstanceList}" status="i" var="sitioInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${sitioInstance.id}">${fieldValue(bean: sitioInstance, field: "nombreComponente")}</g:link></td>
					
						<td><g:formatBoolean boolean="${sitioInstance.activo}" /></td>
					
						<td>${fieldValue(bean: sitioInstance, field: "resumen")}</td>
					
						<td>${fieldValue(bean: sitioInstance, field: "ranking")}</td>
					
						<td>${fieldValue(bean: sitioInstance, field: "telefono")}</td>
					
						<td>${fieldValue(bean: sitioInstance, field: "direccion")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${sitioInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
