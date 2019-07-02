package mz.com.bibliotecaucm.servlets;

import java.io.IOException;
import java.util.ArrayList;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mz.com.bibliotecaucm.dao.LivroDAO;
import mz.com.bibliotecaucm.dto.Livro;

@WebServlet("/obterAcervo")
public class ObterAcervoServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		LivroDAO ldao = new LivroDAO();
		ArrayList<Livro> listaAcervo = ldao.buscarLivro();
		
		RequestDispatcher rd =req.getRequestDispatcher("/ConsultaAcervo.jsp");
		req.setAttribute("listaAcervo", listaAcervo);
		rd.forward(req, resp);
	}

}
