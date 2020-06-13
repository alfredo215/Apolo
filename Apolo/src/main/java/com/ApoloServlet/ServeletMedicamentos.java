package com.ApoloServlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Apolo.model.Medicamento;
import com.ApoloDao.medicamentosDao;
import com.google.gson.Gson;

/**
 * Servlet implementation class ServeletMedicamentos
 */
public class ServeletMedicamentos extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServeletMedicamentos() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		Medicamento medi = new Medicamento();
		medicamentosDao MDAO = new medicamentosDao();
		
		String codigo = null;
		String nombre = null;
		String tipo = null;
		String Cantidad = null;
		try {
			codigo = request.getParameter("Id");		
			nombre = request.getParameter("nombre");
			tipo = request.getParameter("tipoM");
			Cantidad = request.getParameter("cantidadM");
			
			medi.setCodigoM(Integer.parseInt(codigo));
			medi.setNombre(nombre);
			medi.setTipo(tipo);
			medi.setCantidad(Double.parseDouble(Cantidad));
			
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		String action = request.getParameter("btn");
		
		if (action.equals("guardar")) {
			
			medi.setCodigoM(Integer.parseInt(codigo));
			medi.setNombre(nombre);
			medi.setTipo(tipo);
			medi.setCantidad(Double.parseDouble(Cantidad));
			
			MDAO.agregarMe(medi);
			response.sendRedirect("Medicamentos.jsp");
			
		}else if (action.equals("actualizar")) {
			
			medi.setCodigoM(Integer.parseInt(codigo));
			medi.setNombre(nombre);
			medi.setTipo(tipo);
			medi.setCantidad(Double.parseDouble(Cantidad));
			
			MDAO.actualizarD(medi);
			response.sendRedirect("Medicamentos.jsp");
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String capturar = request.getParameter("caja");
		System.out.println(capturar);
		
		medicamentosDao medic = new medicamentosDao();
		Medicamento med = new Medicamento();
		med.setNombre(capturar);
		Gson json = new Gson();
		try {
			response.getWriter().append(json.toJson(medic.MedicinaLista(med)));
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		
		
		
		
	}

}
