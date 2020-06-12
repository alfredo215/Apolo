package com.Apolo.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;


/**
 * The persistent class for the embarazadas database table.
 * 
 */
@Entity
@Table(name="embarazadas")
@NamedQuery(name="Embarazada.findAll", query="SELECT e FROM Embarazada e")
public class Embarazada implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int idEmbarazada;

	@Temporal(TemporalType.DATE)
	private Date cita;

	//bi-directional many-to-one association to Mujere
	@ManyToOne
	@JoinColumn(name="NombreE")
	private Mujere mujere;

	public Embarazada() {
	}

	public int getIdEmbarazada() {
		return this.idEmbarazada;
	}

	public void setIdEmbarazada(int idEmbarazada) {
		this.idEmbarazada = idEmbarazada;
	}

	public Date getCita() {
		return this.cita;
	}

	public void setCita(Date cita) {
		this.cita = cita;
	}

	public Mujere getMujere() {
		return this.mujere;
	}

	public void setMujere(Mujere mujere) {
		this.mujere = mujere;
	}

}