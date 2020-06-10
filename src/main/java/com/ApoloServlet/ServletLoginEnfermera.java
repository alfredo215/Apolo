package com.ApoloServlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import com.Apolo.model.Doctore;
import com.Apolo.model.Enfermera;
import com.Apolo.model.Usuarioshospital;
import com.ApoloDao.DoctorDao;
import com.ApoloDao.EnfermeraDao;
import com.ApoloDao.LoginDao;

/**
 * Servlet implementation class ServletLoginEnfermera
 */
public class ServletLoginEnfermera extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletLoginEnfermera() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		Enfermera Enfer = new Enfermera();
		EnfermeraDao EnferD = new EnfermeraDao();
		
		String id=null;
		String nomE=null;
		String apeE=null;
		String espe=null;
		
		try {
			id = request.getParameter("Id");
			nomE = request.getParameter("Nunombre");
			apeE = request.getParameter("Napellido");
			espe = request.getParameter("Nespe");
			
			Enfer.setCedula(Integer.parseInt(id));
			Enfer.setNombre_Enfer(nomE);
			Enfer.setApellido(apeE);
			Enfer.setEpecialidad(espe);
				

		} catch (Exception e) {
		
		}
		String action = request.getParameter("btn");

		if (action.equals("Guardar")) {
			Enfer.setCedula(Integer.parseInt(id));
			Enfer.setNombre_Enfer(nomE);
			Enfer.setApellido(apeE);
			Enfer.setEpecialidad(espe);

			EnferD.agregarDatos(Enfer);
			response.sendRedirect("UsuarioEnfermera.jsp");
		} else if (action.equals("Actualizar")) {

			Enfer.setCedula(Integer.parseInt(id));
			Enfer.setNombre_Enfer(nomE);
			Enfer.setApellido(apeE);
			Enfer.setEpecialidad(espe);

			EnferD.actualizarDatos(Enfer);

		} else if (action.equals("Eliminar")) {
			Enfer.setCedula(Integer.parseInt(id));
			Enfer.setNombre_Enfer(nomE);
			Enfer.setApellido(apeE);
			Enfer.setEpecialidad(espe);
		}
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String usu = request.getParameter("user");
		String contra = request.getParameter("pass");
		
		
		
		Usuarioshospital user = new Usuarioshospital();
		
		LoginDao usuDao = new LoginDao();
		
		user.setUsuario(usu);
		user.setContrasena(contra);
		
		int verificacion=usuDao.EntradaUsuario(user).size();
		if(verificacion==1) {
			
			
			HttpSession seccion = request.getSession(true);
			seccion.setAttribute("user",usu);
			
			response.sendRedirect("Enfermera.jsp");
		}else {
			JOptionPane.showMessageDialog(null, "Usuario o contrasenia incorrectos");
			response.sendRedirect("LoginE.jsp");
		}
		//doGet(request, response);
	}

}
