package com.ApoloDao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.Apolo.model.LoteMedico;



public class LoteMedicDao {

	
	public void agregarLoMe(LoteMedico lme) {
		EntityManager em;
		EntityManagerFactory emf;
		emf = Persistence.createEntityManagerFactory("Apolo");
		em = emf.createEntityManager();
		
		em.getTransaction().begin();
		em.persist(lme);
		em.flush();
		em.getTransaction().commit();
	};
	
	
	
}
