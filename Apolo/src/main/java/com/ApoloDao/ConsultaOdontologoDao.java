package com.ApoloDao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.Apolo.model.ConsultaOdontologica;

public class ConsultaOdontologoDao {

	public void agregarConsultaOdon(ConsultaOdontologica cO) {
		
		EntityManager em;
		EntityManagerFactory emf;
		emf=Persistence.createEntityManagerFactory("Apolo");
		em=emf.createEntityManager();
		
		em.getTransaction().begin();
		em.persist(cO);
		em.flush();
		em.getTransaction().commit();
		
	}

}
