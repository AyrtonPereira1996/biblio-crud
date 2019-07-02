package mz.com.bibliotecaucm.conection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexao {
	public static Connection getConexao() throws SQLException {
		Connection con = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost/biblio_ucm", "root", "123456");
			System.out.println("Conectado com sucesso!");
		} catch (ClassNotFoundException e) {
			System.out.println("Erro ao conectar!");
			e.printStackTrace();
		}
		return con;
		
	}
	
}
