package com.ApoloDao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.Apolo.model.Medicamento;


public class medicamentosDao {

	public List<Medicamento> mostrarMedi() {
		List<Medicamento> medic = new ArrayList();
		EntityManager em;
		EntityManagerFactory emf;
		
		emf = Persistence.createEntityManagerFactory("Apolo");
		em = emf.createEntityManager();
		try {
			
			em.getTransaction().begin();
			medic = em.createQuery("FROM Medicamento").getResultList();
			em.getTransaction().commit();
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return medic ;
		
	}
	public void agregarMe(Medicamento me) {
		EntityManager em;
		EntityManagerFactory emf;
		emf = Persistence.createEntityManagerFactory("Apolo");
		em = emf.createEntityManager();
		
		em.getTransaction().begin();
		em.persist(me);
		em.flush();
		em.getTransaction().commit();
	}
	

	
public void actualizarD(Medicamento me) {
		
		EntityManager em;
		EntityManagerFactory emf;
		emf= Persistence.createEntityManagerFactory("Apolo");
		em=emf.createEntityManager();

		me.getCodigoM();
		me.getNombre();
		me.getTipo();
		me.getCantidad();
		
		em.getTransaction().begin();
		em.merge(me);
		em.flush();
		em.getTransaction().commit();
}
}
