package com.ApoloDao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.Apolo.model.Usuarioshospital;

public class UsuarioDao {
	public List<Object> DoctorLista() {
		List<Object> listaDc = new ArrayList<>();
		EntityManager em;
		EntityManagerFactory emf;
		
		emf = Persistence.createEntityManagerFactory("Apolo");
		em = emf.createEntityManager();
		
		try {
			em.getTransaction().begin();
			listaDc = em.createQuery("select his.n_Usuario, his.doctore.cedula, his.contrasena, his.usuario "
					+ "usu.nombre_Doc, usu.apellido"
					+ "from Usuarioshospital "
					+ "INNER JOIN Doctore AS usu ON usu.cedula = his.doctore.cedula ").getResultList();
			
			em.getTransaction().commit();
			
		} catch (Exception e) {
			
			System.out.println(e+"Error Dao");
		}
		
		return listaDc;
	}
	//-----------------------------------------------------------------------------------------------
	public List<Object> EnfermeraLista() {
		List<Object> listaDc = new ArrayList<>();
		EntityManager em;
		EntityManagerFactory emf;
		
		emf = Persistence.createEntityManagerFactory("Apolo");
		em = emf.createEntityManager();
		
		try {
			em.getTransaction().begin();
			listaDc = em.createQuery("select his.n_Usuario, his.enfermera.cedula, his.contrasena, his.usuario "
					+ "usu.nombre_Doc, usu.apellido"
					+ "from Usuarioshospital "
					+ "INNER JOIN Enfermera AS usu ON usu.cedula = his.enfermera.cedula ").getResultList();
			
			em.getTransaction().commit();
			
		} catch (Exception e) {
			
			System.out.println(e+"Error Dao");
		}
		
		return listaDc;
	}
	//-----------------------------------------------------------------------------------------------
	public void agregarDatosU(Usuarioshospital dc) {
		EntityManager em;
		EntityManagerFactory emf;
		
		emf = Persistence.createEntityManagerFactory("Apolo");
		em = emf.createEntityManager();
		
		em.getTransaction().begin();
		em.persist(dc);
		em.flush();
		em.getTransaction().commit();
	};
	
public void actualizarDatosU(Usuarioshospital dc) {
		
		EntityManager em;
		EntityManagerFactory emf;
		emf= Persistence.createEntityManagerFactory("Apolo");
		em=emf.createEntityManager();

		dc.getN_Usuario();
		
		dc.getDoctore();
		dc.getEnfermera();
		dc.getUsuario();
		dc.getContrasena();
		em.getTransaction().begin();
		em.merge(dc);
		em.flush();
		em.getTransaction().commit();
		
	}
	
	public void eliminarDatosU(Usuarioshospital dc) {
		EntityManager em;
		EntityManagerFactory emf;
		
		emf = Persistence.createEntityManagerFactory("Apolo");
		em = emf.createEntityManager();	
		
		dc = em.getReference(Usuarioshospital.class, dc.getN_Usuario());
		em.getTransaction().begin();
		em.remove(dc);
		em.flush();
		em.getTransaction().commit();
	};

}
