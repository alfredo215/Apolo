package com.ApoloServlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Apolo.model.Enfermedade;
import com.ApoloDao.EnfermedadesDao;
import com.ApoloDao.GyAexpedienteDao;
import com.google.gson.Gson;

/**
 * Servlet implementation class ServeletGyAEnfermedad
 */
public class ServeletGyAEnfermedad extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServeletGyAEnfermedad() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	//	response.getWriter().append("Served at: ").append(request.getContextPath());
		

		Enfermedade efd = new Enfermedade();
		EnfermedadesDao efdd = new EnfermedadesDao();
		
	    String id=null;
		String ne=null;
		String t=null;
		
		try{
			id = request.getParameter("nefd");
		    ne = request.getParameter("nombreE");
			t = request.getParameter("tipoE");
			
			
			efd.setEnfermedad(Integer.parseInt(id));
			efd.setNombre_E(ne);
			efd.setTipo(t);

				

		} catch (Exception e) {
		
		}
		
		String action = request.getParameter("btn");

		if (action.equals("Guardar")) {
			
			efd.setEnfermedad(Integer.parseInt(id));
			efd.setNombre_E(ne);
			efd.setTipo(t);
			
			efdd.agregarDatos(efd);
			response.sendRedirect("MostrarEnfd.jsp");
			
		} else if (action.equals("Actualizar")) {	

			efd.setEnfermedad(Integer.parseInt(id));
			efd.setNombre_E(ne);
			efd.setTipo(t);
			

			efdd.actualizarDatos(efd);
			response.sendRedirect("MostrarEnfd.jsp");

		} 
		
//-----------------------------------------------------------------------------------------------		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	//	doGet(request, response);
		
		
		
		
		String capturar = request.getParameter("caja");
		
		System.out.println(capturar);
		
		EnfermedadesDao enfdd = new EnfermedadesDao();
		Enfermedade enf = new Enfermedade();
		enf.setNombre_E(capturar);
		Gson json = new Gson();
		
		try {
			response.getWriter().append(json.toJson(enfdd.EnfermedadLista(enf)));
		}catch (Exception e) {
			System.out.println(e);
		}
		
		
	}

}
