package com.Apolo.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the enfermeras database table.
 * 
 */
@Entity
@Table(name="enfermeras")
@NamedQuery(name="Enfermera.findAll", query="SELECT e FROM Enfermera e")
public class Enfermera implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int cedula;

	private String apellido;

	private String epecialidad;

	private String nombre_Enfer;

	//bi-directional many-to-one association to Usuarioshospital
	@OneToMany(mappedBy="enfermera")
	private List<Usuarioshospital> usuarioshospitals;

	public Enfermera() {
	}

	public int getCedula() {
		return this.cedula;
	}

	public void setCedula(int cedula) {
		this.cedula = cedula;
	}

	public String getApellido() {
		return this.apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public String getEpecialidad() {
		return this.epecialidad;
	}

	public void setEpecialidad(String epecialidad) {
		this.epecialidad = epecialidad;
	}

	public String getNombre_Enfer() {
		return this.nombre_Enfer;
	}

	public void setNombre_Enfer(String nombre_Enfer) {
		this.nombre_Enfer = nombre_Enfer;
	}

	public List<Usuarioshospital> getUsuarioshospitals() {
		return this.usuarioshospitals;
	}

	public void setUsuarioshospitals(List<Usuarioshospital> usuarioshospitals) {
		this.usuarioshospitals = usuarioshospitals;
	}

	public Usuarioshospital addUsuarioshospital(Usuarioshospital usuarioshospital) {
		getUsuarioshospitals().add(usuarioshospital);
		usuarioshospital.setEnfermera(this);

		return usuarioshospital;
	}

	public Usuarioshospital removeUsuarioshospital(Usuarioshospital usuarioshospital) {
		getUsuarioshospitals().remove(usuarioshospital);
		usuarioshospital.setEnfermera(null);

		return usuarioshospital;
	}

}