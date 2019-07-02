package mz.com.bibliotecaucm.dto;

import java.sql.Timestamp;

public class Requisicao {
	
		private int codigoRequisicao;
		private Estudante estudante = new Estudante();
		private Livro livro = new Livro();
		private Timestamp dataRegisto;
		
		public int getCodigoRequisicao() {
			return codigoRequisicao;
		}
		public void setCodigoRequisicao(int codigoRequisicao) {
			this.codigoRequisicao = codigoRequisicao;
		}
				
		public Estudante getEstudante() {
			return estudante;
		}
		public void setEstudante(Estudante estudante) {
			this.estudante = estudante;
		}
		public Livro getLivro() {
			return livro;
		}
		public void setLivro(Livro livro) {
			this.livro = livro;
		}
		public Timestamp getDataRegisto() {
			return dataRegisto;
		}
		public void setDataRegisto(Timestamp dataRegisto) {
			this.dataRegisto = dataRegisto;
		}
		
		
		
}
