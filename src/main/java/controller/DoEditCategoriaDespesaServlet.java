package main.java.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.java.dao.CategoriaDespesaDao;
import main.java.model.CategoriaDespesa;

@WebServlet("/doEditCategoriaDespesa")
public class DoEditCategoriaDespesaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		Integer codigo = Integer.parseInt(request.getParameter("codigo"));
		String nome = (String) request.getParameter("nome");

		CategoriaDespesa jogo = new CategoriaDespesa(codigo, nome);
		try {
			CategoriaDespesaDao.alterar(jogo);
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
