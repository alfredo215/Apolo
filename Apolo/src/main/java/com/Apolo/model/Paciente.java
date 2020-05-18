package com.Apolo.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;
import java.util.List;


/**
 * The persistent class for the pacientes database table.
 * 
 */
@Entity
@Table(name="pacientes")
@NamedQuery(name="Paciente.findAll", query="SELECT p FROM Paciente p")
public class Paciente implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int codigo;

	private String alerguias;

	private short altura;

	private String apellido;

	private int codigoExpediente;

	private String departamento_Nacimiento;

	private byte edad;

	@Temporal(TemporalType.DATE)
	private Date fecha_De_Nacimiento;

	private String municipo_Nacimiento;

	private String nombre_P;

	private short peso;

	private String sexo;

	//bi-directional many-to-one association to Consulta
	@OneToMany(mappedBy="pacienteBean")
	private List<Consulta> consultas;

	//bi-directional many-to-one association to ConsultaOdontologica
	@OneToMany(mappedBy="pacienteBean")
	private List<ConsultaOdontologica> consultaOdontologicas;

	//bi-directional many-to-one association to Mujere
	@OneToMany(mappedBy="paciente")
	private List<Mujere> mujeres;

	//bi-directional many-to-one association to Consulta
	@ManyToOne
	@JoinColumn(name="Antecedentes_Medicos")
	private Consulta consulta;

	//bi-directional many-to-one association to ConsultaOdontologica
	@ManyToOne
	@JoinColumn(name="Antecedentes_Medicos")
	private ConsultaOdontologica consultaOdontologica;

	//bi-directional many-to-one association to Enfermedade
	@ManyToOne
	@JoinColumn(name="EnfermedadesP")
	private Enfermedade enfermedade;

	//bi-directional many-to-one association to Medicamentosprescrito
	@ManyToOne
	@JoinColumn(name="Medicamento")
	private Medicamentosprescrito medicamentosprescrito;

	//bi-directional many-to-one association to ReservaCita
	@ManyToOne
	@JoinColumn(name="Cita")
	private ReservaCita reservaCita;

	//bi-directional many-to-one association to VacunasUsuario
	@ManyToOne
	@JoinColumn(name="Vacunas")
	private VacunasUsuario vacunasUsuario;

	//bi-directional many-to-one association to ReservaCita
	@OneToMany(mappedBy="paciente")
	private List<ReservaCita> reservaCitas;

	//bi-directional many-to-one association to VacunasUsuario
	@OneToMany(mappedBy="paciente")
	private List<VacunasUsuario> vacunasUsuarios;

	public Paciente() {
	}

	public int getCodigo() {
		return this.codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}

	public String getAlerguias() {
		return this.alerguias;
	}

	public void setAlerguias(String alerguias) {
		this.alerguias = alerguias;
	}

	public short getAltura() {
		return this.altura;
	}

	public void setAltura(short altura) {
		this.altura = altura;
	}

	public String getApellido() {
		return this.apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public int getCodigoExpediente() {
		return this.codigoExpediente;
	}

	public void setCodigoExpediente(int codigoExpediente) {
		this.codigoExpediente = codigoExpediente;
	}

	public String getDepartamento_Nacimiento() {
		return this.departamento_Nacimiento;
	}

	public void setDepartamento_Nacimiento(String departamento_Nacimiento) {
		this.departamento_Nacimiento = departamento_Nacimiento;
	}

	public byte getEdad() {
		return this.edad;
	}

	public void setEdad(byte edad) {
		this.edad = edad;
	}

	public Date getFecha_De_Nacimiento() {
		return this.fecha_De_Nacimiento;
	}

	public void setFecha_De_Nacimiento(Date fecha_De_Nacimiento) {
		this.fecha_De_Nacimiento = fecha_De_Nacimiento;
	}

	public String getMunicipo_Nacimiento() {
		return this.municipo_Nacimiento;
	}

	public void setMunicipo_Nacimiento(String municipo_Nacimiento) {
		this.municipo_Nacimiento = municipo_Nacimiento;
	}

	public String getNombre_P() {
		return this.nombre_P;
	}

	public void setNombre_P(String nombre_P) {
		this.nombre_P = nombre_P;
	}

	public short getPeso() {
		return this.peso;
	}

	public void setPeso(short peso) {
		this.peso = peso;
	}

	public String getSexo() {
		return this.sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	public List<Consulta> getConsultas() {
		return this.consultas;
	}

	public void setConsultas(List<Consulta> consultas) {
		this.consultas = consultas;
	}

	public Consulta addConsulta(Consulta consulta) {
		getConsultas().add(consulta);
		consulta.setPacienteBean(this);

		return consulta;
	}

	public Consulta removeConsulta(Consulta consulta) {
		getConsultas().remove(consulta);
		consulta.setPacienteBean(null);

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
		consultaOdontologica.setPacienteBean(this);

		return consultaOdontologica;
	}

	public ConsultaOdontologica removeConsultaOdontologica(ConsultaOdontologica consultaOdontologica) {
		getConsultaOdontologicas().remove(consultaOdontologica);
		consultaOdontologica.setPacienteBean(null);

		return consultaOdontologica;
	}

	public List<Mujere> getMujeres() {
		return this.mujeres;
	}

	public void setMujeres(List<Mujere> mujeres) {
		this.mujeres = mujeres;
	}

	public Mujere addMujere(Mujere mujere) {
		getMujeres().add(mujere);
		mujere.setPaciente(this);

		return mujere;
	}

	public Mujere removeMujere(Mujere mujere) {
		getMujeres().remove(mujere);
		mujere.setPaciente(null);

		return mujere;
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

	public Enfermedade getEnfermedade() {
		return this.enfermedade;
	}

	public void setEnfermedade(Enfermedade enfermedade) {
		this.enfermedade = enfermedade;
	}

	public Medicamentosprescrito getMedicamentosprescrito() {
		return this.medicamentosprescrito;
	}

	public void setMedicamentosprescrito(Medicamentosprescrito medicamentosprescrito) {
		this.medicamentosprescrito = medicamentosprescrito;
	}

	public ReservaCita getReservaCita() {
		return this.reservaCita;
	}

	public void setReservaCita(ReservaCita reservaCita) {
		this.reservaCita = reservaCita;
	}

	public VacunasUsuario getVacunasUsuario() {
		return this.vacunasUsuario;
	}

	public void setVacunasUsuario(VacunasUsuario vacunasUsuario) {
		this.vacunasUsuario = vacunasUsuario;
	}

	public List<ReservaCita> getReservaCitas() {
		return this.reservaCitas;
	}

	public void setReservaCitas(List<ReservaCita> reservaCitas) {
		this.reservaCitas = reservaCitas;
	}

	public ReservaCita addReservaCita(ReservaCita reservaCita) {
		getReservaCitas().add(reservaCita);
		reservaCita.setPaciente(this);

		return reservaCita;
	}

	public ReservaCita removeReservaCita(ReservaCita reservaCita) {
		getReservaCitas().remove(reservaCita);
		reservaCita.setPaciente(null);

		return reservaCita;
	}

	public List<VacunasUsuario> getVacunasUsuarios() {
		return this.vacunasUsuarios;
	}

	public void setVacunasUsuarios(List<VacunasUsuario> vacunasUsuarios) {
		this.vacunasUsuarios = vacunasUsuarios;
	}

	public VacunasUsuario addVacunasUsuario(VacunasUsuario vacunasUsuario) {
		getVacunasUsuarios().add(vacunasUsuario);
		vacunasUsuario.setPaciente(this);

		return vacunasUsuario;
	}

	public VacunasUsuario removeVacunasUsuario(VacunasUsuario vacunasUsuario) {
		getVacunasUsuarios().remove(vacunasUsuario);
		vacunasUsuario.setPaciente(null);

		return vacunasUsuario;
	}

}