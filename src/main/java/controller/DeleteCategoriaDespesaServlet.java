package main.java.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.java.dao.CategoriaDespesaDao;

@WebServlet("/deleteCategoriaDespesa")
public class DeleteCategoriaDespesaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DeleteCategoriaDespesaServlet() {
		super();
	}

	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		Integer codigo = Integer.parseInt(request.getParameter("codigo"));
		
		CategoriaDespesaDao.excluirPorCodigo(codigo);
		
		response.sendRedirect(request.getContextPath() + "/categoriasDespesaList");
	}

	@Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
