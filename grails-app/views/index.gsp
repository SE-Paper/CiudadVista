<!DOCTYPE html>

<html>
<head>
<title>Ciudad Vista</title>
<asset:stylesheet src="style.css" />
</head>
<body>
<body>
	<div id="mainView">
		<div id="topbar">
			<g:render template="/common/top" />
		</div>
		<div id="contenido">
			<div class="xouter3">
				<div class="xleftcol3">
					<p>This is the left col</p>
				</div>
				<div class="xrightcol3">
					<p>This is the rightcol :</p>
				</div>
				<div class="xmiddlecol3">
					<div class="xinner3">
						<p>This is the middlecol:</p>
					</div>
				</div>
			</div>
		</div>

		<div id="footer">
			<g:render template="/common/footer" />
		</div>
	</div>
</body>
</html>
