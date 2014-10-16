<%@ page import="cvista_login.UsuarioAdministrador" %>



<div class="fieldcontain ${hasErrors(bean: usuarioAdministradorInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="usuarioAdministrador.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${usuarioAdministradorInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioAdministradorInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="usuarioAdministrador.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="password" required="" value="${usuarioAdministradorInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioAdministradorInstance, field: 'activo', 'error')} ">
	<label for="activo">
		<g:message code="usuarioAdministrador.activo.label" default="Activo" />
		
	</label>
	<g:checkBox name="activo" value="${usuarioAdministradorInstance?.activo}" />

</div>

