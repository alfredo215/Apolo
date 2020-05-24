package com.ApoloDao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import com.Apolo.model.Doctore;
import java.util.ArrayList;
import java.util.List;


public class DoctorDao {

	
	public List<Doctore> DoctorLista() {
		List<Doctore> listaDc = new ArrayList<>();
		
		EntityManager em;
		EntityManagerFactory emf;
		
		emf = Persistence.createEntityManagerFactory("Apolo");
		em = emf.createEntityManager();
		
		try {
			em.getTransaction().begin();
			listaDc = em.createQuery("from Doctore").getResultList();
			em.getTransaction().commit();
			
		} catch (Exception e) {
			
			System.out.println(e);
		}
		
		return listaDc;
	}
	
	public void agregarDatos(Doctore dc) {
		EntityManager em;
		EntityManagerFactory emf;
		
		emf = Persistence.createEntityManagerFactory("Apolo");
		em = emf.createEntityManager();
		
		em.getTransaction().begin();
		em.persist(dc);
		em.flush();
		em.getTransaction().commit();
	};
	
public void actualizarDatos(Doctore dc) {
		
		EntityManager em;
		EntityManagerFactory emf;
		emf= Persistence.createEntityManagerFactory("Apolo");
		em=emf.createEntityManager();

		dc.getCedula();
		dc.getNombre_Doc();
		dc.getApellido();
		dc.getEpecialidad();
		dc.getTelefono();
		em.getTransaction().begin();
		em.merge(dc);
		em.flush();
		em.getTransaction().commit();
		
	}
	
	public void eliminarDatos(Doctore dc) {
		EntityManager em;
		EntityManagerFactory emf;
		
		emf = Persistence.createEntityManagerFactory("Apolo");
		em = emf.createEntityManager();	
		
		dc = em.getReference(Doctore.class, dc.getCedula());
		em.getTransaction().begin();
		em.remove(dc);
		em.flush();
		em.getTransaction().commit();
	};
	
}
