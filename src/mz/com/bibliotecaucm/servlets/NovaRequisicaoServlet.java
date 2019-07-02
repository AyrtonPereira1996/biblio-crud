package mz.com.bibliotecaucm.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mz.com.bibliotecaucm.dao.RequisicaoDAO;

@WebServlet ("/novaRequisicao")
public class NovaRequisicaoServlet extends HttpServlet {


	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequisicaoDAO rdao = new RequisicaoDAO();
		int codigoEstudante = Integer.parseInt( req.getParameter("codigoRequiridor"));
		int codigoLivro = Integer.parseInt(req.getParameter("codigoLivro"));
		
		rdao.insercaoRequisicao(codigoEstudante, codigoLivro);
		resp.sendRedirect("obterRequisicao");
		
	}

}
