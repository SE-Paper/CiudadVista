<%@ page import="cvista_login.UsuarioPromotor" %>



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

<div class="fieldcontain ${hasErrors(bean: usuarioPromotorInstance, field: 'actividades', 'error')} ">
	<label for="actividades">
		<g:message code="usuarioPromotor.actividades.label" default="Actividades" />
		
	</label>
	<g:select name="actividades" from="${cvista_login.Actividad.list()}" multiple="multiple" optionKey="id" size="5" value="${usuarioPromotorInstance?.actividades*.id}" class="many-to-many"/>

</div>

