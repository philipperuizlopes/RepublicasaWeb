<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="templates/head.jsp" />

<body class="hold-transition skin-purple sidebar-mini">
	<div class="wrapper">
		<jsp:include page="templates/header.jsp" />
		<jsp:include page="templates/side-bar.jsp" />

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
			<h1>Editar Categoria de Despesa</h1>
			<ol class="breadcrumb">
				<li><a href="#"><i class="fa fa-calendar"></i>Index</a></li>
				<li><a href="#">Lista de Categoria de Despesa</a></li>
				<li class="active">Editar Categoria de Despesa</li>
			</ol>
			</section>

			
			<!-- Main content -->
			<section class="content">
			<div class="row">
				<div class="col-xs-12">
					<div class="box">
						<div class="box-header">
							<h3 class="box-title">Editar Categoria de Despesa</h3>
						</div>
						<!-- /.box-header -->
						<!-- form start -->
						<form method="POST" action="/Republicasa/doEditCategoriaDespesa">
							<div class="box-body">
								<div class="form-group">
									<input type="hidden" name="codigo" value="${ categoria.codigo }" />
									<label for="inputCategoriaDespesa">Categoria de Despesa</label>
									<input type="text" class="form-control" value="${ categoria.nome }" 
										id="inputCategoriaDespesa" name="nome">
								</div>
							</div>
							<!-- /.box-body -->

							<div class="box-footer">
								<button type="submit" class="btn btn-primary">Salvar</button>
							</div>
						</form>
					</div>
					<!-- /.box -->

				</div>
				<!-- /.box-body -->
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
	<jsp:include page="templates/js-imports.jsp" />
</body>
</html>
