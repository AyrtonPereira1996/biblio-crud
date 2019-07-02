package mz.com.bibliotecaucm.tests;

import java.util.ArrayList;
import java.util.List;

import org.junit.Ignore;
import org.junit.Test;


import mz.com.bibliotecaucm.dao.LivroDAO;

import mz.com.bibliotecaucm.dto.Livro;

public class TesteLivro {
	@Test
	@Ignore
	public void testeInsercao() {
		LivroDAO ldao = new LivroDAO();
		ldao.insercaoLivro(2222,"A caminha a lua", "Literatura");
	}
	
	
	@Test
	public void testeObter() {
		LivroDAO ldao = new LivroDAO();
		List<Livro> lista = ldao.buscarLivro();
		
		for(Livro l : lista) {
			System.out.println("Codigo: " + l.getCodigoLivro());
			System.out.println("Nome obra: " + l.getNomeObra());
			System.out.println("Categoria: " + l.getCategoria());
			System.out.println("Data Registo: " + l.getDataRegisto());
		}
	}
}
