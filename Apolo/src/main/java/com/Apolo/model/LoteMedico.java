package com.Apolo.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;


/**
 * The persistent class for the lote_medico database table.
 * 
 */
@Entity
@Table(name="lote_medico")
@NamedQuery(name="LoteMedico.findAll", query="SELECT l FROM LoteMedico l")
public class LoteMedico implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int codigo_Lote;

	private double cantidad;

	@Temporal(TemporalType.DATE)
	private Date fecha_Entrega;

	//bi-directional many-to-one association to Medicamento
	@ManyToOne
	@JoinColumn(name="NvMedicamento")
	private Medicamento medicamento;

	public LoteMedico() {
	}

	public int getCodigo_Lote() {
		return this.codigo_Lote;
	}

	public void setCodigo_Lote(int codigo_Lote) {
		this.codigo_Lote = codigo_Lote;
	}

	public double getCantidad() {
		return this.cantidad;
	}

	public void setCantidad(double cantidad) {
		this.cantidad = cantidad;
	}

	public Date getFecha_Entrega() {
		return this.fecha_Entrega;
	}

	public void setFecha_Entrega(Date fecha_Entrega) {
		this.fecha_Entrega = fecha_Entrega;
	}

	public Medicamento getMedicamento() {
		return this.medicamento;
	}

	public void setMedicamento(Medicamento medicamento) {
		this.medicamento = medicamento;
	}

}