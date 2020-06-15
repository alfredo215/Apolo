package com.ApoloDao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.Apolo.model.Consulta;

public class ConsultaDao {

	public void agregarConsulta(Consulta con) {
		EntityManager em;
		EntityManagerFactory emf;
		emf = Persistence.createEntityManagerFactory("Apolo");
		em = emf.createEntityManager();
		
		em.getTransaction().begin();
		em.persist(con);
		em.flush();
		em.getTransaction().commit();
	};
	
	
}
