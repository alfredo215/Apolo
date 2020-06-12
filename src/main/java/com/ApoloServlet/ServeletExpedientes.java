package com.ApoloServlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Apolo.model.Consulta;
import com.Apolo.model.ConsultaOdontologica;
import com.Apolo.model.Enfermedade;
import com.Apolo.model.Medicamento;
import com.Apolo.model.Paciente;
import com.Apolo.model.ReservaCita;
import com.Apolo.model.VacunasUsuario;

import com.ApoloDao.expedientesDao;
import com.google.gson.Gson;

/**
 * Servlet implementation class ServeletExpedientes
 */
public class ServeletExpedientes extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServeletExpedientes() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
		  
		  
		  
		 
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	//	doGet(request, response);
		
		String capturar = request.getParameter("caja");
		System.out.println(capturar);
		
		expedientesDao exDao =new expedientesDao();
		Paciente pacien = new Paciente();
		
		pacien.setCodigoExpediente(Integer.parseInt(capturar));
		Gson json = new Gson();
		
		
		try {
			
			response.getWriter().append(json.toJson(exDao.mostarD(pacien)));
			
			
		} catch (Exception e) {
			System.out.println(e+"Error a");
		}

		
		
	}

}
