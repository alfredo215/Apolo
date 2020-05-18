package com.Apolo.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the usuarioshospital database table.
 * 
 */
@Entity
@NamedQuery(name="Usuarioshospital.findAll", query="SELECT u FROM Usuarioshospital u")
public class Usuarioshospital implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int n_Usuario;

	private String contrasena;

	private String tipo;

	//bi-directional many-to-one association to Doctore
	@ManyToOne
	@JoinColumn(name="Cedula")
	private Doctore doctore;

	//bi-directional many-to-one association to Enfermera
	@ManyToOne
	@JoinColumn(name="Cedula")
	private Enfermera enfermera;

	public Usuarioshospital() {
	}

	public int getN_Usuario() {
		return this.n_Usuario;
	}

	public void setN_Usuario(int n_Usuario) {
		this.n_Usuario = n_Usuario;
	}

	public String getContrasena() {
		return this.contrasena;
	}

	public void setContrasena(String contrasena) {
		this.contrasena = contrasena;
	}

	public String getTipo() {
		return this.tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public Doctore getDoctore() {
		return this.doctore;
	}

	public void setDoctore(Doctore doctore) {
		this.doctore = doctore;
	}

	public Enfermera getEnfermera() {
		return this.enfermera;
	}

	public void setEnfermera(Enfermera enfermera) {
		this.enfermera = enfermera;
	}

}