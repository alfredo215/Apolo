package com.ApoloServlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Apolo.model.ConsultaOdontologica;
import com.Apolo.model.Doctore;
import com.Apolo.model.Enfermedade;
import com.Apolo.model.Paciente;
import com.ApoloDao.ConsultaOdontologoDao;

/**
 * Servlet implementation class ServeletGconsultaOdon
 */
public class ServeletGconsultaOdon extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServeletGconsultaOdon() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	//	response.getWriter().append("Served at: ").append(request.getContextPath());
		
		ConsultaOdontologica conOdon = new ConsultaOdontologica();
		ConsultaOdontologoDao cOdonDao = new ConsultaOdontologoDao();
		
		Doctore doc = new Doctore();
		Paciente pac = new Paciente();
		Enfermedade enf = new Enfermedade();
		
		
		String codigo_consulOdon = null;
		String CedulaOdon = null;
		String Paciente = null;
		String sintomas = null;
		String enfermedad = null;
		
	
		try {
			
			codigo_consulOdon = request.getParameter("codigoConsulO");
			CedulaOdon = request.getParameter("Cedula");
			Paciente = request.getParameter("Paciente");
			sintomas = request.getParameter("sintomas");
			enfermedad = request.getParameter("Enfermedades");
			
			conOdon.setCodigo_ConsultaO(Integer.parseInt(codigo_consulOdon));
			doc.setCedula(Integer.parseInt(CedulaOdon));
			conOdon.setDoctore(doc);
			pac.setCodigo(Integer.parseInt(Paciente));
			conOdon.setPacienteBean(pac);
			conOdon.setSintomas(sintomas);
			enf.setEnfermedad(Integer.parseInt(enfermedad));
			conOdon.setEnfermedade(enf);
			
		} catch (Exception e) {
			System.out.println(e + "Error");
		}
		
		String acction = request.getParameter("btn");
		
		if(acction.equals("Guardar")) {
			
			conOdon.setCodigo_ConsultaO(Integer.parseInt(codigo_consulOdon));
			doc.setCedula(Integer.parseInt(CedulaOdon));
			conOdon.setDoctore(doc);
			pac.setCodigo(Integer.parseInt(Paciente));
			conOdon.setPacienteBean(pac);
			conOdon.setSintomas(sintomas);
			enf.setEnfermedad(Integer.parseInt(enfermedad));
			conOdon.setEnfermedade(enf);
			
			cOdonDao.agregarConsultaOdon(conOdon);
			response.sendRedirect("RecetarOdonto.jsp");
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
