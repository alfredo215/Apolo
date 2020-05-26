package com.ApoloServlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import com.Apolo.model.Doctore;
import com.Apolo.model.Usuarioshospital;
import com.ApoloDao.DoctorDao;
import com.ApoloDao.LoginDao;
import com.ApoloDao.UsuarioDao;



/**
 * Servlet implementation class ServletLogin
 */
public class ServletLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
		Doctore Doc = new Doctore();
		DoctorDao DocD = new DoctorDao();
		
		String id=null;
		String nomD=null;
		String apeD=null;
		String espe=null;
		String tel=null;
		
		try {
			id = request.getParameter("Id");
			nomD = request.getParameter("Nunombre");
			apeD = request.getParameter("Napellido");
			espe = request.getParameter("Nespe");
			tel = request.getParameter("Ntel");
			
			Doc.setCedula(Integer.parseInt(id));
			Doc.setNombre_Doc(nomD);
			Doc.setApellido(apeD);
			Doc.setEpecialidad(espe);
			Doc.setTelefono(Integer.parseInt(tel));
				

		} catch (Exception e) {
		
		}
		String action = request.getParameter("btn");

		if (action.equals("Guardar")) {
			Doc.setCedula(Integer.parseInt(id));
			Doc.setNombre_Doc(nomD);
			Doc.setApellido(apeD);
			Doc.setEpecialidad(espe);
			Doc.setTelefono(Integer.parseInt(tel));

			DocD.agregarDatos(Doc);
			response.sendRedirect("UsuarioDoctor.jsp");
		} else if (action.equals("Actualizar")) {

			Doc.setCedula(Integer.parseInt(id));
			Doc.setNombre_Doc(nomD);
			Doc.setApellido(apeD);
			Doc.setEpecialidad(espe);
			Doc.setTelefono(Integer.parseInt(tel));

			DocD.actualizarDatos(Doc);

		} else if (action.equals("Eliminar")) {
			Doc.setCedula(Integer.parseInt(id));
			Doc.setNombre_Doc(nomD);
			Doc.setApellido(apeD);
			Doc.setEpecialidad(espe);
			Doc.setTelefono(Integer.parseInt(tel));
		}
		
		
		
		
	}
	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//-------------------------------------------------------
				// Loguin
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
					
					response.sendRedirect("Doctor.jsp");
				}else {
					JOptionPane.showMessageDialog(null, "Usuario o contrasenia incorrectos");
					response.sendRedirect("LoginD.jsp");
				}
				
				//--------------------------------------------------------------------------------
		
		
		//doGet(request, response);
	}

}
