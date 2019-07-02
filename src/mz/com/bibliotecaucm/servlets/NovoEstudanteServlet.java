package mz.com.bibliotecaucm.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mz.com.bibliotecaucm.dao.EstudanteDAO;

@WebServlet("/novoEstudante")
public class NovoEstudanteServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		EstudanteDAO edao = new EstudanteDAO();
		int codigoEstudante = Integer.parseInt(req.getParameter("codigoEstudante"));
		String nomeEstudante = req.getParameter("nomeEstudante");
		String apelidoEstudante = req.getParameter("apelidoEstudante");
		String curso = req.getParameter("cursoEstudante");
		
		
		edao.insercaoEstudante(codigoEstudante, nomeEstudante, apelidoEstudante, curso);
		resp.sendRedirect("obterEstudante");
		
	}

}
