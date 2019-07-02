package mz.com.bibliotecaucm.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


import mz.com.bibliotecaucm.conection.Conexao;
import mz.com.bibliotecaucm.dto.Estudante;

public class EstudanteDAO {
	public void insercaoEstudante(int codigo, String nome, String apelido, String curso) {
		
		
		try {
			Connection con = Conexao.getConexao();
			Statement stmt = con.createStatement();
			StringBuilder sql = new StringBuilder();
			sql.append("insert into estudante ");
			sql.append("(idEstudante, codigoEstudante, nomeEstudante, apelidoEstudante, curso, dataregisto) ");
			sql.append("values (default, "+ codigo + ", '"+nome+"', '"+apelido+"', '"+curso+"', now())");
			stmt.execute(sql.toString());
			stmt.close();
			con.close();
			
			System.out.println("Inserido com sucesso!");
		} catch (SQLException e) {
			System.out.println("Erro ao inserir!");
			e.printStackTrace();
		}
		
	}
	
	public ArrayList<Estudante> obterEstudantes(){
		ArrayList<Estudante> l = new ArrayList<Estudante>();
		try {
			
			Connection con = Conexao.getConexao();
			Statement stmt = con.createStatement();
			StringBuilder sql = new StringBuilder();
			sql.append("select * from estudante ");
			sql.append("order by nomeEstudante asc");
			stmt.execute(sql.toString());
			
			ResultSet resultado = stmt.getResultSet();
			while(resultado.next()) {
				Estudante e = new Estudante();
				e.setCodigoEstudante(resultado.getInt("codigoEstudante"));
				e.setNome(resultado.getString("nomeEstudante"));
				e.setApelido(resultado.getString("apelidoEstudante"));
				e.setCurso(resultado.getString("curso"));
				e.setDataRegisto(resultado.getTimestamp("dataRegisto"));
				l.add(e);
				
			}
		} catch (SQLException e) {
			System.out.println("Erro ao listar!");
			e.printStackTrace();
		}
		return l;
	}
	
	
}
