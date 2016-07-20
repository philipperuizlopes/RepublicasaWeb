package main.java.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.java.dao.CategoriaDespesaDao;
import main.java.model.CategoriaDespesa;

@WebServlet("/doCreateCategoriaDespesa")
public class DoCreateCategoriaDespesaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String nome = (String) request.getParameter("nome");

		CategoriaDespesa categoria = new CategoriaDespesa(nome);
		try {
			CategoriaDespesaDao.incluir(categoria);
		} catch (Exception e) {
			e.printStackTrace();
		}

		response.sendRedirect(request.getContextPath() + "/categoriasDespesaList");
	}
	

	@Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
