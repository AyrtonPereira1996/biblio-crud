package mz.com.bibliotecaucm.dto;

import java.sql.Timestamp;

public class Livro {
	private int codigoLivro;
	private String nomeObra;
	private String categoria;
	private Timestamp dataRegisto;
	
	
	public int getCodigoLivro() {
		return codigoLivro;
	}
	public void setCodigoLivro(int codigoLivro) {
		this.codigoLivro = codigoLivro;
	}
	public String getNomeObra() {
		return nomeObra;
	}
	public void setNomeObra(String nomeObra) {
		this.nomeObra = nomeObra;
	}
	public String getCategoria() {
		return categoria;
	}
	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}
	public Timestamp getDataRegisto() {
		return dataRegisto;
	}
	public void setDataRegisto(Timestamp dataRegisto) {
		this.dataRegisto = dataRegisto;
	}
	
	
}
