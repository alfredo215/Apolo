package com.ApoloDao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.Apolo.model.Doctore;
import com.Apolo.model.Enfermera;

import java.util.ArrayList;
import java.util.List;

public class EnfermeraDao {

	public List<Enfermera> EnfermeraLista() {
		List<Enfermera> listaEf = new ArrayList<>();
		
		EntityManager em;
		EntityManagerFactory emf;
		
		emf = Persistence.createEntityManagerFactory("Apolo");
		em = emf.createEntityManager();
		
		try {
			em.getTransaction().begin();
			listaEf = em.createQuery("from Enfermera").getResultList();
			em.getTransaction().commit();
			
		} catch (Exception e) {
			
			System.out.println(e);
		}
		
		return listaEf;
	}
	
	public void agregarDatos(Enfermera Ef) {
		EntityManager em;
		EntityManagerFactory emf;
		
		emf = Persistence.createEntityManagerFactory("Apolo");
		em = emf.createEntityManager();
		
		em.getTransaction().begin();
		em.persist(Ef);
		em.flush();
		em.getTransaction().commit();
	};
	
public void actualizarDatos(Enfermera Ef) {
		
		EntityManager em;
		EntityManagerFactory emf;
		emf= Persistence.createEntityManagerFactory("Apolo");
		em=emf.createEntityManager();

		Ef.getCedula();
		Ef.getNombre_Enfer();
		Ef.getApellido();
		Ef.getEpecialidad();
		em.getTransaction().begin();
		em.merge(Ef);
		em.flush();
		em.getTransaction().commit();
		
	}
	
	public void eliminarDatos(Enfermera Ef) {
		EntityManager em;
		EntityManagerFactory emf;
		
		emf = Persistence.createEntityManagerFactory("Apolo");
		em = emf.createEntityManager();	
		
		Ef = em.getReference(Enfermera.class, Ef.getCedula());
		em.getTransaction().begin();
		em.remove(Ef);
		em.flush();
		em.getTransaction().commit();
	};
	
	
}
