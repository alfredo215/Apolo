package com.ApoloDao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.Apolo.model.Medicamento;


public class medicamentosDao {

	public List<Medicamento> MedicinaLista(Medicamento me) {
		List<Medicamento> listaMe = new ArrayList();
		System.out.println(me);
		
		EntityManager em;
		EntityManagerFactory emf;
		
		emf = Persistence.createEntityManagerFactory("Apolo");
		em = emf.createEntityManager();
		
		try {
			em.getTransaction().begin();
			listaMe = em.createQuery("SELECT m.codigoM, m.nombre, tipo, m.cantidad "
					+ " FROM Medicamento AS m where m.nombre = '"+me.getNombre()+"'").getResultList();
			em.getTransaction().commit();
			
		} catch (Exception e) {
			
			System.out.println(e);
		}
		
		return listaMe;
	}
	
	
	
	public List<Medicamento> SelectMedicamentos(Medicamento me) {
		List<Medicamento> listaMe = new ArrayList();
		System.out.println(me);
		
		EntityManager em;
		EntityManagerFactory emf;
		
		emf = Persistence.createEntityManagerFactory("Apolo");
		em = emf.createEntityManager();
		
		try {
			em.getTransaction().begin();
			listaMe = em.createQuery("SELECT m.codigoM, m.nombre, tipo, m.cantidad "
					+ " FROM Medicamento AS m").getResultList();
			em.getTransaction().commit();
			
		} catch (Exception e) {
			
			System.out.println(e);
		}
		
		return listaMe;
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
	};
	

	
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
};

}
