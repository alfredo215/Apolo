package com.ApoloServlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Apolo.model.Enfermedade;
import com.Apolo.model.Medicamento;
import com.ApoloDao.EnfermedadesDao;
import com.ApoloDao.medicamentosDao;
import com.google.gson.Gson;

/**
 * Servlet implementation class ServletSelectMedicamentos
 */
public class ServletSelectMedicamentos extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletSelectMedicamentos() {
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
	
		medicamentosDao meDao = new medicamentosDao();
		Medicamento medi = new Medicamento();
		Gson json = new Gson();
		
try {
			
			response.getWriter().append(json.toJson(meDao.SelectMedicamentos(medi)));
			
			
		} catch (Exception e) {
			System.out.println(e+"Error a");
		}
		
		
		
	}
		
		
		
	}


