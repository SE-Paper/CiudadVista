<nav class="navbar-default navbar-side" role="navigation">
	<div class="sidebar-collapse">
		<ul class="nav" id="main-menu">
			<li class="text-center"></li>
			<li><a href="#"><i class="fa fa-sitemap fa-3x"></i>
					Entidades<span class="fa arrow"></span></a>
				<ul class="nav nav-second-level">
						<li><a href="#">Administradores<span class="fa arrow"></span></a>
							<ul class="nav nav-third-level">
								<li><g:link controller="admin" action="create">Crear</g:link></li>
							<li><g:link controller="admin" action="index">Ver lista</g:link></li>
						</ul></li>
						</ul>
			
				<ul class="nav nav-second-level">
					<li><a href="#">Usuarios Basico<span class="fa arrow"></span></a>
						<ul class="nav nav-third-level">
							<li><g:link controller="usuarioBasico" action="create2">Crear</g:link></li>
							<li><g:link controller="usuarioBasico" action="index2">Ver lista</g:link></li>

						</ul></li>
				</ul>
				<ul class="nav nav-second-level">
					<li><a href="#">Usuarios Empresario<span class="fa arrow"></span></a>
						<ul class="nav nav-third-level">
							<li><g:link controller="usuarioEmpresario" action="create2">Crear</g:link></li>
							<li><g:link controller="usuarioEmpresario" action="index2">Ver lista</g:link></li>

						</ul></li>
				</ul>
				<ul class="nav nav-second-level">
					<li><a href="#">Usuarios Promotor<span class="fa arrow"></span></a>
						<ul class="nav nav-third-level">
							<li><g:link controller="usuarioPromotor" action="create2">Crear</g:link></li>
							<li><g:link controller="usuarioPromotor" action="index2">Ver lista</g:link></li>

						</ul></li>
				</ul>
				<ul class="nav nav-second-level">
					<li><a href="#">Sitios<span class="fa arrow"></span></a>
						<ul class="nav nav-third-level">
							<li><g:link controller="sitio" action="create2">Crear</g:link></li>
							<li><g:link controller="sitio" action="index2">Ver lista</g:link></li>

						</ul></li>
				</ul>
				<ul class="nav nav-second-level">
					<li><a href="#">Servicios<span class="fa arrow"></span></a>
						<ul class="nav nav-third-level">
							<li><g:link controller="servicio" action="create2">Crear</g:link></li>
							<li><g:link controller="servicio" action="index2">Ver lista</g:link></li>

						</ul></li>
				</ul>
				<ul class="nav nav-second-level">
					<li><a href="#">Actividades<span class="fa arrow"></span></a>
						<ul class="nav nav-third-level">
							<li><g:link controller="actividad" action="create2">Crear</g:link></li>
							<li><g:link controller="actividad" action="index2">Ver lista</g:link></li>

						</ul></li>
				</ul>
				
				</li>

			<li><g:link controller="panel" action="blank">
					<i class="fa fa-square-o fa-3x"></i>
					Página en blanco</g:link></li>
		</ul>

	</div>

</nav>