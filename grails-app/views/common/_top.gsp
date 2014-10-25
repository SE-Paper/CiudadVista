
<!--Header Part Start-->
<header id="header">
	<div class="htop">
		<div id="language">
			<span>Comunidad<b></b></span>
			<ul>
				<li><a title="verComunidad">Ver comunidad</a></li>
				<li><a title="crearPLan">Crear Plan</a></li>
			</ul>
		</div>
		<div id="currency">
			<span>Sobre nosotros<b></b></span>
			<ul>
				<li><a title="sobreProyecto">Proyecto Ciudad Vista</a></li>
				<li><a title="politicasPrivacidad">Políticas de privacidad</a>
				</li>
				<li><a title="desarrolladores"><b>Desarrolladores</b></a></li>
			</ul>
		</div>
		<div class="links">
			<g:link controller="usuario" action="login">Login</g:link> 
				<g:link controller="usuario" action="miCuenta">Mi cuenta</g:link><g:link controller="usuario" action="logout">Salir</g:link>
		</div>
	</div>
	<section class="hsecond">
		<div id="logo">
			<a href="index.html"><img height="78" width="193"
				src="${resource(dir: 'images', file: 'asd.png')}" title="Polishop"
				alt="Polishop" /></a>
		</div>
		<div id="search">
			<div class="button-search"></div>
			<g:form url="[controller:'Search', action:'search']" method="GET">
				<input type="text" name="query" placeholder="Escriba aquí..."
					value="${params.query}" />
			</g:form>
		</div>
		<div class="clear"></div>
	</section>
	<!--Top Menu(Horizontal Categories) Start-->
	<nav id="menu">
		<ul>
			<li class="home"><a title="Home" href="index.html"><span>Home</span></a></li>
			<li>
				<div id="search">
					<div class="button-search"></div>
					<input type="text" name="search" placeholder="Search" value="" />
				</div>
			</li>
			<li class="categories_hor"><a>Categorias</a>
				<div>
					<div class="column">
						<a href="category.html">Actividades</a>
						<div>
							<ul>
								<li><a href="category.html">Teatro</a></li>
								<li><a href="category.html">Danza</a></li>
								<li><a href="category.html">Cine</a></li>
							</ul>
						</div>
					</div>
					<div class="column">
						<a href="category.html">Servicios</a>
						<div>
							<ul>
								<li><a href="category.html">Restaurantes</a></li>
								<li><a href="category.html">Bares</a></li>
							</ul>
						</div>
					</div>
					<div class="column">
						<a href="category.html">Sitios</a>
						<div>
							<ul>
								<li><a href="category.html">Cinemateca distrital</a></li>
								<li><a href="category.html">Tiendas de calzado</a></li>
								<li><a href="category.html">Parques</a></li>
								<li><a href="category.html">Museos</a></li>
							</ul>
						</div>
					</div>
					<div class="column">
						<a href="category.html">Planes</a>
						<div>
							<ul>
								<li><a href="category.html">Parques en la ciudad</a></li>
								<li><a href="category.html">El jardín Botánico</a></li>
							</ul>
						</div>
					</div>
					<div class="column">
						<a href="category.html">Recorridos por la ciudad</a>
						<div>
							<ul>
								<li><a href="category.html">Ciclipaseos</a></li>
								<li><a href="category.html">Top Lugares turísticos</a></li>
							</ul>
						</div>
					</div>
				</div></li>
			<li><a href="contact-us.html">Búsqueda Avanzada</a></li>
		</ul>
	</nav>
	<!--Top Menu(Horizontal Categories) End-->
	<!-- Mobile Menu Start-->
	<nav id="menu" class="m-menu">
		<span>Menu</span>
		<ul>
			<li class="categories_hor"><a>Categorias</a>
				<div>
					<div class="column">
						<a href="category.html">Actividades</a>
						<div>
							<ul>
								<li><a href="category.html">Teatro</a></li>
								<li><a href="category.html">Danza</a></li>
								<li><a href="category.html">Cine</a></li>
							</ul>
						</div>
					</div>
					<div class="column">
						<a href="category.html">Servicios</a>
						<div>
							<ul>
								<li><a href="category.html">Restaurantes</a></li>
								<li><a href="category.html">Bares</a></li>
							</ul>
						</div>
					</div>
					<div class="column">
						<a href="category.html">Sitios</a>
						<div>
							<ul>
								<li><a href="category.html">Cinemateca distrital</a></li>
								<li><a href="category.html">Tiendas de calzado</a></li>
								<li><a href="category.html">Parques</a></li>
								<li><a href="category.html">Museos</a></li>
							</ul>
						</div>
					</div>
					<div class="column">
						<a href="category.html">Planes</a>
						<div>
							<ul>
								<li><a href="category.html">Parques en la ciudad</a></li>
								<li><a href="category.html">El jardín Botánico</a></li>
							</ul>
						</div>
					</div>
					<div class="column">
						<a href="category.html">Recorridos por la ciudad</a>
						<div>
							<ul>
								<li><a href="category.html">Ciclipaseos</a></li>
								<li><a href="category.html">Top Lugares turísticos</a></li>
							</ul>
						</div>
					</div>
				</div></li>
		</ul>
	</nav>
	<!-- Mobile Menu End-->
</header>
<!--Header Part End-->