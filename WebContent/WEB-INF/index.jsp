<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>RepubliCasa | Resumo</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!-- Bootstrap 3.3.6 -->
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
<!-- jvectormap -->
<link rel="stylesheet"
	href="plugins/jvectormap/jquery-jvectormap-1.2.2.css">
<!-- Theme style -->
<link rel="stylesheet" href="dist/css/AdminLTE.min.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>

<body class="hold-transition skin-purple sidebar-mini">
	<div class="wrapper">
		<header class="main-header"> <!-- Logo --> <a
			href="index.html" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
			<span class="logo-mini"><b>R</b>Ksa</span> <!-- logo for regular state and mobile devices -->
			<span class="logo-lg"><b>Republi</b>Casa</span>
		</a> <nav class="navbar navbar-static-top"> <!-- Sidebar toggle button-->
		<a href="#" class="sidebar-toggle" data-toggle="offcanvas"
			role="button"> <span class="sr-only">Toggle navigation</span>
		</a> <!-- Navbar Right Menu -->
		<div class="navbar-custom-menu">
			<ul class="nav navbar-nav">
				<!-- Messages: style can be found in dropdown.less-->
				<li class="dropdown messages-menu">
					<!-- Menu toggle button --> <a href="#" class="dropdown-toggle"
					data-toggle="dropdown"> <i class="fa fa-bell-o"></i> <span
						class="label label-success">2</span>
				</a>
					<ul class="dropdown-menu">
						<li class="header">Aprovações Pendentes</li>
						<li>
							<!-- inner menu: contains the messages -->
							<ul class="menu">
								<li>
									<!-- start message --> <a href="aprovar-multas.html">
										<div class="pull-left">
											<!-- User Image -->
											<img src="dist/img/LindaDeMorrer.jpg" class="img-circle"
												alt="User Image">
										</div> <!-- Message title and timestamp -->
										<h4>
											Multa para Larissa Nunes <small><i
												class="fa fa-clock-o"></i> 5 mins</small>
										</h4> <!-- The message -->
										<p>Esqueceu de guardar as vasilhas</p>
										<p>
											<i>Reportada por: Leticia Nunes</i>
										</p>
								</a>
								</li>
								<li>
									<!-- start message --> <a href="aprovar-multas.html">
										<div class="pull-left">
											<!-- User Image -->
											<img src="dist/img/lets.jpg" class="img-circle"
												alt="User Image">
										</div> <!-- Message title and timestamp -->
										<h4>
											Multa para Leticia Nunes <small><i
												class="fa fa-clock-o"></i> 5 mins</small>
										</h4> <!-- The message -->
										<p>Esqueceu de tirar o lixo</p>
										<p>
											<i>Reportada por: Philippe Borges</i>
										</p>
								</a>
								</li>

								<!-- end message -->
							</ul> <!-- /.menu -->
						</li>
						<li class="footer"><a href="aprovar-multas.html">Lista
								completa</a></li>
					</ul>
				</li>
				<!-- /.messages-menu -->

				<!-- Tasks Menu -->
				<li class="dropdown tasks-menu">
					<!-- Menu Toggle Button --> <a href="#" class="dropdown-toggle"
					data-toggle="dropdown"> <i class="fa fa-flag-o"></i> <span
						class="label label-danger">3</span>
				</a>
					<ul class="dropdown-menu">
						<li class="header">Você tem 3 tarefas</li>
						<li>
							<!-- Inner menu: contains the tasks -->
							<ul class="menu">
								<li>
									<!-- Task item --> <a href="calendario-tarefas.html"> <!-- Task title and progress text -->
										<h3>
											Tarefas concluídas <small class="pull-right">66%</small>
										</h3> <!-- The progress bar -->
										<div class="progress xs">
											<!-- Change the css width attribute to simulate progress -->
											<div class="progress-bar progress-bar-aqua"
												style="width: 66%" role="progressbar" aria-valuenow="66"
												aria-valuemin="0" aria-valuemax="100">
												<span class="sr-only">66% Completo</span>
											</div>
										</div>
								</a>
								</li>
								<!-- end task item -->
							</ul>
						</li>
						<li class="footer"><a href="calendario-tarefas.html">Ver
								calendário</a></li>
					</ul>
				</li>
				<!-- User Account Menu -->
				<li class="dropdown user user-menu">
					<!-- Menu Toggle Button --> <a href="#" class="dropdown-toggle"
					data-toggle="dropdown"> <!-- The user image in the navbar--> <img
						src="dist/img/LindaDeMorrer.jpg" class="user-image"
						alt="User Image"> <!-- hidden-xs hides the username on small devices so only the image appears. -->
						<span class="hidden-xs">Larissa Nunes</span>
				</a>
					<ul class="dropdown-menu">
						<!-- The user image in the menu -->
						<li class="user-header"><img src="dist/img/LindaDeMorrer.jpg"
							class="img-circle" alt="User Image">

							<p>Larissa Nunes</p></li>
						<!-- Menu Footer-->
						<li class="user-footer">
							<div class="pull-left">
								<a href="perfil.html" class="btn btn-default btn-flat">Perfil</a>
							</div>
							<div class="pull-right">
								<a href="login.html" class="btn btn-default btn-flat">Sair</a>
							</div>
						</li>
					</ul>
				</li>
			</ul>
		</div>

		</nav> </header>
		<aside class="main-sidebar"> <!-- sidebar: style can be found in sidebar.less -->
		<section class="sidebar"> <!-- Sidebar user panel -->
		<div class="user-panel">
			<div class="pull-left image">
				<img src="dist/img/LindaDeMorrer.jpg" class="img-circle"
					alt="User Image">
			</div>
			<div class="pull-left info">
				<p>Larissa Nunes</p>
				<a href="#"><i class="fa fa-circle text-success"></i> Online</a>
			</div>
		</div>
		<!-- sidebar menu: : style can be found in sidebar.less -->
		<ul class="sidebar-menu">
			<li class="header">CADASTROS</li>
			<li><a href="#"> <i class="fa fa-plus-square"></i> <span>Cadastros</span>
					<i class="fa fa-angle-left pull-right"></i>
			</a>
				<ul class="treeview-menu">
					<li><a href="lista-categoria-atividades.html"><i
							class="fa fa-circle-o"></i>Categoria de Atividades</a></li>
					<li><a href="lista-categorias-despesa.html"><i
							class="fa fa-circle-o"></i>Categoria de despesas</a></li>
					<li><a href="lista-grupos.html"><i class="fa fa-circle-o"></i>Grupos</a></li>
					<li><a href="lista-pessoas.html"><i class="fa fa-circle-o"></i>Pessoas</a></li>
					<li><a href="lista-republicas.html"><i
							class="fa fa-circle-o"></i>República</a></li>
				</ul></li>
			<li class="header">LANÇAMENTOS</li>
			<li class="treeview"><a href="#"> <i class="fa fa-calendar"></i>
					<span>Tarefas</span> <i class="fa fa-angle-left pull-right"></i>
			</a>
				<ul class="treeview-menu">
					<li><a href="calendario-tarefas.html"><i
							class="fa fa-circle-o"></i>Visualizar tarefas</a></li>
					<li><a href="lancar-tarefas.html"><i
							class="fa fa-circle-o"></i>Atribuir tarefa</a></li>
				</ul></li>

			<li class="treeview"><a href="#"> <i class="fa  fa-money"></i>
					<span>Despesas</span> <i class="fa fa-angle-left pull-right"></i>
			</a>
				<ul class="treeview-menu">
					<li><a href="lista-despesas-compartilhadas.html"><i
							class="fa fa-circle-o"></i>Visualizar despesas</a></li>
					<li><a href="lancar-despesas-compartilhadas.html"><i
							class="fa fa-circle-o"></i>Atribuir despesas</a></li>
				</ul></li>


			<li class="treeview"><a href="#"> <i
					class="fa  fa-thumbs-down"></i> <span>Multas</span> <i
					class="fa fa-angle-left pull-right"></i>
			</a>
				<ul class="treeview-menu">
					<li><a href="aprovar-multas.html"><i
							class="fa fa-circle-o"></i>Aprovar multas</a></li>
					<li><a href="lancar-multas.html"><i class="fa fa-circle-o"></i>Lançar
							multas</a></li>
				</ul></li>
		</ul>
		</section> <!-- /.sidebar --> </aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
			<h1>Resumo da República</h1>
			<ol class="breadcrumb">
				<li class="active"><a href="#"><i class="fa fa-calendar"></i>Index</a></li>
			</ol>
			</section>

			<!-- Main content -->
			<section class="content">
			<div class="row">
				<!-- left column -->
				<!-- USERS LIST -->
				<div class="col-md-4">
					<div class="box box-danger">
						<div class="box-header with-border">
							<h3 class="box-title">Ranking</h3>

						</div>
						<!-- /.box-header -->

						<div class="box-body no-padding">
							<ul class="users-list clearfix">
								<li><img src="dist/img/LindaDeMorrer.jpg" alt="User Image">
									<a class="users-list-name" href="#">Larissa Nunes</a> <span
									class="users-list-date">1º Lugar - 150 pontos</span></li>
								<li><img src="dist/img/lets.jpg" alt="User Image"> <a
									class="users-list-name" href="#">Letícia Nunes</a> <span
									class="users-list-date">2º Lugar - 125 pontos</span></li>
								<li><img src="dist/img/gleibson.jpg" alt="User Image">
									<a class="users-list-name" href="#">Gleibson Silva</a> <span
									class="users-list-date">3º Lugar - 120 pontos</span></li>
								<li><img src="dist/img/phil.jpg" alt="User Image"> <a
									class="users-list-name" href="#">Philippe Borges</a> <span
									class="users-list-date">4º Lugar - 120 pontos</span></li>
							</ul>
							<!-- /.users-list -->
						</div>
						<!-- /.box-body -->
						<div class="box-footer text-center">
							<a href="lista-pessoas.html" class="uppercase">Ver todos</a>
						</div>
						<!-- /.box-footer -->
					</div>
					<!-- /.box-body -->
				</div>
				<div class="col-md-4">


					<!-- TABLE: LATEST ORDERS -->
					<div class="box box-info">
						<div class="box-header with-border">
							<h3 class="box-title">Últimas Tarefas</h3>

							<div class="box-tools pull-right">
								<button type="button" class="btn btn-box-tool"
									data-widget="collapse">
									<i class="fa fa-minus"></i>
								</button>
								<button type="button" class="btn btn-box-tool"
									data-widget="remove">
									<i class="fa fa-times"></i>
								</button>
							</div>
						</div>
						<!-- /.box-header -->
						<div class="box-body">
							<div class="table-responsive">
								<table class="table no-margin">
									<thead>
										<tr>
											<th>Responsável</th>
											<th>Tarefa</th>
											<th>Status</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td><a href="perfil.html">Larissa</a></td>
											<td>Limpar a sala</td>
											<td><span class="label label-success">Feito</span></td>
										</tr>
										<tr>
											<td><a href="perfil.html">Leticia</a></td>
											<td>Lavar Vasilhas</td>
											<td><span class="label label-warning">Pendente</span></td>
										</tr>
										<tr>
											<td><a href="perfil.html">Philippe</a></td>
											<td>Varrer o quintal</td>
											<td><span class="label label-danger">Atrasada</span></td>
										</tr>
										<tr>
											<td><a href="perfil.html">Gleibson</a></td>
											<td>Organizar as contas para pagar</td>
											<td><span class="label label-info">Aguardando</span></td>
										</tr>

									</tbody>
								</table>
							</div>
							<!-- /.table-responsive -->
						</div>
						<!-- /.box-body -->
						<div class="box-footer clearfix">
							<a href="lancar-tarefas.html"
								class="btn btn-sm btn-info btn-flat pull-left">Nova Tarefa</a> <a
								href="calendario-tarefas.html"
								class="btn btn-sm btn-default btn-flat pull-right">Ver todas</a>
						</div>
						<!-- /.box-footer -->
					</div>
					<!-- /.box -->
				</div>
				<!-- /.col -->


			</div>
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
		<footer class="main-footer">
		<div class="pull-right hidden-xs">
			<b>Version</b> 2.3.3
		</div>
		<strong>Copyright &copy; 2014-2015 <a
			href="http://almsaeedstudio.com">Almsaeed Studio</a>.
		</strong> All rights reserved. </footer>

	</div>
	<!-- ./wrapper -->

	<!-- jQuery 2.2.0 -->
	<script src="plugins/jQuery/jQuery-2.2.0.min.js"></script>
	<!-- Bootstrap 3.3.6 -->
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<!-- FastClick -->
	<script src="plugins/fastclick/fastclick.js"></script>
	<!-- AdminLTE App -->
	<script src="dist/js/app.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="dist/js/demo.js"></script>
</body>

</html>
