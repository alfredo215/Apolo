package com.ApoloDao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.Apolo.model.Paciente;

public class expedientesDao {

	public List<Paciente> mostarD( Paciente paci) {
		List<Paciente> pacienteD = new ArrayList();
		System.out.println(paci);
		EntityManager em;
		EntityManagerFactory emf;
		
		emf = Persistence.createEntityManagerFactory("Apolo");
		em = emf.createEntityManager();
		
		try {
			em.getTransaction().begin();
			pacienteD = em.createQuery("SELECT pa.codigo, pa.codigoExpediente, pa.nombre_P, pa.apellido, pa.sexo, pa.fecha_De_Nacimiento," 
					+" pa.edad, pa.departamento_Nacimiento, pa.municipo_Nacimiento, pa.peso, pa.altura, pa.vacunasUsuario.idUsuarioVacuna," 
					+" pa.enfermedade.enfermedad, pa.alerguias, pa.medicamento.codigoM, pa.consulta.codigo_Consulta, "  
					+ "pa.consultaOdontologica.codigo_ConsultaO, pa.reservaCita.codigo_Cita FROM Paciente AS pa "
							+ "INNER JOIN VacunasUsuario AS vu ON vu.idUsuarioVacuna = pa.vacunasUsuario.idUsuarioVacuna "
							+ "INNER JOIN Enfermedade AS enfer ON enfer.enfermedad = pa.enfermedade.enfermedad "
							+ "INNER JOIN Medicamento AS medi ON medi.codigoM = pa.medicamento.codigoM "
							+ "INNER JOIN Consulta AS consul ON consul.codigo_Consulta = pa.consulta.codigo_Consulta "
							+ "INNER JOIN ConsultaOdontologica AS consulO ON consulO.codigo_ConsultaO = pa.consultaOdontologica.codigo_ConsultaO "
							+ "INNER JOIN ReservaCita AS reserCita ON reserCita.codigo_Cita = pa.reservaCita.codigo_Cita where pa.codigoExpediente ='"+paci.getCodigoExpediente()+"'").getResultList();
			em.getTransaction().commit();
			
		} catch (Exception e) {
			
			System.out.println(e+"Error Dao muestraPaciente");
		}
		
		
		return pacienteD;
		
	}

	
public void actualizarD(Paciente pc) {
		
		EntityManager em;
		EntityManagerFactory emf;
		emf= Persistence.createEntityManagerFactory("Apolo");
		em=emf.createEntityManager();

		pc.getCodigo();
		pc.getCodigoExpediente();
		pc.getNombre_P();
		pc.getApellido();
		pc.getSexo();
		pc.getFecha_De_Nacimiento();
		pc.getEdad();
		pc.getDepartamento_Nacimiento();
		pc.getMunicipo_Nacimiento();
		pc.getPeso();
		pc.getAltura();
		pc.getVacunasUsuario();
		pc.getEnfermedade();
		pc.getAlerguias();
		pc.getMedicamento();
		pc.getConsulta();
		pc.getConsultaOdontologica();
		pc.getReservaCita();
		
		em.getTransaction().begin();
		em.merge(pc);
		em.flush();
		em.getTransaction().commit();
}

	
}
