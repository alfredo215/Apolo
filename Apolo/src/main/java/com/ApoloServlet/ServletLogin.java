package com.ApoloServlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import com.Apolo.model.Usuarioshospital;
import com.ApoloDao.LoginDao;



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
				
				//-------------------------------
		
		
		//doGet(request, response);
	}

}
