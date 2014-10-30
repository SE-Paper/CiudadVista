<%@ page import="cvista_login.UsuarioPromotor" %>



<div class="fieldcontain ${hasErrors(bean: usuarioPromotorInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="usuarioPromotor.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${usuarioPromotorInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioPromotorInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="usuarioPromotor.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="password" required="" value="${usuarioPromotorInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioPromotorInstance, field: 'activo', 'error')} ">
	<label for="activo">
		<g:message code="usuarioPromotor.activo.label" default="Activo" />
		
	</label>
	<g:checkBox name="activo" value="${usuarioPromotorInstance?.activo}" />

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioPromotorInstance, field: 'nombreApellido', 'error')} required">
	<label for="nombreApellido">
		<g:message code="usuarioPromotor.nombreApellido.label" default="Nombre Apellido" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombreApellido" required="" value="${usuarioPromotorInstance?.nombreApellido}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioPromotorInstance, field: 'nombreRazonCultural', 'error')} required">
	<label for="nombreRazonCultural">
		<g:message code="usuarioPromotor.nombreRazonCultural.label" default="Nombre Razon Cultural" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombreRazonCultural" required="" value="${usuarioPromotorInstance?.nombreRazonCultural}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioPromotorInstance, field: 'cedula', 'error')} required">
	<label for="cedula">
		<g:message code="usuarioPromotor.cedula.label" default="Cedula" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cedula" type="number" value="${usuarioPromotorInstance.cedula}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioPromotorInstance, field: 'picture', 'error')} ">
	<label for="picture">
		<g:message code="usuarioPromotor.picture.label" default="Picture" />
		
	</label>
	<input type="file" id="picture" name="picture"  value="${request.picture}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioPromotorInstance, field: 'actividades', 'error')} ">
	<label for="actividades">
		<g:message code="usuarioPromotor.actividades.label" default="Actividades" />
		
	</label>
	<g:select name="actividades" from="${cvista_login.Actividad.list()}" multiple="multiple" optionKey="id" size="5" value="${usuarioPromotorInstance?.actividades*.id}" class="many-to-many"/>

</div>

