package com.Apolo.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the consulta_odontologica database table.
 * 
 */
@Entity
@Table(name="consulta_odontologica")
@NamedQuery(name="ConsultaOdontologica.findAll", query="SELECT c FROM ConsultaOdontologica c")
public class ConsultaOdontologica implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int codigo_ConsultaO;

	private String sintomas;

	//bi-directional many-to-one association to Doctore
	@ManyToOne
	@JoinColumn(name="Odontologo")
	private Doctore doctore;

	//bi-directional many-to-one association to Enfermedade
	@ManyToOne
	@JoinColumn(name="Enfermedad_Odontologica")
	private Enfermedade enfermedade;

	//bi-directional many-to-one association to Paciente
	@ManyToOne
	@JoinColumn(name="Paciente")
	private Paciente pacienteBean;

	//bi-directional many-to-one association to Paciente
	@OneToMany(mappedBy="consultaOdontologica")
	private List<Paciente> pacientes;

	//bi-directional many-to-one association to RecetaMedica
	@OneToMany(mappedBy="consultaOdontologica")
	private List<RecetaMedica> recetaMedicas;

	public ConsultaOdontologica() {
	}

	public int getCodigo_ConsultaO() {
		return this.codigo_ConsultaO;
	}

	public void setCodigo_ConsultaO(int codigo_ConsultaO) {
		this.codigo_ConsultaO = codigo_ConsultaO;
	}

	public String getSintomas() {
		return this.sintomas;
	}

	public void setSintomas(String sintomas) {
		this.sintomas = sintomas;
	}

	public Doctore getDoctore() {
		return this.doctore;
	}

	public void setDoctore(Doctore doctore) {
		this.doctore = doctore;
	}

	public Enfermedade getEnfermedade() {
		return this.enfermedade;
	}

	public void setEnfermedade(Enfermedade enfermedade) {
		this.enfermedade = enfermedade;
	}

	public Paciente getPacienteBean() {
		return this.pacienteBean;
	}

	public void setPacienteBean(Paciente pacienteBean) {
		this.pacienteBean = pacienteBean;
	}

	public List<Paciente> getPacientes() {
		return this.pacientes;
	}

	public void setPacientes(List<Paciente> pacientes) {
		this.pacientes = pacientes;
	}

	public Paciente addPaciente(Paciente paciente) {
		getPacientes().add(paciente);
		paciente.setConsultaOdontologica(this);

		return paciente;
	}

	public Paciente removePaciente(Paciente paciente) {
		getPacientes().remove(paciente);
		paciente.setConsultaOdontologica(null);

		return paciente;
	}

	public List<RecetaMedica> getRecetaMedicas() {
		return this.recetaMedicas;
	}

	public void setRecetaMedicas(List<RecetaMedica> recetaMedicas) {
		this.recetaMedicas = recetaMedicas;
	}

	public RecetaMedica addRecetaMedica(RecetaMedica recetaMedica) {
		getRecetaMedicas().add(recetaMedica);
		recetaMedica.setConsultaOdontologica(this);

		return recetaMedica;
	}

	public RecetaMedica removeRecetaMedica(RecetaMedica recetaMedica) {
		getRecetaMedicas().remove(recetaMedica);
		recetaMedica.setConsultaOdontologica(null);

		return recetaMedica;
	}

}