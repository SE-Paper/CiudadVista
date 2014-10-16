<!DOCTYPE html>

<html>
<head>
<title>Ciudad Vista</title>
<asset:stylesheet src="style.css" />
<asset:stylesheet src="jquery-ui.css" />
<asset:javascript src="jquery-1.11.1.js" />
<asset:javascript src="jquery-ui.js" />
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
					<div id="create-usuarioBasico" class="content scaffold-create" role="main">
						<g:if test="${flash.message}">
							<div class="message" role="status">
								${flash.message}
							</div>
						</g:if>
						<g:hasErrors bean="${usuarioBasicoInstance}">
							<ul class="errors" role="alert">
								<g:eachError bean="${usuarioBasicoInstance}" var="error">
									<li
										<g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
											error="${error}" /></li>
								</g:eachError>
							</ul>
						</g:hasErrors>
						<g:form url="[resource:usuarioBasicoInstance, action:'save']"><%--
							<fieldset class="form">
								<g:render template="/usuarioBasico/_form" />
							</fieldset>
							<fieldset class="buttons">
								<g:submitButton name="create" class="save"
									value="${message(code: 'default.button.create.label', default: 'Create')}" />
							</fieldset>
						--%></g:form>
					</div>
				</div>
				<h3>Empresario</h3>
				<div>
					<g:form action="registrar" controller="Usuario" method="post">
						<div class="dialog">
							<table>
								<tbody>
									<tr class="prop">
										<td class="nombre"><label>Nombre Empresas:</label></td>
										<td><input type="text" id="nombre" class="login"
											name="nombre" /></td>
									</tr>
									<tr class="prop">
										<td class="name"><label>Número matricula
												mercantil:</label></td>
										<td><input type="text" id="apellido" class="login"
											name="apellido" /></td>
									</tr>
									<tr class="prop">
										<td class="nombre"><label>Nombre administrador:</label></td>
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
					<g:form url="[resource:usuarioBasicoInstance, action:'save']"><%--
							<fieldset class="form">
								<g:render template="../usuarioEmpresario/_form" />
							</fieldset>
							<fieldset class="buttons">
								<g:submitButton name="create" class="save"
									value="${message(code: 'default.button.create.label', default: 'Create')}" />
							</fieldset>
						--%></g:form>
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
