package com.ApoloServlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import com.Apolo.model.Paciente;
import com.Apolo.model.ReservaCita;
import com.ApoloDao.CitaDao;
import com.ApoloDao.expedientesDao;

/**
 * Servlet implementation class ServletReservar
 */
public class ServletReservar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletReservar() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ReservaCita res = new ReservaCita();
		CitaDao ciDao = new CitaDao();
		Paciente pa = new Paciente();
		
		String id=null;
		String expe=null;
		String fechaEn=null;
		String hora=null;
		Date fecha = null;
		
		try {
			id = request.getParameter("idReserva");
			expe = request.getParameter("CodigoReserva");
			fechaEn = request.getParameter("fechaReserva");
			SimpleDateFormat date = new SimpleDateFormat("yyyy-mm-dd");
			fecha = date.parse(fechaEn);
			hora = request.getParameter("HoraReserva");
			
			res.setCodigo_Cita(Integer.parseInt(id));
			pa.setCodigo(Integer.parseInt(expe));
			res.setPaciente(pa);
			res.setFecha_Cita(fecha);
			res.setHora_Cita(hora);
			

		} catch (Exception e) {
		JOptionPane.showMessageDialog(null, "Error en Sevlet Citas");
		}
		String action = request.getParameter("btn");

		if (action.equals("Enviar")) {
			
			res.setCodigo_Cita(Integer.parseInt(id));
			pa.setCodigo(Integer.parseInt(expe));
			res.setPaciente(pa);
			res.setFecha_Cita(fecha);
			res.setHora_Cita(hora);
			
			ciDao.ApartarCita(res);
			response.sendRedirect("index.jsp");
			
		}
		
		
	}

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
String usu = request.getParameter("expe");

		
		expedientesDao usuDao= new expedientesDao();
		
		Paciente user = new Paciente();
		// CitaDao usuDao = new CitaDao();
		
		user.setCodigo(Integer.parseInt(usu));
		
		int verificacion=usuDao.mostarD(user).size();
		if(verificacion==1) {
			
			
			HttpSession seccion = request.getSession(true);
			seccion.setAttribute("expe",usu);
			
			response.sendRedirect("ReservarCita.jsp");
		}else {
			JOptionPane.showMessageDialog(null, "Usuario o contrasenia incorrectos");
			response.sendRedirect("LoginCita.jsp");
		}
		
	}

}
