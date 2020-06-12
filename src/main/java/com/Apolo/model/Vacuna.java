package com.Apolo.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the vacunas database table.
 * 
 */
@Entity
@Table(name="vacunas")
@NamedQuery(name="Vacuna.findAll", query="SELECT v FROM Vacuna v")
public class Vacuna implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int codigo;

	private String estado;

	private String nombre_Vac;

	private String tipo;

	//bi-directional many-to-one association to VacunasUsuario
	@OneToMany(mappedBy="vacuna")
	private List<VacunasUsuario> vacunasUsuarios;

	public Vacuna() {
	}

	public int getCodigo() {
		return this.codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}

	public String getEstado() {
		return this.estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public String getNombre_Vac() {
		return this.nombre_Vac;
	}

	public void setNombre_Vac(String nombre_Vac) {
		this.nombre_Vac = nombre_Vac;
	}

	public String getTipo() {
		return this.tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public List<VacunasUsuario> getVacunasUsuarios() {
		return this.vacunasUsuarios;
	}

	public void setVacunasUsuarios(List<VacunasUsuario> vacunasUsuarios) {
		this.vacunasUsuarios = vacunasUsuarios;
	}

	public VacunasUsuario addVacunasUsuario(VacunasUsuario vacunasUsuario) {
		getVacunasUsuarios().add(vacunasUsuario);
		vacunasUsuario.setVacuna(this);

		return vacunasUsuario;
	}

	public VacunasUsuario removeVacunasUsuario(VacunasUsuario vacunasUsuario) {
		getVacunasUsuarios().remove(vacunasUsuario);
		vacunasUsuario.setVacuna(null);

		return vacunasUsuario;
	}

}