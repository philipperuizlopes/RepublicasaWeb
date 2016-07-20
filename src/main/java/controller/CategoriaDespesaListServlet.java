package main.java.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.java.dao.CategoriaDespesaDao;
import main.java.model.CategoriaDespesa;

@WebServlet("/categoriasDespesaList")
public class CategoriaDespesaListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		List<CategoriaDespesa> list = null;
		list = CategoriaDespesaDao.listar();

		request.setAttribute("categoriasDespesaList", list);

		RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/WEB-INF/lista-categorias-despesa.jsp");
		dispatcher.forward(request, response);
	}
}
