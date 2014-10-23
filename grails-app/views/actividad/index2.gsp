
<%@ page import="cvista_login.Actividad" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'actividad.label', default: 'Actividad')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-actividad" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-actividad" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nombreComponente" title="${message(code: 'actividad.nombreComponente.label', default: 'Nombre Componente')}" />
					
						<g:sortableColumn property="activo" title="${message(code: 'actividad.activo.label', default: 'Activo')}" />
					
						<g:sortableColumn property="resumen" title="${message(code: 'actividad.resumen.label', default: 'Resumen')}" />
					
						<g:sortableColumn property="ranking" title="${message(code: 'actividad.ranking.label', default: 'Ranking')}" />
					
						<g:sortableColumn property="fechaInicio" title="${message(code: 'actividad.fechaInicio.label', default: 'Fecha Inicio')}" />
					
						<g:sortableColumn property="fechaFinal" title="${message(code: 'actividad.fechaFinal.label', default: 'Fecha Final')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${actividadInstanceList}" status="i" var="actividadInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${actividadInstance.id}">${fieldValue(bean: actividadInstance, field: "nombreComponente")}</g:link></td>
					
						<td><g:formatBoolean boolean="${actividadInstance.activo}" /></td>
					
						<td>${fieldValue(bean: actividadInstance, field: "resumen")}</td>
					
						<td>${fieldValue(bean: actividadInstance, field: "ranking")}</td>
					
						<td><g:formatDate date="${actividadInstance.fechaInicio}" /></td>
					
						<td><g:formatDate date="${actividadInstance.fechaFinal}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${actividadInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
