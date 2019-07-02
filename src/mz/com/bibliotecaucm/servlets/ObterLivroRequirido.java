package mz.com.bibliotecaucm.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mz.com.bibliotecaucm.dao.LivroRequiridoDAO;
import mz.com.bibliotecaucm.dto.Livro_Requirido;

@WebServlet("/obterLivroRequirido")
public class ObterLivroRequirido extends HttpServlet {

	private static final long serialVersionUID = 1L;
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		LivroRequiridoDAO lrdao = new LivroRequiridoDAO();
		ArrayList<Livro_Requirido> listaRequirido = lrdao.obterLivroRequirido();
		RequestDispatcher rd = req.getRequestDispatcher("/ConsultaLivroRequirido.jsp");
		req.setAttribute("listaRequirido", listaRequirido);
		rd.forward(req, resp);
	}

}
