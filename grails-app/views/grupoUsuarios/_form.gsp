<%@ page import="cvista_login.GrupoUsuarios" %>



<div class="fieldcontain ${hasErrors(bean: grupoUsuariosInstance, field: 'nombreGrupo', 'error')} required">
	<label for="nombreGrupo">
		<g:message code="grupoUsuarios.nombreGrupo.label" default="Nombre Grupo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombreGrupo" required="" value="${grupoUsuariosInstance?.nombreGrupo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: grupoUsuariosInstance, field: 'activo', 'error')} ">
	<label for="activo">
		<g:message code="grupoUsuarios.activo.label" default="Activo" />
		
	</label>
	<g:checkBox name="activo" value="${grupoUsuariosInstance?.activo}" />

</div>

<div class="fieldcontain ${hasErrors(bean: grupoUsuariosInstance, field: 'fechaCreacion', 'error')} required">
	<label for="fechaCreacion">
		<g:message code="grupoUsuarios.fechaCreacion.label" default="Fecha Creacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaCreacion" precision="day"  value="${grupoUsuariosInstance?.fechaCreacion}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: grupoUsuariosInstance, field: 'descripcion', 'error')} required">
	<label for="descripcion">
		<g:message code="grupoUsuarios.descripcion.label" default="Descripcion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descripcion" required="" value="${grupoUsuariosInstance?.descripcion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: grupoUsuariosInstance, field: 'maximoIntegrantes', 'error')} required">
	<label for="maximoIntegrantes">
		<g:message code="grupoUsuarios.maximoIntegrantes.label" default="Maximo Integrantes" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="maximoIntegrantes" type="number" value="${grupoUsuariosInstance.maximoIntegrantes}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: grupoUsuariosInstance, field: 'usuarios', 'error')} ">
	<label for="usuarios">
		<g:message code="grupoUsuarios.usuarios.label" default="Usuarios" />
		
	</label>
	<g:select name="usuarios" from="${cvista_login.UsuarioBasico.list()}" multiple="multiple" optionKey="id" size="5" value="${grupoUsuariosInstance?.usuarios*.id}" class="many-to-many"/>

</div>

