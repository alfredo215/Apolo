package com.Apolo.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the vacunas_usuario database table.
 * 
 */
@Entity
@Table(name="vacunas_usuario")
@NamedQuery(name="VacunasUsuario.findAll", query="SELECT v FROM VacunasUsuario v")
public class VacunasUsuario implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int idUsuarioVacuna;

	//bi-directional many-to-one association to Paciente
	@OneToMany(mappedBy="vacunasUsuario")
	private List<Paciente> pacientes;

	//bi-directional many-to-one association to Paciente
	@ManyToOne
	@JoinColumn(name="IdUsuario")
	private Paciente paciente;

	//bi-directional many-to-one association to Vacuna
	@ManyToOne
	@JoinColumn(name="IdVacuna")
	private Vacuna vacuna;

	public VacunasUsuario() {
	}

	public int getIdUsuarioVacuna() {
		return this.idUsuarioVacuna;
	}

	public void setIdUsuarioVacuna(int idUsuarioVacuna) {
		this.idUsuarioVacuna = idUsuarioVacuna;
	}

	public List<Paciente> getPacientes() {
		return this.pacientes;
	}

	public void setPacientes(List<Paciente> pacientes) {
		this.pacientes = pacientes;
	}

	public Paciente addPaciente(Paciente paciente) {
		getPacientes().add(paciente);
		paciente.setVacunasUsuario(this);

		return paciente;
	}

	public Paciente removePaciente(Paciente paciente) {
		getPacientes().remove(paciente);
		paciente.setVacunasUsuario(null);

		return paciente;
	}

	public Paciente getPaciente() {
		return this.paciente;
	}

	public void setPaciente(Paciente paciente) {
		this.paciente = paciente;
	}

	public Vacuna getVacuna() {
		return this.vacuna;
	}

	public void setVacuna(Vacuna vacuna) {
		this.vacuna = vacuna;
	}

}