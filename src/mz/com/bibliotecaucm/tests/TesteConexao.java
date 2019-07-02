package mz.com.bibliotecaucm.tests;


import java.sql.SQLException;

import org.junit.Test;

import mz.com.bibliotecaucm.conection.Conexao;

public class TesteConexao {
	
	@Test
	public void conexaoTeste() {
		try {
			Conexao.getConexao();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
