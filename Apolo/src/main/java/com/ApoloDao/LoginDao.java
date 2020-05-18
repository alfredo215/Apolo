package com.ApoloDao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.Apolo.model.Usuarioshospital;
import com.sun.xml.internal.ws.wsdl.writer.UsingAddressing;

public class LoginDao {

	public List<Usuarioshospital> EntradaUsuario(Usuarioshospital usu){
		List<Usuarioshospital> User=new ArrayList();
		EntityManager em;
		EntityManagerFactory emf;
		
		emf = Persistence.createEntityManagerFactory("Apolo");
		em = emf.createEntityManager();
		
		try {
			em.getTransaction().begin();
			User = em.createQuery("from Usuarioparcial as u where u.nombre='"+usu.getNombre()+"' and u.contrasenia='"+usu.getContrasenia()+"'").getResultList();
			
			em.getTransaction().commit();
			
			for (Usuarioshospital datosid:User) {

				usu.setId(datosid.getId());
				
			}
			
		} catch (Exception e) {
			
			System.out.println(e+"Error Dao");
		}
		return User;
	
}
