package com.ApoloDao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.Apolo.model.Usuarioshospital;

public class UsuarioDao {
	
	//----------------------------------------------------------------
	
	public List<Usuarioshospital> BuscarUD(Usuarioshospital per ) {
		List<Usuarioshospital> UsuDoc= new ArrayList<>();
		System.out.println(per);
		EntityManager em;
		EntityManagerFactory emf;
		
		emf = Persistence.createEntityManagerFactory("Apolo");
		em = emf.createEntityManager();
		
		try {
			em.getTransaction().begin();
			
			UsuDoc = em.createQuery("SELECT hos.n_Usuario, usu.nombre_Doc, usu.apellido, usu.cedula, hos.usuario, hos.contrasena "
					+ " FROM Usuarioshospital AS hos "
					+ " INNER JOIN Doctore AS usu ON "
					+ " usu.cedula = hos.doctore.cedula where hos.usuario ='"+per.getUsuario()+"'").getResultList();					
		
			em.getTransaction().commit();
			
		} catch (Exception e) {
			
			System.out.println(e+"Error Dao");
		}
		
		return UsuDoc;
	}
	//-----------------------------------------------------------------------------------------------
	public List<Usuarioshospital> BuscarUE(Usuarioshospital per ) {
		List<Usuarioshospital> UsuEnf= new ArrayList<>();
		System.out.println(per);
		EntityManager em;
		EntityManagerFactory emf;
		
		emf = Persistence.createEntityManagerFactory("Apolo");
		em = emf.createEntityManager();
		
		try {
			em.getTransaction().begin();
			
			UsuEnf = em.createQuery("SELECT hos.n_Usuario, usu.nombre_Enfer, usu.apellido, usu.cedula, hos.usuario, hos.contrasena "
					+ " FROM Usuarioshospital AS hos "
					+ " INNER JOIN Enfermera AS usu ON "
					+ " usu.cedula = hos.enfermera.cedula where hos.usuario ='"+per.getUsuario()+"'").getResultList();					
		
			em.getTransaction().commit();
			
		} catch (Exception e) {
			
			System.out.println(e+"Error Dao");
		}
		
		return UsuEnf;
	}
	//-------------------------------------------------------------------------------------------------------------------------------

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
