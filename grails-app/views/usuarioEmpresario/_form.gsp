<%@ page import="cvista_login.UsuarioEmpresario" %>



<div class="fieldcontain ${hasErrors(bean: usuarioEmpresarioInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="usuarioEmpresario.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${usuarioEmpresarioInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioEmpresarioInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="usuarioEmpresario.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="password" required="" value="${usuarioEmpresarioInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioEmpresarioInstance, field: 'activo', 'error')} ">
	<label for="activo">
		<g:message code="usuarioEmpresario.activo.label" default="Activo" />
		
	</label>
	<g:checkBox name="activo" value="${usuarioEmpresarioInstance?.activo}" />

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioEmpresarioInstance, field: 'nomApRep', 'error')} required">
	<label for="nomApRep">
		<g:message code="usuarioEmpresario.nomApRep.label" default="Nom Ap Rep" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nomApRep" required="" value="${usuarioEmpresarioInstance?.nomApRep}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioEmpresarioInstance, field: 'nombreEmpresa', 'error')} required">
	<label for="nombreEmpresa">
		<g:message code="usuarioEmpresario.nombreEmpresa.label" default="Nombre Empresa" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombreEmpresa" required="" value="${usuarioEmpresarioInstance?.nombreEmpresa}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioEmpresarioInstance, field: 'matriculaMercantil', 'error')} required">
	<label for="matriculaMercantil">
		<g:message code="usuarioEmpresario.matriculaMercantil.label" default="Matricula Mercantil" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="matriculaMercantil" required="" value="${usuarioEmpresarioInstance?.matriculaMercantil}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioEmpresarioInstance, field: 'cedula', 'error')} required">
	<label for="cedula">
		<g:message code="usuarioEmpresario.cedula.label" default="Cedula" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cedula" type="number" value="${usuarioEmpresarioInstance.cedula}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioEmpresarioInstance, field: 'servicios', 'error')} ">
	<label for="servicios">
		<g:message code="usuarioEmpresario.servicios.label" default="Servicios" />
		
	</label>
	<g:select name="servicios" from="${cvista_login.Servicio.list()}" multiple="multiple" optionKey="id" size="5" value="${usuarioEmpresarioInstance?.servicios*.id}" class="many-to-many"/>

</div>

