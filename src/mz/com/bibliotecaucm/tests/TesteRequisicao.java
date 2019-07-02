package mz.com.bibliotecaucm.tests;

import java.util.ArrayList;

import org.junit.Ignore;
import org.junit.Test;

import mz.com.bibliotecaucm.dao.RequisicaoDAO;
import mz.com.bibliotecaucm.dto.Requisicao;

public class TesteRequisicao {
	@Test
	@Ignore
	public void insercaoRequisicao() {
		RequisicaoDAO rdao = new RequisicaoDAO();
		rdao.insercaoRequisicao(1, 1);
	}
	
	@Test
	public void testaBusca() {
		RequisicaoDAO rdao = new RequisicaoDAO();
		ArrayList<Requisicao> lista = rdao.ObterRequisicao();
		for(Requisicao r : lista) {
			System.out.println("Código requisicao: " + r.getCodigoRequisicao());
			System.out.println("Data de requisicao: " + r.getDataRegisto());
			System.out.println("Código estudante: " + r.getEstudante().getCodigoEstudante());
			System.out.println("Nome estudante: " + r.getEstudante().getNome() + " " + r.getEstudante().getApelido());
			System.out.println("Curso: "+r.getEstudante().getCurso());
			System.out.println("Nome do livro: "+ r.getLivro().getNomeObra());
			System.out.println("Categria do livro: " + r.getLivro().getCategoria());
			
		}
		
	}
	
	

}
