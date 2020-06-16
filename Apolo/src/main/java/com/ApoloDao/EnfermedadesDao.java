package com.ApoloDao;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.Apolo.model.Enfermedade;

public class EnfermedadesDao {

	public List<Enfermedade> EnfermedadLista(Enfermedade enfd) {
		List<Enfermedade> listaEn = new ArrayList();
		System.out.println(enfd);
			
		EntityManager em;
		EntityManagerFactory emf;
		emf = Persistence.createEntityManagerFactory("Apolo");
		em = emf.createEntityManager();
		
		try {
			em.getTransaction().begin();
			listaEn = em.createQuery("SELECT enf.enfermedad, enf.nombre_E, enf.tipo FROM Enfermedade AS enf where enf.nombre_E ='"+enfd.getNombre_E()+"'").getResultList();
			em.getTransaction().commit();
			
		} catch (Exception e) {
			
			System.out.println(e);
		}
		
		return listaEn;
	}
	
	
	public void agregarDatos(Enfermedade ed) {
		EntityManager em;
		EntityManagerFactory emf;
		
		emf = Persistence.createEntityManagerFactory("Apolo");
		em = emf.createEntityManager();
		
		em.getTransaction().begin();
		em.persist(ed);
		em.flush();
		em.getTransaction().commit();
	};
	
public void actualizarDatos(Enfermedade ed) {
		
		EntityManager em;
		EntityManagerFactory emf;
		emf= Persistence.createEntityManagerFactory("Apolo");
		em=emf.createEntityManager();

		ed.getEnfermedad();
		ed.getNombre_E();
		ed.getTipo();
		em.getTransaction().begin();
		em.merge(ed);
		em.flush();
		em.getTransaction().commit();
		
	}
	
	public void eliminarDatos(Enfermedade ed) {
		EntityManager em;
		EntityManagerFactory emf;
		
		emf = Persistence.createEntityManagerFactory("Apolo");
		em = emf.createEntityManager();	
		
		ed = em.getReference(Enfermedade.class, ed.getEnfermedad());
		em.getTransaction().begin();
		em.remove(ed);
		em.flush();
		em.getTransaction().commit();
	};
	
}
