package com.ApoloDao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.Apolo.model.Usuarioshospital;

public class UsuarioDao {
	
	//----------------------------------------------------------------prueba de buscador
	
	public List<Usuarioshospital> BuscarUD(Usuarioshospital per ) {
		List<Usuarioshospital> UsuDoc= new ArrayList<>();
		System.out.println(per);
		EntityManager em;
		EntityManagerFactory emf;
		
		emf = Persistence.createEntityManagerFactory("Apolo");
		em = emf.createEntityManager();
		
		try {
			em.getTransaction().begin();
			UsuDoc = em.createQuery("from Usuarioshospital AS D where D.usuario='"+per.getUsuario()+"'").getResultList();
			
			/*em.getTransaction().begin();
			UsuDoc = em.createQuery("from Usuarioshospital AS D where D.doctore.cedula='"+per.getDoctore()+"'").getResultList();*/

			em.getTransaction().commit();
			
		} catch (Exception e) {
			
			System.out.println(e+"Error Dao");
		}
		
		
		return UsuDoc;
		
	}
	
	//-------------------------------------------------------------------------------------------------------------------------------
	
	
	
	
	
	
	
	
	
	
	
	
	
	public List<Object> DoctorLista() {
		List<Object> listaDc = new ArrayList<>();
		EntityManager em;
		EntityManagerFactory emf;
		
		emf = Persistence.createEntityManagerFactory("Apolo");
		em = emf.createEntityManager();
		
		try {
			em.getTransaction().begin();
			listaDc = em.createQuery("SELECT hos.n_Usuario, hos.doctore.cedula,where hos.usuario, hos.contrasena, "
					+ " usu.nombre_Doc, usu.apellido"
					+ " FROM Usuarioshospital AS hos"
					+ " INNER JOIN Doctore AS usu ON usu.cedula = hos.doctore.cedula").getResultList();
			
			em.getTransaction().commit();
			
		} catch (Exception e) {
			
			System.out.println(e+"Error Dao Doctor");
		}
		
		return listaDc;
	}
	//-----------------------------------------------------------------------------------------------
	public List<Object> EnfermeraLista() {
		List<Object> listaEn = new ArrayList<>();
		EntityManager em;
		EntityManagerFactory emf;
		
		emf = Persistence.createEntityManagerFactory("Apolo");
		em = emf.createEntityManager();
		
		try {
			em.getTransaction().begin();
			listaEn = em.createQuery("SELECT hos.n_Usuario, hos.enfermera.cedula, hos.usuario, hos.contrasena, "
					+ " usu.nombre_Enfer, usu.apellido"
					+ " FROM Usuarioshospital AS hos"
					+ " INNER JOIN Enfermera AS usu ON usu.cedula = hos.enfermera.cedula").getResultList();
			
			em.getTransaction().commit();
			
		} catch (Exception e) {
			
			System.out.println(e+"Error Dao Enfermera");
		}
		
		return listaEn;
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
