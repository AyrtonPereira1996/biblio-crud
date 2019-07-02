package mz.com.bibliotecaucm.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import mz.com.bibliotecaucm.conection.Conexao;
import mz.com.bibliotecaucm.dto.Estudante;
import mz.com.bibliotecaucm.dto.Livro;
import mz.com.bibliotecaucm.dto.Requisicao;

public class RequisicaoDAO {
	public void insercaoRequisicao(int codigoEstudante, int codigoLivro) {
		try {
			Connection con = Conexao.getConexao();
			Statement stmt = con.createStatement();
			StringBuilder sql = new StringBuilder();
			sql.append("insert into requisicao ");
			sql.append("values (default, "+codigoEstudante+", "+codigoLivro+", now())");
			stmt.execute(sql.toString());
			stmt.close();
			con.close();
			System.out.println("Inserido com sucesso!");
			
		} catch (SQLException e) {
			System.out.println("Erro ao inserir!");
			e.printStackTrace();
		}
	}
	
	public ArrayList<Requisicao> ObterRequisicao(){
		ArrayList<Requisicao> lista = new ArrayList<Requisicao>();
		try {
			Connection con = Conexao.getConexao();
			Statement stmt = con.createStatement();
			StringBuilder sql = new StringBuilder();
			sql.append("select r.codigoRequisicao, e.codigoEstudante, e.nomeEstudante, e.apelidoEstudante, e.curso, l.nomeLivro, l.categoriaLivro, r.dataRegisto ");
			sql.append("from requisicao as r ");
			sql.append("inner join estudante as e on r.codigoRequiridor=e.codigoEstudante ");
			sql.append("inner join livro as l on r.codigoLivro=l.codigoLivro ");
			stmt.execute(sql.toString());
			ResultSet resultado = stmt.getResultSet();
			
			while(resultado.next()) {
				Requisicao r = new Requisicao();
				Livro l = new Livro();
				Estudante e = new Estudante();
				r.setCodigoRequisicao(resultado.getInt("r.codigoRequisicao"));
				e.setCodigoEstudante(resultado.getInt("e.codigoEstudante"));
				e.setNome(resultado.getString("e.nomeEstudante"));
				e.setApelido(resultado.getString("e.apelidoEstudante"));
				e.setCurso(resultado.getString("e.curso"));
				l.setNomeObra(resultado.getString("l.nomeLivro"));
				l.setCategoria(resultado.getString("l.categoriaLivro"));
				r.setDataRegisto(resultado.getTimestamp("r.dataRegisto"));
				r.setEstudante(e);
				r.setLivro(l);
				lista.add(r);
			}
		} catch (SQLException e) {
			System.out.println("Erro ao listar!");
			e.printStackTrace();
		}
		return lista;
		
	}
}
