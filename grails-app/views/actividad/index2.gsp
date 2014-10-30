<%@ page import="cvista_login.Actividad" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<g:set var="entityName" value="${message(code: 'actividad.label', default: 'Actividad')}" />
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
								<a href="#list-actividad" class="skip" tabindex="-1"><g:message
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
								<div id="list-actividad" class="content scaffold-list"
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
													title="${message(code: 'actividad.nombreComponente.label', default: 'Nombre Componente')}" />

												<g:sortableColumn property="activo"
													title="${message(code: 'actividad.activo.label', default: 'Activo')}" />

												<g:sortableColumn property="resumen"
													title="${message(code: 'actividad.resumen.label', default: 'Resumen')}" />

												<g:sortableColumn property="ranking"
													title="${message(code: 'actividad.ranking.label', default: 'Ranking')}" />

												<g:sortableColumn property="fechaInicio"
													title="${message(code: 'actividad.fechaInicio.label', default: 'Fecha Inicio')}" />

												<g:sortableColumn property="fechaFinal"
													title="${message(code: 'actividad.fechaFinal.label', default: 'Fecha Final')}" />

											</tr>
										</thead>
										<tbody>
											<g:each in="${actividadInstanceList}" status="i"
												var="actividadInstance">
												<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

													<td><g:link action="show2" id="${actividadInstance.id}">
															${fieldValue(bean: actividadInstance, field: "nombreComponente")}
														</g:link></td>

													<td><g:formatBoolean
															boolean="${actividadInstance.activo}" /></td>

													<td>
														${fieldValue(bean: actividadInstance, field: "resumen")}
													</td>

													<td>
														${fieldValue(bean: actividadInstance, field: "ranking")}
													</td>

													<td><g:formatDate
															date="${actividadInstance.fechaInicio}" /></td>

													<td><g:formatDate
															date="${actividadInstance.fechaFinal}" /></td>

												</tr>
											</g:each>
										</tbody>
									</table>
									<div class="pagination">
										<g:paginate total="${actividadInstanceCount ?: 0}" />
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





