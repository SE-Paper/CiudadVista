<!DOCTYPE html>

<html>
<head>
<asset:stylesheet src="style.css" />
<asset:stylesheet src="jquery-ui.css" />
<asset:javascript src="jquery-1.11.1.js" />
<asset:javascript src="jquery-ui.js" />
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'usuarioBasico.label', default: 'UsuarioBasico')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
<script>
	$(function() {
		$("#accordion").accordion();
	});
</script>
</head>
<body>
<body>
	<div id="mainView">
		<div id="topbar">
			<g:render template="/common/top" />
		</div>
		<div id="register-card">
			<div id="accordion">
				<h3>Usuario</h3>
				<div>
					<g:form url="[resource:usuarioBasicoInstance, controller:'UsuarioBasico', action:'save']">
						<fieldset class="form">
							<g:render template="../usuarioBasico/form" />
						</fieldset>
						<fieldset class="buttons">
							<g:submitButton name="create" class="save"
								value="${message(code: 'default.button.create.label', default: 'Create')}" />
						</fieldset>
					</g:form>

				</div>
				<h3>Empresario</h3>
		 	<div> 
						<g:form url="[resource:usuarioEmpresarioInstance, controller:'UsuarioEmpresario', action:'save']">
						<fieldset class="form">
							<g:render template="../usuarioEmpresario/form" />
						</fieldset>
						<fieldset class="buttons">
							<g:submitButton name="create" class="save"
								value="${message(code: 'default.button.create.label', default: 'Create')}" />
						</fieldset>
					</g:form>
				</div>
				<h3>Gestor Cultural</h3>
				<div>
					<g:form action="registrar" controller="Usuario" method="post">
						<div class="dialog">
							<table>
								<tbody>
									<tr class="prop">
										<td class="nombre"><label>Nombre Razón Cultural:</label></td>
										<td><input type="text" id="nombre" class="login"
											name="nombre" /></td>
									</tr>
									<tr class="prop">
										<td class="nombre"><label>Nombre promotor:</label></td>
										<td><input type="text" id="nombre" class="login"
											name="nombre" /></td>
									</tr>
									<tr class="prop">
										<td class="name"><label>C&eacute;dula:</label></td>
										<td><input type="text" id="cedula" class="login"
											name="cedula" /></td>
									</tr>
									<tr class="prop">
										<td class="name"><label>E-mail:</label></td>
										<td><input type="text" id="email" class="login"
											name="email" /></td>
									</tr>
									<tr class="prop">
										<td class="name"><label>Password:</label></td>
										<td><input type="password" id="password" class="login"
											name="password" /></td>
									</tr>
								</tbody>
							</table>
						</div>
						<div>
							<table>
								<tbody>
									<tr class="prop">
										<td>
											<div class="buttons">
												<span class="button"> <input class="login-submit"
													type="submit" value="Registro" />
												</span>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</g:form>
				</div>
			</div>
		</div>
		<%--

				<h1>Registro</h1>
				<g:form action="registrar" controller="Usuario" method="post">
					<div class="dialog">
						<table>
							<tbody>
								<tr class="prop">
									<td class="name"><label for="login">Login:</label></td>
									<td><input type="text" id="login" class="login"
										name="login" /></td>
								</tr>

								<tr class="prop">
									<td class="name"><label for="password">Password:</label></td>
									<td><input type="password" id="password" class="login"
										name="password" /></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div>
						<table>
							<tbody>
								<tr class="prop">
									<td><select name="tipoUsuario">
											<option value="1">Usuario</option>
											<option value="2">Empresario</option>
											<option value="3">Promotor</option>
									</select></td>
									<td>
										<div class="buttons">
											<span class="button"> <input class="login-submit"
												type="submit" value="Login" />
											</span>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</g:form>
			</div>
		--%>

		<div id="footer">
			<g:render template="/common/footer" />
		</div>
	</div>
</body>
</html>
