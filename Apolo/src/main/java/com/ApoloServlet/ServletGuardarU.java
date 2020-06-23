package com.ApoloServlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import com.Apolo.model.Doctore;
import com.Apolo.model.Enfermera;
import com.Apolo.model.Usuarioshospital;
import com.ApoloDao.UsuarioDao;
import com.google.gson.Gson;

/**
 * Servlet implementation class ServletGuardarU
 */
public class ServletGuardarU extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletGuardarU() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		Usuarioshospital Gusu = new Usuarioshospital();
		UsuarioDao GusuD = new UsuarioDao();
		Enfermera enf = new Enfermera();
		
		String id=null;
		String cede=null;
		String Usu=null;
		String cont=null;
		
		try {
			id = request.getParameter("idBus");
			cede = request.getParameter("Cenfermera");
			Usu = request.getParameter("User");
			cont = request.getParameter("Contra");
			
			enf.setCedula(Integer.parseInt(cede));
			Gusu.setEnfermera(enf);
			
			Gusu.setUsuario(Usu);
			Gusu.setContrasena(cont);

				

		} catch (Exception e) {
		
		}
		String action = request.getParameter("btn");

		if (action.equals("Guardar")) {
			Gusu.setN_Usuario(Integer.parseInt(id));

			enf.setCedula(Integer.parseInt(cede));
			Gusu.setEnfermera(enf);
			
			Gusu.setUsuario(Usu);
			Gusu.setContrasena(cont);
			GusuD.agregarDatosU(Gusu);
			response.sendRedirect("LoginE.jsp");
		} else if (action.equals("Actualizar")) {	

			Gusu.setN_Usuario(Integer.parseInt(id));
			
			enf.setCedula(Integer.parseInt(cede));
			Gusu.setEnfermera(enf);	
			Gusu.setUsuario(Usu);
			Gusu.setContrasena(cont);
			GusuD.actualizarDatosU(Gusu);
			response.sendRedirect("EdicionUsuarioE.jsp");

		} else if (action.equals("Eliminar")) {
			Gusu.setN_Usuario(Integer.parseInt(id));
			GusuD.eliminarDatosU(Gusu);
			response.sendRedirect("EdicionUsuarioE.jsp");
		}
		

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String capturar = request.getParameter("caja");
		System.out.println(capturar);
		
		UsuarioDao UsuD = new UsuarioDao();
		Usuarioshospital usuEnf=new Usuarioshospital();
		
		usuEnf.setUsuario(capturar);
		Gson json=new Gson();
		try {

			response.getWriter().append(json.toJson(UsuD.BuscarUE(usuEnf)));
			
			
		}catch (Exception e) {
			JOptionPane.showMessageDialog(null,"Error en Gson en GardarUD post"+e );
			
		}
		/*UsuarioDao usE = new UsuarioDao();
		Gson json = new Gson();
		
		try {
			response.getWriter().append(json.toJson(usE.EnfermeraLista()));
			
		} catch (Exception e) {
			
			System.out.println(e);
		
		
		}*/
		
		
	}

}
