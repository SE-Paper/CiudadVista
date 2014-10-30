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
<asset:javascript src="jquery-1.7.1.min.js" />
<asset:javascript src="jquery.nivo.slider.pack.js" />
<asset:javascript src="jquery.flexslider.js" />
<asset:javascript src="jquery.easing-1.3.min.js" />
<asset:javascript src="jquery.jcarousel.min.js" />
<asset:javascript src="jquery.colorbox-min.js" />
<asset:javascript src="tabs.js" />
<asset:javascript src="cloud_zoom.js" />
<asset:javascript src="jquery.dcjqaccordion.js" />
<asset:javascript src="custom.js" />
<asset:javascript src="html5.js" />

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
					<div class="breadcrumb">
						<g:link uri="/">Búsqueda</g:link>
						»
						<g:link uri="/search/results">Resultados</g:link>
					</div>
					<!--Breadcrumb Part End-->
					<h1>Resultados búsqueda</h1>
					<div class="login-content"></div>
					<!--Middle Part End-->
					<div class="clear"></div>
				</div>
				<!--Footer Part End-->

				<g:render template="/common/footer" />


			</div>
</body>
</html>