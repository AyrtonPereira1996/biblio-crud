package mz.com.bibliotecaucm.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mz.com.bibliotecaucm.dao.RequisicaoDAO;
import mz.com.bibliotecaucm.dto.Requisicao;

@WebServlet("/obterRequisicao")
public class ObterRequisicaoServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequisicaoDAO rdao = new RequisicaoDAO();
		ArrayList<Requisicao> listaRequisicao = rdao.ObterRequisicao();
		RequestDispatcher rd = req.getRequestDispatcher("/ConsultaRequisicao.jsp");
		req.setAttribute("listaRequisicao", listaRequisicao);
		rd.forward(req, resp);
		
	}

}
