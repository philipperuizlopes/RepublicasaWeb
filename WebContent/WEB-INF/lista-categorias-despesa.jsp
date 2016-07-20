<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
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
			<h1>Cadastro de Categoria de Despesa</h1>
			<ol class="breadcrumb">
				<li><a href="#"><i class="fa fa-calendar"></i>Index</a></li>
				<li><a href="#">Cadastros</a></li>
				<li class="active">Cadastro de Categoria de Despesas</li>
			</ol>
			</section>

			<!-- Main content -->
			<section class="content">
			<div class="row">
				<div class="col-xs-12">
					<div class="box">
						<div class="box-header">
							<h3 class="box-title">Lista de Categoria de Despesa</h3>
						</div>
						<!-- /.box-header -->
						<div class="box-body">
							<div>
								<button type="submit" class="btn  btn-success"
									onclick="location.href='createCategoriaDespesa'">Adicionar</button>
							</div>
							<table id="lista" class="table table-bordered table-striped">
								<thead>
								<thead>
									<tr>
										<th width="10%">Código</th>
										<th>Nome</th>
										<th width="20%">Ações</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${categoriasDespesaList}" var="categoria">
										<tr>
											<td>${categoria.codigo}</td>
											<td>${categoria.nome}</td>
											<td>
												<button type="submit" class="btn  btn-success"
													onclick="location.href='editCategoriaDespesa?codigo=${categoria.codigo}'">Editar</button>
												<button type="button" class="btn  btn-danger"
													onclick="location.href='deleteCategoriaDespesa?codigo=${categoria.codigo}'">Excluir</button>
											</td>
										</tr>
									</c:forEach>
								</tfoot>
							</table>
						</div>
						<!-- /.box-body -->
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
