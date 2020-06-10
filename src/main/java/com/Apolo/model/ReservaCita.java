package com.Apolo.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;
import java.util.List;


/**
 * The persistent class for the reserva_cita database table.
 * 
 */
@Entity
@Table(name="reserva_cita")
@NamedQuery(name="ReservaCita.findAll", query="SELECT r FROM ReservaCita r")
public class ReservaCita implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int codigo_Cita;

	@Temporal(TemporalType.DATE)
	private Date fecha_Cita;

	private String hora_Cita;

	//bi-directional many-to-one association to Paciente
	@OneToMany(mappedBy="reservaCita")
	private List<Paciente> pacientes;

	//bi-directional many-to-one association to Paciente
	@ManyToOne
	@JoinColumn(name="CodigoPas")
	private Paciente paciente;

	public ReservaCita() {
	}

	public int getCodigo_Cita() {
		return this.codigo_Cita;
	}

	public void setCodigo_Cita(int codigo_Cita) {
		this.codigo_Cita = codigo_Cita;
	}

	public Date getFecha_Cita() {
		return this.fecha_Cita;
	}

	public void setFecha_Cita(Date fecha_Cita) {
		this.fecha_Cita = fecha_Cita;
	}

	public String getHora_Cita() {
		return this.hora_Cita;
	}

	public void setHora_Cita(String hora_Cita) {
		this.hora_Cita = hora_Cita;
	}

	public List<Paciente> getPacientes() {
		return this.pacientes;
	}

	public void setPacientes(List<Paciente> pacientes) {
		this.pacientes = pacientes;
	}

	public Paciente addPaciente(Paciente paciente) {
		getPacientes().add(paciente);
		paciente.setReservaCita(this);

		return paciente;
	}

	public Paciente removePaciente(Paciente paciente) {
		getPacientes().remove(paciente);
		paciente.setReservaCita(null);

		return paciente;
	}

	public Paciente getPaciente() {
		return this.paciente;
	}

	public void setPaciente(Paciente paciente) {
		this.paciente = paciente;
	}

}