package mz.com.bibliotecaucm.tests;

import java.util.ArrayList;

import org.junit.Ignore;
import org.junit.Test;

import mz.com.bibliotecaucm.dao.EstudanteDAO;
import mz.com.bibliotecaucm.dto.Estudante;

public class TesteEstudante {
	@Test
	@Ignore
	public void testeInsercao() {
		EstudanteDAO edao = new EstudanteDAO();
		edao.insercaoEstudante(198273804,"Joana", "Silva", "Direito");
	}
	
	@Test
	public void testeBusca() {
		EstudanteDAO edao = new EstudanteDAO();
		ArrayList<Estudante> lista = edao.obterEstudantes();
		
		for(Estudante e : lista) {
			System.out.println("Codigo: " + e.getCodigoEstudante());
			System.out.println("Nome estudante: " + e.getNome() + " " + e.getApelido());
			System.out.println("Curso: " + e.getCurso());
			System.out.println("Data de registo: "+ e.getDataRegisto());
		
		}
	}

}
