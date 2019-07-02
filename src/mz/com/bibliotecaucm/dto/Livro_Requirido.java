package mz.com.bibliotecaucm.dto;

public class Livro_Requirido {
	private int idLivro_Requirido;
	private Livro livro = new Livro();
	private int numero_vezes;
	public int getIdLivro_Requirido() {
		return idLivro_Requirido;
	}
	public void setIdLivro_Requirido(int idLivro_Requirido) {
		this.idLivro_Requirido = idLivro_Requirido;
	}
	public Livro getLivro() {
		return livro;
	}
	public void setLivro(Livro livro) {
		this.livro = livro;
	}
	public int getNumero_vezes() {
		return numero_vezes;
	}
	public void setNumero_vezes(int numero_vezes) {
		this.numero_vezes = numero_vezes;
	}
	
	
	
	
}
