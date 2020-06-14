package com.ApoloServlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import com.Apolo.model.LoteMedico;
import com.Apolo.model.Medicamento;
import com.Apolo.model.Usuarioshospital;
import com.ApoloDao.LoteMedicDao;
import com.ApoloDao.UsuarioDao;

/**
 * Servlet implementation class ServletLoteMedi
 */
public class ServletLoteMedi extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletLoteMedi() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		LoteMedico loMe = new LoteMedico();
		LoteMedicDao mediDao =new LoteMedicDao();
		Medicamento medic =new Medicamento();
		
		String id=null;
		String medi=null;
		String cant=null;
		String fechaEn=null;
		Date fecha = null;
		
		try {
			id = request.getParameter("idNmedic");
			medi = request.getParameter("nombreNmedic");
			cant = request.getParameter("CantidadNmedic");
			fechaEn = request.getParameter("fechaNmedic");
			SimpleDateFormat date = new SimpleDateFormat("yyyy-mm-dd");
			 fecha = date.parse(fechaEn);
			
			loMe.setCodigo_Lote(Integer.parseInt(id));
			medic.setCodigoM(Integer.parseInt(medi));
			loMe.setMedicamento(medic);
			loMe.setCantidad(Double.parseDouble(cant));
			loMe.setFecha_Entrega(fecha);
			

		} catch (Exception e) {
		JOptionPane.showMessageDialog(null, "Error en SevletMedi");
		}
		String action = request.getParameter("btn");

		if (action.equals("Guardar")) {
			
			loMe.setCodigo_Lote(Integer.parseInt(id));
			medic.setCodigoM(Integer.parseInt(medi));
			loMe.setMedicamento(medic);
			loMe.setCantidad(Double.parseDouble(cant));
			loMe.setFecha_Entrega(fecha);
			
			mediDao.agregarLoMe(loMe);
			response.sendRedirect("FarmaciaE.jsp");
			
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
