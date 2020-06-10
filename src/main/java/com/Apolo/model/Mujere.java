package com.Apolo.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the mujeres database table.
 * 
 */
@Entity
@Table(name="mujeres")
@NamedQuery(name="Mujere.findAll", query="SELECT m FROM Mujere m")
public class Mujere implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int idMujer;

	private String embarazada;

	//bi-directional many-to-one association to Embarazada
	@OneToMany(mappedBy="mujere")
	private List<Embarazada> embarazadas;

	//bi-directional many-to-one association to Paciente
	@ManyToOne
	@JoinColumn(name="Nombre")
	private Paciente paciente;

	public Mujere() {
	}

	public int getIdMujer() {
		return this.idMujer;
	}

	public void setIdMujer(int idMujer) {
		this.idMujer = idMujer;
	}

	public String getEmbarazada() {
		return this.embarazada;
	}

	public void setEmbarazada(String embarazada) {
		this.embarazada = embarazada;
	}

	public List<Embarazada> getEmbarazadas() {
		return this.embarazadas;
	}

	public void setEmbarazadas(List<Embarazada> embarazadas) {
		this.embarazadas = embarazadas;
	}

	public Embarazada addEmbarazada(Embarazada embarazada) {
		getEmbarazadas().add(embarazada);
		embarazada.setMujere(this);

		return embarazada;
	}

	public Embarazada removeEmbarazada(Embarazada embarazada) {
		getEmbarazadas().remove(embarazada);
		embarazada.setMujere(null);

		return embarazada;
	}

	public Paciente getPaciente() {
		return this.paciente;
	}

	public void setPaciente(Paciente paciente) {
		this.paciente = paciente;
	}

}