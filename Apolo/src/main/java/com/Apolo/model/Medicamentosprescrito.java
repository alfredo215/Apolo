package com.Apolo.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the medicamentosprescritos database table.
 * 
 */
@Entity
@Table(name="medicamentosprescritos")
@NamedQuery(name="Medicamentosprescrito.findAll", query="SELECT m FROM Medicamentosprescrito m")
public class Medicamentosprescrito implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int codigoMp;

	private int tipo;

	//bi-directional many-to-one association to Medicamento
	@ManyToOne
	@JoinColumn(name="Nombre")
	private Medicamento medicamento;

	//bi-directional many-to-one association to Paciente
	@OneToMany(mappedBy="medicamentosprescrito")
	private List<Paciente> pacientes;

	public Medicamentosprescrito() {
	}

	public int getCodigoMp() {
		return this.codigoMp;
	}

	public void setCodigoMp(int codigoMp) {
		this.codigoMp = codigoMp;
	}

	public int getTipo() {
		return this.tipo;
	}

	public void setTipo(int tipo) {
		this.tipo = tipo;
	}

	public Medicamento getMedicamento() {
		return this.medicamento;
	}

	public void setMedicamento(Medicamento medicamento) {
		this.medicamento = medicamento;
	}

	public List<Paciente> getPacientes() {
		return this.pacientes;
	}

	public void setPacientes(List<Paciente> pacientes) {
		this.pacientes = pacientes;
	}

	public Paciente addPaciente(Paciente paciente) {
		getPacientes().add(paciente);
		paciente.setMedicamentosprescrito(this);

		return paciente;
	}

	public Paciente removePaciente(Paciente paciente) {
		getPacientes().remove(paciente);
		paciente.setMedicamentosprescrito(null);

		return paciente;
	}

}