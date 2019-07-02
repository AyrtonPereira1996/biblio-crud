package mz.com.bibliotecaucm.tests;

import java.util.ArrayList;

import org.junit.Test;

import mz.com.bibliotecaucm.dao.LivroRequiridoDAO;

import mz.com.bibliotecaucm.dto.Livro_Requirido;


public class TesteLivroRequirido {
	
	@Test
	public void testaObterLivro() {
		
		LivroRequiridoDAO lrdao = new LivroRequiridoDAO();
		ArrayList<Livro_Requirido> listaRequirido = lrdao.obterLivroRequirido();
		
		for(Livro_Requirido lr : listaRequirido) {
			System.out.println("Codigo Livro requirido: " + lr.getIdLivro_Requirido());
			System.out.println("Codigo Livro: " + lr.getLivro().getCodigoLivro());
			System.out.println("Nome livro: " + lr.getLivro().getNomeObra());
			System.out.println("Categoria livro: " + lr.getLivro().getCategoria());
			System.out.println("Numeros de requisitamentos: " + lr.getNumero_vezes());
			System.out.println("");
			
			
		}
	}
}
