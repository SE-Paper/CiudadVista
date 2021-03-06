<%@ page import="cvista_login.UsuarioAdministrador" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
		<g:set var="entityName" value="${message(code: 'usuarioAdministrador.label', default: 'UsuarioAdministrador')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
<asset:stylesheet src="bootstrap.css" />
<asset:stylesheet src="font-awesome.css" />
<asset:stylesheet src="morris-0.4.3.min.css" />
<asset:stylesheet src="custom2.css" />
  		<asset:stylesheet src="application.css"/>
		<asset:javascript src="application.js"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title><g:message code="default.create.label"
		args="[entityName]" /></title>

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
								<a href="#show-usuarioAdministrador" class="skip" tabindex="-1"><g:message
										code="default.link.skip.label"
										default="Skip to content&hellip;" /></a>
								<div class="nav1" role="navigation">
									<ul>
										<li><a class="home" href="${createLink(uri: '/panel')}"><g:message
													code="default.home.label" /></a></li>
										<li><g:link class="list" action="index">
												<g:message code="default.list.label" args="[entityName]" />
											</g:link></li>
										<li><g:link class="create" action="create">
												<g:message code="default.new.label" args="[entityName]" />
											</g:link></li>
									</ul>
								</div>
								<div id="show-usuarioAdministrador"
									class="content scaffold-show" role="main">
									<h1>
										<g:message code="default.show.label" args="[entityName]" />
									</h1>
									<g:if test="${flash.message}">
										<div class="message" role="status">
											${flash.message}
										</div>
									</g:if>
									<ol class="property-list usuarioAdministrador">

										<g:if test="${usuarioAdministradorInstance?.email}">
											<li class="fieldcontain"><span id="email-label"
												class="property-label"><g:message
														code="usuarioAdministrador.email.label" default="Email" /></span>

												<span class="property-value" aria-labelledby="email-label"><g:fieldValue
														bean="${usuarioAdministradorInstance}" field="email" /></span></li>
										</g:if>

										<g:if test="${usuarioAdministradorInstance?.password}">
											<li class="fieldcontain"><span id="password-label"
												class="property-label"><g:message
														code="usuarioAdministrador.password.label"
														default="Password" /></span> <span class="property-value"
												aria-labelledby="password-label"><g:fieldValue
														bean="${usuarioAdministradorInstance}" field="password" /></span>

											</li>
										</g:if>

										<g:if test="${usuarioAdministradorInstance?.activo}">
											<li class="fieldcontain"><span id="activo-label"
												class="property-label"><g:message
														code="usuarioAdministrador.activo.label" default="Activo" /></span>

												<span class="property-value" aria-labelledby="activo-label"><g:formatBoolean
														boolean="${usuarioAdministradorInstance?.activo}" /></span></li>
										</g:if>

									</ol>
									<g:form
										url="[resource:usuarioAdministradorInstance, action:'delete']"
										method="DELETE">
										<fieldset class="buttons">
											<g:link class="edit" action="edit"
												resource="${usuarioAdministradorInstance}">
												<g:message code="default.button.edit.label" default="Edit" />
											</g:link>
											<g:actionSubmit class="delete" action="delete"
												value="${message(code: 'default.button.delete.label', default: 'Delete')}"
												onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
										</fieldset>
									</g:form>
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


