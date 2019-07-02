package mz.com.bibliotecaucm.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


import mz.com.bibliotecaucm.conection.Conexao;
import mz.com.bibliotecaucm.dto.Livro;

public class LivroDAO {
	public void insercaoLivro(int codigoLivro, String nome, String categoria) {
		try {
			Connection con = Conexao.getConexao();
			Statement stmt = con.createStatement();
			StringBuilder sql = new StringBuilder();
			sql.append("insert into livro ");
			sql.append("values(" + codigoLivro + ", '" + nome + "', '" + categoria + "', now())");
			stmt.execute(sql.toString());
			stmt.close();
			con.close();
			System.out.println("Inserido com sucesso!");

		} catch (SQLException e) {
			System.out.println("Erro ao inserir!");
			e.printStackTrace();
		}
	}

	public ArrayList<Livro> buscarLivro() {
		ArrayList<Livro> lista = new ArrayList<Livro>();
		try {
			Connection con = Conexao.getConexao();
			Statement stmt = con.createStatement();
			StringBuilder sql = new StringBuilder();
			sql.append("select * from livro ");
			sql.append("order by nomeLivro asc");
			stmt.executeQuery(sql.toString());
			ResultSet resultado = stmt.getResultSet();

			while (resultado.next()) {
				Livro l = new Livro();
				l.setCodigoLivro(resultado.getInt("codigoLivro"));
				l.setNomeObra(resultado.getString("nomeLivro"));
				l.setCategoria(resultado.getString("categoriaLivro"));
				l.setDataRegisto(resultado.getTimestamp("dataRegisto"));

				lista.add(l);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lista;

	}

}
