package com.ApoloServlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Apolo.model.Consulta;
import com.Apolo.model.ConsultaOdontologica;
import com.Apolo.model.Enfermedade;
import com.Apolo.model.Medicamento;
import com.Apolo.model.RecetaMedica;
import com.ApoloDao.RecetaDao;
import com.ApoloDao.medicamentosDao;

/**
 * Servlet implementation class ServeletRecetaMedica
 */
public class ServeletRecetaMedica extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServeletRecetaMedica() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		RecetaMedica reMe = new RecetaMedica();
		Consulta cons = new Consulta();
		ConsultaOdontologica consOdon = new ConsultaOdontologica();
		Enfermedade enfer = new Enfermedade();
		Medicamento md = new Medicamento();
		RecetaDao reDao = new RecetaDao();
		
		String codigo=null;
    	String enfermedad=null;
		String enfermedadOdon=null;
		String medicamento=null;
		String cantidad=null;
		String dosis=null;
		
		try {
			
			codigo = request.getParameter("CodigoR");
			enfermedad = request.getParameter("Enfermedad");
			enfermedadOdon = request.getParameter("EnfermedaOdon");
			medicamento = request.getParameter("Medicamento");
			cantidad = request.getParameter("Cantidad");
			dosis = request.getParameter("Dosis");
			
			
			reMe.setCodigo_Res(Integer.parseInt(codigo)); 
			cons.setCodigo_Consulta(Integer.parseInt(enfermedad));
			reMe.setConsulta(cons);
			consOdon.setCodigo_ConsultaO(Integer.parseInt(enfermedadOdon));
			reMe.setConsultaOdontologica(consOdon);		
			md.setCodigoM(Integer.parseInt(medicamento));
			reMe.setMedicamentoBean(md);
			reMe.setCantidad(Double.parseDouble(cantidad));
			reMe.setDocis(dosis);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		String action = request.getParameter("btn");
		if (action.equals("guardar")) {
			
			reMe.setCodigo_Res(Integer.parseInt(codigo));
			cons.setCodigo_Consulta(Integer.parseInt(enfermedad));
			reMe.setConsulta(cons);
			consOdon.setCodigo_ConsultaO(Integer.parseInt(enfermedadOdon));
			reMe.setConsultaOdontologica(consOdon);
			md.setCodigoM(Integer.parseInt(medicamento));
			reMe.setMedicamentoBean(md);
			reMe.setCantidad(Double.parseDouble(cantidad));
			reMe.setDocis(dosis);
			reDao.agregarRe(reMe);
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
