package com.ApoloDao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.Apolo.model.Medicamento;
import com.Apolo.model.RecetaMedica;

public class RecetaDao {

/*	public List<RecetaMedica> MedicinaLista() {
		List<RecetaMedica> listaRe = new ArrayList();
		
		
		EntityManager em;
		EntityManagerFactory emf;
		
		emf = Persistence.createEntityManagerFactory("Apolo");
		em = emf.createEntityManager();
		
		try {
			em.getTransaction().begin();
			listaRe = em.createQuery("SELECT rm.codigo_Res, rm.cantidad, rm.docis "
					+ " FROM RecetaMedica AS rm ").getResultList();
			em.getTransaction().commit();
			
		} catch (Exception e) {
			
			System.out.println(e);
		}
		
		return listaRe;
	}*/
	
	
	public void agregarRe(RecetaMedica re) {
		EntityManager em;
		EntityManagerFactory emf;
		emf = Persistence.createEntityManagerFactory("Apolo");
		em = emf.createEntityManager();
		
		em.getTransaction().begin();
		em.persist(re);
		em.flush();
		em.getTransaction().commit();
	};
}
