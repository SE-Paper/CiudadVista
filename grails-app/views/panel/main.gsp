<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<asset:stylesheet src="bootstrap.css" />
<asset:stylesheet src="font-awesome.css" />
<asset:stylesheet src="morris-0.4.3.min.css" />
<asset:stylesheet src="custom.css" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Panel_Administrador</title>

</head>
<body>
	<div id="wrapper">
		<%-- Render de la barra superior--%>
		<g:render template="/common/topPanel" />
		<%-- Render de la barra lateral, menu de opciones--%>
		<g:render template="/common/leftSide" />
		
		<!-- /. NAV SIDE  -->
		<div id="page-wrapper">
			<div id="page-inner">
				<div class="row">
					<div class="col-md-12">
						<h2>Panel de administraci&oacute;n</h2>
					</div>
				</div>
				<!-- /. ROW  -->
				<hr />
				<div class="row">
					<div class="col-md-4 col-sm-6 col-xs-6">
						<div class="panel panel-back noti-box">
							<span class="icon-box bg-color-red set-icon"> <i
								class="fa fa-envelope-o"></i>
							</span>
							<div class="text-box">
								<p class="main-text">1 nueva(s)</p>
								<p class="text-muted">Solicitud de Usuario Empresario</p>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 col-xs-6">
						<div class="panel panel-back noti-box">
							<span class="icon-box bg-color-green set-icon"> <i
								class="fa fa-bars"></i>
							</span>
							<div class="text-box">
								<p class="main-text">2 nuevo(s)</p>
								<p class="text-muted">mensajes Con contenido ofensivo</p>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 col-xs-6">
						<div class="panel panel-back noti-box">
							<span class="icon-box bg-color-blue set-icon"> <i
								class="fa fa-bell-o"></i>
							</span>
							<div class="text-box">
								<p class="main-text">12 nueva(s)</p>
								<p class="text-muted">actividades ofertadas</p>
							</div>
						</div>
					</div>
				</div>

				<!-- /. ROW  -->
				<div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="panel panel-default">
							<div class="panel-heading">Ciudad Vista te Da la bienvenida.</div>
							<div class="panel-body">
								<div id="morris-bar-chart">Dentro de la aplicación podras
									gestionar y administrar los usuarios, sitios, sevicios y 
									actividades que integra esta comunidad web. 
									</div>
							</div>
						</div>
					</div>

				</div>
				<!-- /. ROW  -->
				<div class="row">
					<div class="col-md-9 col-sm-9 col-xs-9">
						<div
							class="chat-panel panel panel-default chat-boder chat-panel-head">
							<div class="panel-heading">
								<i class="fa fa-comments fa-fw"></i> Chat Box
								<div class="btn-group pull-right">
									<button type="button"
										class="btn btn-default btn-xs dropdown-toggle"
										data-toggle="dropdown">
										<i class="fa fa-chevron-down"></i>
									</button>
									<ul class="dropdown-menu slidedown">
										<li><a href="#"> <i class="fa fa-refresh fa-fw"></i>Refresh
										</a></li>
										<li><a href="#"> <i class="fa fa-check-circle fa-fw"></i>Available
										</a></li>
										<li><a href="#"> <i class="fa fa-times fa-fw"></i>Busy
										</a></li>
										<li><a href="#"> <i class="fa fa-clock-o fa-fw"></i>Away
										</a></li>
										<li class="divider"></li>
										<li><a href="#"> <i class="fa fa-sign-out fa-fw"></i>Sign
												Out
										</a></li>
									</ul>
								</div>
							</div>

							<div class="panel-body">
								<ul class="chat-box">
									<li class="left clearfix">
										<div class="chat-body">
											<strong>Jack Sparrow</strong> <small
												class="pull-right text-muted"> <i
												class="fa fa-clock-o fa-fw"></i>12 mins ago
											</small>
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing
												elit. Curabitur bibendum ornare dolor, quis ullamcorper
												ligula sodales.</p>
										</div>
									</li>
									<li class="right clearfix">
										<div class="chat-body clearfix">
											<small class=" text-muted"> <i
												class="fa fa-clock-o fa-fw"></i>13 mins ago
											</small> <strong class="pull-right">Jhonson Deed</strong>

											<p>Lorem ipsum dolor sit amet, consectetur adipiscing
												elit. Curabitur bibendum ornare dolor, quis ullamcorper
												ligula sodales.</p>
										</div>
									</li>
								</ul>
							</div>

							<div class="panel-footer">
								<div class="input-group">
									<input id="btn-input" type="text" class="form-control input-sm"
										placeholder="Type your message to send..." /> <span
										class="input-group-btn">
										<button class="btn btn-warning btn-sm" id="btn-chat">
											Send</button>
									</span>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3 col-sm-12 col-xs-12">
						<div
							class="panel panel-primary text-center no-boder bg-color-green">
							<div class="panel-body">
								<i class="fa fa-bar-chart-o fa-5x"></i>
								<h3>Análisis</h3>
							</div>
							<div class="panel-footer back-footer-green">Consultar
								estadísticas</div>
						</div>
						<div class="panel panel-primary text-center no-boder bg-color-red">
							<div class="panel-body">
								<i class="fa fa-edit fa-5x"></i>
								<h3>Cumplidos</h3>
							</div>
							<div class="panel-footer back-footer-red">Editar ordenes de
								pago</div>
						</div>
					</div>
				</div>
				<!-- /. ROW  -->
			</div>
			<!-- /. PAGE INNER  -->
		</div>
		<!-- /. PAGE WRAPPER  -->
	</div>
	<!-- /. WRAPPER  -->
	<!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
	<asset:javascript src="jquery-1.10.2.js" />
	<asset:javascript src="bootstrap.min.js" />
	<asset:javascript src="jquery.metisMenu.js" />
	<asset:javascript src="raphael-2.1.0.min.js" />
	<asset:javascript src="morris.js" />
	<asset:javascript src="custom.js" />


</body>
</html>
