package com.ApoloDao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.Apolo.model.Paciente;
import com.Apolo.model.ReservaCita;
import com.Apolo.model.Usuarioshospital;



public class CitaDao {

	
	
	public void ApartarCita(ReservaCita ReC) {
		EntityManager em;
		EntityManagerFactory emf;
		emf = Persistence.createEntityManagerFactory("Apolo");
		em = emf.createEntityManager();
		
		em.getTransaction().begin();
		em.persist(ReC);
		em.flush();
		em.getTransaction().commit();
	};
	

}
