package mz.com.bibliotecaucm.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mz.com.bibliotecaucm.dao.EstudanteDAO;
import mz.com.bibliotecaucm.dto.Estudante;

@WebServlet("/obterEstudante")
public class ObterEstudanteServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		EstudanteDAO edao = new EstudanteDAO();
		ArrayList<Estudante> listaEstudante = edao.obterEstudantes();
		RequestDispatcher rq = req.getRequestDispatcher("/ConsultaEstudante.jsp");
		req.setAttribute("listaEstudante", listaEstudante);
		rq.forward(req, resp);
	}

}
