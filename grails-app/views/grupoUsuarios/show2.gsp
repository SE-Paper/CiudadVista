<%@ page import="cvista_login.GrupoUsuarios" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<g:set var="entityName" value="${message(code: 'grupoUsuarios.label', default: 'GrupoUsuarios')}" />
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
								<a href="#show-grupoUsuarios" class="skip" tabindex="-1"><g:message
										code="default.link.skip.label"
										default="Skip to content&hellip;" /></a>
								<div class="nav1" role="navigation">
									<ul>
										<li><a class="home" href="${createLink(uri: '/')}"><g:message
													code="default.home.label" /></a></li>
										<li><g:link class="list" action="index2">
												<g:message code="default.list.label" args="[entityName]" />
											</g:link></li>
										<li><g:link class="create" action="create2">
												<g:message code="default.new.label" args="[entityName]" />
											</g:link></li>
									</ul>
								</div>
								<div id="show-grupoUsuarios" class="content scaffold-show"
									role="main">
									<h1>
										<g:message code="default.show.label" args="[entityName]" />
									</h1>
									<g:if test="${flash.message}">
										<div class="message" role="status">
											${flash.message}
										</div>
									</g:if>
									<ol class="property-list grupoUsuarios">

										<g:if test="${grupoUsuariosInstance?.nombreGrupo}">
											<li class="fieldcontain"><span id="nombreGrupo-label"
												class="property-label"><g:message
														code="grupoUsuarios.nombreGrupo.label"
														default="Nombre Grupo" /></span> <span class="property-value"
												aria-labelledby="nombreGrupo-label"><g:fieldValue
														bean="${grupoUsuariosInstance}" field="nombreGrupo" /></span></li>
										</g:if>

										<g:if test="${grupoUsuariosInstance?.activo}">
											<li class="fieldcontain"><span id="activo-label"
												class="property-label"><g:message
														code="grupoUsuarios.activo.label" default="Activo" /></span> <span
												class="property-value" aria-labelledby="activo-label"><g:formatBoolean
														boolean="${grupoUsuariosInstance?.activo}" /></span></li>
										</g:if>

										<g:if test="${grupoUsuariosInstance?.fechaCreacion}">
											<li class="fieldcontain"><span id="fechaCreacion-label"
												class="property-label"><g:message
														code="grupoUsuarios.fechaCreacion.label"
														default="Fecha Creacion" /></span> <span class="property-value"
												aria-labelledby="fechaCreacion-label"><g:formatDate
														date="${grupoUsuariosInstance?.fechaCreacion}" /></span></li>
										</g:if>

										<g:if test="${grupoUsuariosInstance?.descripcion}">
											<li class="fieldcontain"><span id="descripcion-label"
												class="property-label"><g:message
														code="grupoUsuarios.descripcion.label"
														default="Descripcion" /></span> <span class="property-value"
												aria-labelledby="descripcion-label"><g:fieldValue
														bean="${grupoUsuariosInstance}" field="descripcion" /></span></li>
										</g:if>

										<g:if test="${grupoUsuariosInstance?.maximoIntegrantes}">
											<li class="fieldcontain"><span
												id="maximoIntegrantes-label" class="property-label"><g:message
														code="grupoUsuarios.maximoIntegrantes.label"
														default="Maximo Integrantes" /></span> <span
												class="property-value"
												aria-labelledby="maximoIntegrantes-label"><g:fieldValue
														bean="${grupoUsuariosInstance}" field="maximoIntegrantes" /></span>

											</li>
										</g:if>

										<g:if test="${grupoUsuariosInstance?.usuarios}">
											<li class="fieldcontain"><span id="usuarios-label"
												class="property-label"><g:message
														code="grupoUsuarios.usuarios.label" default="Usuarios" /></span>

												<g:each in="${grupoUsuariosInstance.usuarios}" var="u">
													<span class="property-value"
														aria-labelledby="usuarios-label"><g:link
															controller="usuarioBasico" action="show" id="${u.id}">
															${u?.encodeAsHTML()}
														</g:link></span>
												</g:each></li>
										</g:if>

									</ol>
									<g:form url="[resource:grupoUsuariosInstance, action:'delete2']"
										method="DELETE">
										<fieldset class="buttons">
											<g:link class="edit" action="edit2"
												resource="${grupoUsuariosInstance}">
												<g:message code="default.button.edit.label" default="Edit2" />
											</g:link>
											<g:actionSubmit class="delete" action="delete2"
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










