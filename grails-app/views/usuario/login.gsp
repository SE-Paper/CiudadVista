<!DOCTYPE html>
<head>
<meta charset="UTF-8" />
<title>Ciudad Vista</title>

<!-- CSS Part Start-->
<asset:stylesheet src="stylesheet.css" />
<asset:stylesheet src="slideshow.css" media="screen" />
<asset:stylesheet src="flexslider.css" media="screen" />
<asset:stylesheet src="colorbox.css" media="screen" />
<asset:stylesheet src="carousel.css" media="screen" />
<!-- CSS Part End-->
<!-- JS Part Start-->
<asset:javascript src="jquery-1.7.1.min.js"/>
<asset:javascript src="jquery.nivo.slider.pack.js"/>
<asset:javascript src="jquery.flexslider.js"/>
<asset:javascript src="jquery.easing-1.3.min.js"/>
<asset:javascript src="jquery.jcarousel.min.js"/>
<asset:javascript src="jquery.colorbox-min.js"/>
<asset:javascript src="tabs.js"/>
<asset:javascript src="cloud_zoom.js"/>
<asset:javascript src="jquery.dcjqaccordion.js"/>
<asset:javascript src="custom.js"/>
<asset:javascript src="html5.js"/>

<!-- JS Part End-->

</head>
<body>
<div class="wrapper-box">
  <div class="main-wrapper">
  
  <g:render template="/common/top" />
  
  <div id="container">
      <!--Middle Part Start-->
      <div id="content">
        <!--Breadcrumb Part Start-->
        <div class="breadcrumb"> <a href="index-2.html">Home</a> » <a href="#">Mi cuenta</a> » <a href="login.html">Login</a> </div>
        <!--Breadcrumb Part End-->
        <h1>Login CiudadVista</h1>
        <div class="login-content">
          <div class="left">
            <h2>Nuevo Usuario</h2>
            <div class="content">
              <p><b>Regístrese!</b></p>
              <p>Creando una cuenta podrá acceder a toda la información de planes, actividades y servicios en la ciudad, además de mantenerse en contacto con sus amigos y compartir con la comunidad los sitios que ha visitado y su opinión al respecto.</p>
              <a class="button" href="#">Continuar</a></br></br>
			   <p><b>¿Empresario, emprendedor?</b></p>
              <p>CiudadVista está abierta a la divulgación y promoción de empresas emergentes, esta es lo oportunidad que ha estado buscando</p>
              <a class="button" href="#">Ver más</a></br></br>
			  <p><b>Gestores culturales</b></p>
              <p>CiudadVista busca promover el desarrollo de actividades culturales en la ciudad, dando la oportunidad a promotores culturales de exponer sus propuestas e invitar la ciudadanía a participar.</p>
              <a class="button" href="#">Ver más</a>
			  </div>
          </div>
        <div class="right">
            <h2>Ingreso a la aplicación</h2>
				   <g:form class="simpleform" style="width:50%;" url="[controller:'Usuario',action:'loginT']">
				    <fieldset>
				      <legend>Login</legend>
				      <p class="info">
				        <g:link controller="user" action="register">Sign up now!</g:link>
				      </p>
				      <g:if test="${flash.message}">
				          <div class="message">${flash.message}</div>
				      </g:if>
				      <p>
				        <label for="email">Username</label>
				        <g:textField name="email" />
				      </p>
				      <p>
				        <label for="password">Password</label>
				        <g:passwordField name="password" />
				      </p>
				      <p class="button">
				        <label>&nbsp;</label>
				        <g:submitButton class="button" name="submitButton" value="Login" />
				      </p>
				    </fieldset>
				  </g:form>
                 </div>
            
        </div>
      </div>
      <!--Middle Part End-->
      <div class="clear"></div>
    </div>  
  <!--Footer Mapa-->
  <footer id="footer">
	    <div class="fpart-inner">
	<!--Ver plan del día-->
      <div class="social-part">
          <h3>Plan del d&iacute;a</h3>
		  <div class="column">
		  
		  </div>
      </div>
	</div>
  </footer>
  <!--Footer Part End-->
  
  <g:render template="/common/footer" />
  
  
</div>
</body>
</html>