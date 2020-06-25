package com.ApoloServlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Apolo.model.Consulta;
import com.Apolo.model.Doctore;
import com.Apolo.model.Enfermedade;
import com.Apolo.model.Paciente;
import com.ApoloDao.ConsultaDao;

/**
 * Servlet implementation class ServeletGuardarC
 */
public class ServeletGuardarC extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServeletGuardarC() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	//	response.getWriter().append("Served at: ").append(request.getContextPath());
		
		Consulta con = new Consulta();
		ConsultaDao conDao = new ConsultaDao();
		Doctore doc = new Doctore();
		Paciente pac = new Paciente();
		Enfermedade enf = new Enfermedade();
		
		
		String codigo_consul = null;
		String CedulaD = null;
		String Paciente = null;
		String sintomas = null;
		String enfermedad = null;
		
	
		try {
			
			codigo_consul = request.getParameter("codigoConsul");
			CedulaD = request.getParameter("Cedula");
			Paciente = request.getParameter("Paciente");
			sintomas = request.getParameter("sintomas");
			enfermedad = request.getParameter("Enfermedades");
			
		    con.setCodigo_Consulta(Integer.parseInt(codigo_consul));
		    doc.setCedula(Integer.parseInt(CedulaD));
		    con.setDoctore(doc);
			pac.setCodigo(Integer.parseInt(Paciente));
			con.setPacienteBean(pac);
			con.setSintomas(sintomas);
			enf.setEnfermedad(Integer.parseInt(enfermedad));
			con.setEnfermedade(enf);
			
		} catch (Exception e) {
			System.out.println(e + "Error");
		}
		
		String acction = request.getParameter("btn");
		
		if(acction.equals("Guardar")) {
			
			con.setCodigo_Consulta(Integer.parseInt(codigo_consul));
		    doc.setCedula(Integer.parseInt(CedulaD));
		    con.setDoctore(doc);
			pac.setCodigo(Integer.parseInt(Paciente));
			con.setPacienteBean(pac);
			con.setSintomas(sintomas);
			enf.setEnfermedad(Integer.parseInt(enfermedad));
			con.setEnfermedade(enf);
			
			conDao.agregarConsulta(con);
			response.sendRedirect("Recetar.jsp");
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
