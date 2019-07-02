package mz.com.bibliotecaucm.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import mz.com.bibliotecaucm.conection.Conexao;
import mz.com.bibliotecaucm.dto.Livro;
import mz.com.bibliotecaucm.dto.Livro_Requirido;

public class LivroRequiridoDAO {
	public ArrayList<Livro_Requirido> obterLivroRequirido(){
		ArrayList<Livro_Requirido> listaLivroRequirido = new ArrayList<Livro_Requirido>();
		try {
			Connection con = Conexao.getConexao();
			Statement stmt = con.createStatement();
			StringBuilder sql = new StringBuilder();
			sql.append("select r.idLivro_requirido, r.numero_vezes, ");
			sql.append("l.codigoLivro, l.nomeLivro, l.categoriaLivro from livro_requirido as r ");
			sql.append("inner join livro as l ");
			sql.append("on r.codigoLivro=l.codigoLivro order by r.numero_vezes desc ");
			stmt.execute(sql.toString());
			ResultSet result = stmt.getResultSet();
			
			
			while (result.next()) {
				Livro l = new Livro();
				Livro_Requirido lr = new Livro_Requirido();
				l.setNomeObra(result.getString("l.nomeLivro"));
				l.setCodigoLivro(result.getInt("l.codigoLivro"));
				l.setCategoria(result.getString("l.categoriaLivro"));
				
				lr.setLivro(l);
				lr.setIdLivro_Requirido(result.getInt("r.idLivro_requirido"));
				lr.setNumero_vezes(result.getInt("r.numero_vezes"));
				
				listaLivroRequirido.add(lr);
				
			}		
			
		} catch (SQLException e) {
			System.out.println("Erro na listagem");
			e.printStackTrace();
		}
		return listaLivroRequirido;
	}


}
