<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<g:set var="entityName" value="${message(code: 'usuarioEmpresario.label', default: 'UsuarioEmpresario')}" />
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
								<a href="#create-usuarioPromotor" class="skip" tabindex="-1"><g:message
										code="default.link.skip.label"
										default="Skip to content&hellip;" /></a>
								<div class="nav1" role="navigation">
									<ul>
										<li><a class="home" href="${createLink(uri: '/panel')}"><g:message
													code="default.home.label" /></a></li>
										<li><g:link class="list" action="index2">
												<g:message code="default.list.label" args="[entityName]" />
											</g:link></li>
									</ul>
								</div>
								<div id="create-usuarioPromotor" class="content scaffold-create"
									role="main">
									<h1>
										<g:message code="default.create.label" args="[entityName]" />
									</h1>
									<g:if test="${flash.message}">
										<div class="message" role="status">
											${flash.message}
										</div>
									</g:if>
									<g:hasErrors bean="${usuarioPromotorInstance}">
										<ul class="errors" role="alert">
											<g:eachError bean="${usuarioPromotorInstance}" var="error">
												<li
													<g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
														error="${error}" /></li>
											</g:eachError>
										</ul>
									</g:hasErrors>
									<g:uploadForm url="[resource:usuarioPromotorInstance, action:'save2']"
										enctype="multipart/form-data">
										<fieldset class="form">
											<g:render template="form" />
										</fieldset>
										<fieldset class="buttons">
											<g:submitButton name="create" class="save"
												value="${message(code: 'default.button.create.label', default: 'Create')}" />
										</fieldset>
									</g:uploadForm>
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

