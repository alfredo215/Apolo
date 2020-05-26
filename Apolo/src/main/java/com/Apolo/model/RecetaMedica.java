package com.Apolo.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the receta_medica database table.
 * 
 */
@Entity
@Table(name="receta_medica")
@NamedQuery(name="RecetaMedica.findAll", query="SELECT r FROM RecetaMedica r")
public class RecetaMedica implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int codigo_Res;

	private int cantidad;

	private String docis;



	//bi-directional many-to-one association to Consulta
	@ManyToOne
	@JoinColumn(name="Enfermedad")
	private Consulta consulta;

	//bi-directional many-to-one association to ConsultaOdontologica
	@ManyToOne
	@JoinColumn(name="enfermedad_Odontologica")
	private ConsultaOdontologica consultaOdontologica;

	//bi-directional many-to-one association to Medicamento
	@ManyToOne
	@JoinColumn(name="Medicamento")
	private Medicamento medicamentoBean;

	public RecetaMedica() {
	}

	public int getCodigo_Res() {
		return this.codigo_Res;
	}

	public void setCodigo_Res(int codigo_Res) {
		this.codigo_Res = codigo_Res;
	}

	public int getCantidad() {
		return this.cantidad;
	}

	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}

	public String getDocis() {
		return this.docis;
	}

	public void setDocis(String docis) {
		this.docis = docis;
	}


	public Consulta getConsulta() {
		return this.consulta;
	}

	public void setConsulta(Consulta consulta) {
		this.consulta = consulta;
	}

	public ConsultaOdontologica getConsultaOdontologica() {
		return this.consultaOdontologica;
	}

	public void setConsultaOdontologica(ConsultaOdontologica consultaOdontologica) {
		this.consultaOdontologica = consultaOdontologica;
	}

	public Medicamento getMedicamentoBean() {
		return this.medicamentoBean;
	}

	public void setMedicamentoBean(Medicamento medicamentoBean) {
		this.medicamentoBean = medicamentoBean;
	}

}