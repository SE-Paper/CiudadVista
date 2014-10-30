<%@ page import="cvista_login.UsuarioBasico" %>



<div class="fieldcontain ${hasErrors(bean: usuarioBasicoInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="usuarioBasico.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${usuarioBasicoInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioBasicoInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="usuarioBasico.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="password" required="" value="${usuarioBasicoInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioBasicoInstance, field: 'activo', 'error')} ">
	<label for="activo">
		<g:message code="usuarioBasico.activo.label" default="Activo" />
		
	</label>
	<g:checkBox name="activo" value="${usuarioBasicoInstance?.activo}" />

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioBasicoInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="usuarioBasico.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${usuarioBasicoInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioBasicoInstance, field: 'apellido', 'error')} required">
	<label for="apellido">
		<g:message code="usuarioBasico.apellido.label" default="Apellido" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellido" required="" value="${usuarioBasicoInstance?.apellido}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioBasicoInstance, field: 'edad', 'error')} required">
	<label for="edad">
		<g:message code="usuarioBasico.edad.label" default="Edad" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="edad" type="number" min="0" max="110" value="${usuarioBasicoInstance?.edad}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioBasicoInstance, field: 'sexo', 'error')} required">
	<label for="sexo">
		<g:message code="usuarioBasico.sexo.label" default="Sexo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="sexo" required="" value="${usuarioBasicoInstance?.sexo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioBasicoInstance, field: 'ocupacion', 'error')} required">
	<label for="ocupacion">
		<g:message code="usuarioBasico.ocupacion.label" default="Ocupacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="ocupacion" required="" value="${usuarioBasicoInstance?.ocupacion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioBasicoInstance, field: 'fechaNacimiento', 'error')} required">
	<label for="fechaNacimiento">
		<g:message code="usuarioBasico.fechaNacimiento.label" default="Fecha Nacimiento" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="fechaNacimiento" required="" value="${usuarioBasicoInstance?.fechaNacimiento}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioBasicoInstance, field: 'pais', 'error')} required">
	<label for="pais">
		<g:message code="usuarioBasico.pais.label" default="Pais" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="pais" required="" value="${usuarioBasicoInstance?.pais}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioBasicoInstance, field: 'departamento', 'error')} required">
	<label for="departamento">
		<g:message code="usuarioBasico.departamento.label" default="Departamento" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="departamento" required="" value="${usuarioBasicoInstance?.departamento}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioBasicoInstance, field: 'ciudad', 'error')} required">
	<label for="ciudad">
		<g:message code="usuarioBasico.ciudad.label" default="Ciudad" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="ciudad" required="" value="${usuarioBasicoInstance?.ciudad}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioBasicoInstance, field: 'picture', 'error')} ">
	<label for="picture">
		<g:message code="usuarioBasico.picture.label" default="Picture" />
		
	</label>
	<input type="file" id="picture" name="picture"  value="${request.picture}"/>

</div>

