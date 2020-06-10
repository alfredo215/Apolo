package com.Apolo.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the doctores database table.
 * 
 */
@Entity
@Table(name="doctores")
@NamedQuery(name="Doctore.findAll", query="SELECT d FROM Doctore d")
public class Doctore implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int cedula;

	private String apellido;

	private String epecialidad;

	private String nombre_Doc;

	private int telefono;

	//bi-directional many-to-one association to Consulta
	@OneToMany(mappedBy="doctore")
	private List<Consulta> consultas;

	//bi-directional many-to-one association to ConsultaOdontologica
	@OneToMany(mappedBy="doctore")
	private List<ConsultaOdontologica> consultaOdontologicas;

	//bi-directional many-to-one association to Usuarioshospital
	@OneToMany(mappedBy="doctore")
	private List<Usuarioshospital> usuarioshospitals;

	public Doctore() {
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

	public String getNombre_Doc() {
		return this.nombre_Doc;
	}

	public void setNombre_Doc(String nombre_Doc) {
		this.nombre_Doc = nombre_Doc;
	}

	public int getTelefono() {
		return this.telefono;
	}

	public void setTelefono(int telefono) {
		this.telefono = telefono;
	}

	public List<Consulta> getConsultas() {
		return this.consultas;
	}

	public void setConsultas(List<Consulta> consultas) {
		this.consultas = consultas;
	}

	public Consulta addConsulta(Consulta consulta) {
		getConsultas().add(consulta);
		consulta.setDoctore(this);

		return consulta;
	}

	public Consulta removeConsulta(Consulta consulta) {
		getConsultas().remove(consulta);
		consulta.setDoctore(null);

		return consulta;
	}

	public List<ConsultaOdontologica> getConsultaOdontologicas() {
		return this.consultaOdontologicas;
	}

	public void setConsultaOdontologicas(List<ConsultaOdontologica> consultaOdontologicas) {
		this.consultaOdontologicas = consultaOdontologicas;
	}

	public ConsultaOdontologica addConsultaOdontologica(ConsultaOdontologica consultaOdontologica) {
		getConsultaOdontologicas().add(consultaOdontologica);
		consultaOdontologica.setDoctore(this);

		return consultaOdontologica;
	}

	public ConsultaOdontologica removeConsultaOdontologica(ConsultaOdontologica consultaOdontologica) {
		getConsultaOdontologicas().remove(consultaOdontologica);
		consultaOdontologica.setDoctore(null);

		return consultaOdontologica;
	}

	public List<Usuarioshospital> getUsuarioshospitals() {
		return this.usuarioshospitals;
	}

	public void setUsuarioshospitals(List<Usuarioshospital> usuarioshospitals) {
		this.usuarioshospitals = usuarioshospitals;
	}

	public Usuarioshospital addUsuarioshospital(Usuarioshospital usuarioshospital) {
		getUsuarioshospitals().add(usuarioshospital);
		usuarioshospital.setDoctore(this);

		return usuarioshospital;
	}

	public Usuarioshospital removeUsuarioshospital(Usuarioshospital usuarioshospital) {
		getUsuarioshospitals().remove(usuarioshospital);
		usuarioshospital.setDoctore(null);

		return usuarioshospital;
	}

}