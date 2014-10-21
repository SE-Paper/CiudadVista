<div id="header">
	<div class="clearfix">
		<ul class="navigation">
			<li class="active"><a href="index.html">Comunidad</a></li>
			<li><a href="about.html">Sobre el proyecto</a></li>
		</ul>
		<ul class="navigationLogin">
			<li><g:link controller="Usuario" action="registro">Registro</g:link></li>
			<li><g:link controller="Usuario" action="login">Ingreso</g:link></li>

		</ul>
	</div>
</div>
<div id="searchBar">
	<table style="width: 100%">
		<tr>
			<td height="75" width="120">
				<div id="logo">
					<img src="${resource(dir: 'images', file: 'bogota.png')}"
						height="75" width="120">
				</div>
			</td>
			<td height="80" width="130">
				<div id="sideLogo">
					<img src="${resource(dir: 'images', file: 'a1.png')}" height="75"
						width="140">
				</div>
			</td>
			<td width="400">
		<!--<div id="searchT">
					<form id="searchbox" action="../search">
						<input id="search" type="text" placeholder="Escriba aquí">
						<input id="submit" type="submit" value="Buscar">
					</form>
				</div>
				-->
				 <fieldset class="form">
    				<g:form url="[controller:'Search', action:'search']" method="GET">
       					 <div class="fieldcontain">
        		    		<label for="query">Buscar:</label>
          		 			 <g:textField name="query" placeholder="Escriba aquí" value="${params.query}	"/>
        				</div>
    				</g:form>
				</fieldset>			
				 
				<!--<div id="searchT">
					<form id="searchbox" action="Search">
						<input id="search" type="text" placeholder="Escriba aquí" value ="${params.query}" >
						<input id="submit" type="submit" value="Buscar">
					</form>
				</div>-->	</td>
			<td width="80">
				<div id="searchboxB">
					<input type="image"
						src="${resource(dir: 'images', file: 'search.gif')}"
						alt="Búsqueda Avanzada" height="40" width="40">
				</div>
			</td>
			<td width="300">
				<div id="searchboxB">
					<input type="image"
						src="${resource(dir: 'images', file: 'facebook.png')}"
						alt="Búsqueda Avanzada" height="45" width="45">
				</div>
				<div id="searchboxB">
					<input type="image"
						src="${resource(dir: 'images', file: 'youtube.png')}"
						alt="Búsqueda Avanzada" height="45" width="45">
				</div>
				<div id="searchboxB">
					<input type="image"
						src="${resource(dir: 'images', file: 'twitter.ico')}"
						alt="Búsqueda Avanzada" height="45" width="45">
				</div>
				<div id="searchboxB">
					<input type="image"
						src="${resource(dir: 'images', file: 'instagram.png')}"
						alt="Búsqueda Avanzada" height="45" width="45">
				</div>
			</td>
			<td>
				<div id="submitB">
					<input type="image"
						src="${resource(dir: 'images', file: 'city.png')}" height="45"
						width="45">
				</div>
			</td>

		</tr>
	</table>


</div>