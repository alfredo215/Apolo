package com.Apolo.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the medicamentos database table.
 * 
 */
@Entity
@Table(name="medicamentos")
@NamedQuery(name="Medicamento.findAll", query="SELECT m FROM Medicamento m")
public class Medicamento implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int codigoM;

	private int cantidad;

	private String nombre;

	private String tipo;

	//bi-directional many-to-one association to Medicamentosprescrito
	@OneToMany(mappedBy="medicamento")
	private List<Medicamentosprescrito> medicamentosprescritos;

	//bi-directional many-to-one association to RecetaMedica
	@OneToMany(mappedBy="medicamentoBean")
	private List<RecetaMedica> recetaMedicas;

	public Medicamento() {
	}

	public int getCodigoM() {
		return this.codigoM;
	}

	public void setCodigoM(int codigoM) {
		this.codigoM = codigoM;
	}

	public int getCantidad() {
		return this.cantidad;
	}

	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}

	public String getNombre() {
		return this.nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getTipo() {
		return this.tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public List<Medicamentosprescrito> getMedicamentosprescritos() {
		return this.medicamentosprescritos;
	}

	public void setMedicamentosprescritos(List<Medicamentosprescrito> medicamentosprescritos) {
		this.medicamentosprescritos = medicamentosprescritos;
	}

	public Medicamentosprescrito addMedicamentosprescrito(Medicamentosprescrito medicamentosprescrito) {
		getMedicamentosprescritos().add(medicamentosprescrito);
		medicamentosprescrito.setMedicamento(this);

		return medicamentosprescrito;
	}

	public Medicamentosprescrito removeMedicamentosprescrito(Medicamentosprescrito medicamentosprescrito) {
		getMedicamentosprescritos().remove(medicamentosprescrito);
		medicamentosprescrito.setMedicamento(null);

		return medicamentosprescrito;
	}

	public List<RecetaMedica> getRecetaMedicas() {
		return this.recetaMedicas;
	}

	public void setRecetaMedicas(List<RecetaMedica> recetaMedicas) {
		this.recetaMedicas = recetaMedicas;
	}

	public RecetaMedica addRecetaMedica(RecetaMedica recetaMedica) {
		getRecetaMedicas().add(recetaMedica);
		recetaMedica.setMedicamentoBean(this);

		return recetaMedica;
	}

	public RecetaMedica removeRecetaMedica(RecetaMedica recetaMedica) {
		getRecetaMedicas().remove(recetaMedica);
		recetaMedica.setMedicamentoBean(null);

		return recetaMedica;
	}

}