<!DOCTYPE html>

<html>
<head>
<title>Ciudad Vista</title>
<asset:stylesheet src="style.css" />
</head>
<body>
<body>
	<div id="mainView">
		<div id="topbar">
			<g:render template="/common/top" />
		</div>
		<div id="login-card">
			<h1>Login</h1>
			<g:if test="${flash.message}">
				<div class="message">
					${flash.message}
				</div>
			</g:if>
			<g:form url="[action:'authenticate',controller:'Usuario']" method="post">
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

		<div id="footer">
			<g:render template="/common/footer" />
		</div>
	</div>
</body>
</html>
