package mz.com.bibliotecaucm.dto;

import java.sql.Timestamp;

public class Estudante {
	private int idEstudante;
	private int codigoEstudante;
	private String nome;
	private String apelido;
	private String curso;
	private Timestamp dataRegisto;
	
	
	
	public int getIdEstudante() {
		return idEstudante;
	}
	public void setIdEstudante(int idEstudante) {
		this.idEstudante = idEstudante;
	}
	public int getCodigoEstudante() {
		return codigoEstudante;
	}
	public void setCodigoEstudante(int codigoEstudante) {
		this.codigoEstudante = codigoEstudante;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getApelido() {
		return apelido;
	}
	public void setApelido(String apelido) {
		this.apelido = apelido;
	}
	public String getCurso() {
		return curso;
	}
	public void setCurso(String curso) {
		this.curso = curso;
	}
	public Timestamp getDataRegisto() {
		return dataRegisto;
	}
	public void setDataRegisto(Timestamp dataRegisto) {
		this.dataRegisto = dataRegisto;
	}
	
	

}
