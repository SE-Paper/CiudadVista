
<%@ page import="cvista_login.UsuarioBasico" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<%--<meta name="layout" content="main">
--%><g:set var="entityName"
	value="${message(code: 'usuarioBasico.label', default: 'UsuarioBasico')}" />
<asset:stylesheet src="bootstrap.css" />
<asset:stylesheet src="font-awesome.css" />
<asset:stylesheet src="morris-0.4.3.min.css" />
<asset:stylesheet src="custom.css" />
  		<asset:stylesheet src="application.css"/>
		<asset:javascript src="application.js"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
	<div id="wrapper">
		<%-- Render de la barra superior--%>
		<g:render template="/common/topPanel" />
		<%-- Render de la barra lateral, menu de opciones--%>
		<g:render template="/common/leftSide" />
		
		<!-- /. NAV SIDE  -->
		<div id="page-wrapper">
			<div id="page-inner">
				<div class="row">
				</div>
				<!-- /. ROW  -->
				<div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="panel panel-default">
							<div class="panel-body">
								<a href="#list-usuarioBasico" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/panel')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create2"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
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
							</div>
						</div>
					</div>
				</div>

				<!-- /. ROW  -->
			</div>
			<!-- /. PAGE INNER  -->
		</div>
		<!-- /. PAGE WRAPPER  -->
	</div>
	<!-- /. WRAPPER  -->
	<!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
	<asset:javascript src="jquery-1.10.2.js" />
	<asset:javascript src="bootstrap.min.js" />
	<asset:javascript src="jquery.metisMenu.js" />
	<asset:javascript src="raphael-2.1.0.min.js" />
	<asset:javascript src="morris.js" />
	<asset:javascript src="custom.js" />
</body>
</html>

