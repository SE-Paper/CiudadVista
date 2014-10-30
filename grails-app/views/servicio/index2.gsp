<%@ page import="cvista_login.Servicio" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<g:set var="entityName" value="${message(code: 'servicio.label', default: 'Servicio')}" />
<title><g:message code="default.create.label" args="[entityName]" /></title>
<asset:stylesheet src="bootstrap.css" />
<asset:stylesheet src="font-awesome.css" />
<asset:stylesheet src="morris-0.4.3.min.css" />
<asset:stylesheet src="custom2.css" />
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
								<a href="#list-servicio" class="skip" tabindex="-1"><g:message
										code="default.link.skip.label"
										default="Skip to content&hellip;" /></a>
								<div class="nav1" role="navigation">
									<ul>
										<li><a class="home" href="${createLink(uri: '/panel')}"><g:message
													code="default.home.label" /></a></li>
										<li><g:link class="create" action="create2">
												<g:message code="default.new.label" args="[entityName]" />
											</g:link></li>
									</ul>
								</div>
								<div id="list-servicio" class="content scaffold-list"
									role="main">
									<h1>
										<g:message code="default.list.label" args="[entityName]" />
									</h1>
									<g:if test="${flash.message}">
										<div class="message" role="status">
											${flash.message}
										</div>
									</g:if>
									<table>
										<thead>
											<tr>

												<g:sortableColumn property="nombreComponente"
													title="${message(code: 'servicio.nombreComponente.label', default: 'Nombre Componente')}" />

												<g:sortableColumn property="activo"
													title="${message(code: 'servicio.activo.label', default: 'Activo')}" />

												<g:sortableColumn property="resumen"
													title="${message(code: 'servicio.resumen.label', default: 'Resumen')}" />

												<g:sortableColumn property="ranking"
													title="${message(code: 'servicio.ranking.label', default: 'Ranking')}" />

												<g:sortableColumn property="fechaActivo"
													title="${message(code: 'servicio.fechaActivo.label', default: 'Fecha Activo')}" />

												<g:sortableColumn property="fechaInactivo"
													title="${message(code: 'servicio.fechaInactivo.label', default: 'Fecha Inactivo')}" />

											</tr>
										</thead>
										<tbody>
											<g:each in="${servicioInstanceList}" status="i"
												var="servicioInstance">
												<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

													<td><g:link action="show2" id="${servicioInstance.id}">
															${fieldValue(bean: servicioInstance, field: "nombreComponente")}
														</g:link></td>

													<td><g:formatBoolean
															boolean="${servicioInstance.activo}" /></td>

													<td>
														${fieldValue(bean: servicioInstance, field: "resumen")}
													</td>

													<td>
														${fieldValue(bean: servicioInstance, field: "ranking")}
													</td>

													<td><g:formatDate
															date="${servicioInstance.fechaActivo}" /></td>

													<td><g:formatDate
															date="${servicioInstance.fechaInactivo}" /></td>

												</tr>
											</g:each>
										</tbody>
									</table>
									<div class="pagination">
										<g:paginate total="${servicioInstanceCount ?: 0}" />
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
	<asset:javascript src="custom2.js" />
</body>
</html>





