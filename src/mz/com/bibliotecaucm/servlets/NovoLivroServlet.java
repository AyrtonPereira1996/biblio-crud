package mz.com.bibliotecaucm.servlets;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mz.com.bibliotecaucm.dao.LivroDAO;


@WebServlet("/novoLivro")
public class NovoLivroServlet extends HttpServlet {
	

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		LivroDAO ldao = new LivroDAO();
		int codigoLivro = Integer.parseInt(req.getParameter("codigoLivro"));
		String nomeLivro = req.getParameter("nomeLivro");
		String categoriaLivro = req.getParameter("categoriaLivro");
		
		
		ldao.insercaoLivro(codigoLivro, nomeLivro, categoriaLivro);
		resp.sendRedirect("obterAcervo");
		
	}

}
