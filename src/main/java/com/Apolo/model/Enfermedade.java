package com.Apolo.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the enfermedades database table.
 * 
 */
@Entity
@Table(name="enfermedades")
@NamedQuery(name="Enfermedade.findAll", query="SELECT e FROM Enfermedade e")
public class Enfermedade implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int enfermedad;

	private String nombre_E;

	private String tipo;

	//bi-directional many-to-one association to Consulta
	@OneToMany(mappedBy="enfermedade")
	private List<Consulta> consultas;

	//bi-directional many-to-one association to ConsultaOdontologica
	@OneToMany(mappedBy="enfermedade")
	private List<ConsultaOdontologica> consultaOdontologicas;

	//bi-directional many-to-one association to Paciente
	@OneToMany(mappedBy="enfermedade")
	private List<Paciente> pacientes;

	public Enfermedade() {
	}

	public int getEnfermedad() {
		return this.enfermedad;
	}

	public void setEnfermedad(int enfermedad) {
		this.enfermedad = enfermedad;
	}

	public String getNombre_E() {
		return this.nombre_E;
	}

	public void setNombre_E(String nombre_E) {
		this.nombre_E = nombre_E;
	}

	public String getTipo() {
		return this.tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public List<Consulta> getConsultas() {
		return this.consultas;
	}

	public void setConsultas(List<Consulta> consultas) {
		this.consultas = consultas;
	}

	public Consulta addConsulta(Consulta consulta) {
		getConsultas().add(consulta);
		consulta.setEnfermedade(this);

		return consulta;
	}

	public Consulta removeConsulta(Consulta consulta) {
		getConsultas().remove(consulta);
		consulta.setEnfermedade(null);

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
		consultaOdontologica.setEnfermedade(this);

		return consultaOdontologica;
	}

	public ConsultaOdontologica removeConsultaOdontologica(ConsultaOdontologica consultaOdontologica) {
		getConsultaOdontologicas().remove(consultaOdontologica);
		consultaOdontologica.setEnfermedade(null);

		return consultaOdontologica;
	}

	public List<Paciente> getPacientes() {
		return this.pacientes;
	}

	public void setPacientes(List<Paciente> pacientes) {
		this.pacientes = pacientes;
	}

	public Paciente addPaciente(Paciente paciente) {
		getPacientes().add(paciente);
		paciente.setEnfermedade(this);

		return paciente;
	}

	public Paciente removePaciente(Paciente paciente) {
		getPacientes().remove(paciente);
		paciente.setEnfermedade(null);

		return paciente;
	}

}