package main.java.model;

public class CategoriaDespesa {

	public Integer codigo;
	public String nome;
	
	public CategoriaDespesa() {}

	public CategoriaDespesa(String nome) {
		this.nome = nome;
	}
	
	public CategoriaDespesa(Integer codigo, String nome) {
		this.codigo = codigo;
		this.nome = nome;
	}
	
	public Integer getCodigo() {
		return codigo;
	}
	
	public void setCodigo(Integer codigo) {
		this.codigo = codigo;
	}
	
	public String getNome() {
		return nome;
	}
	
	public void setNome(String nome) {
		this.nome = nome;
	}
	
}
