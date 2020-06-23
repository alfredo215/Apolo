package com.ApoloServlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Apolo.model.Consulta;
import com.Apolo.model.ConsultaOdontologica;
import com.Apolo.model.Enfermedade;
import com.Apolo.model.Medicamento;
import com.Apolo.model.Paciente;
import com.Apolo.model.ReservaCita;
import com.Apolo.model.VacunasUsuario;
import com.ApoloDao.GyAexpedienteDao;
import com.google.gson.Gson;

/**
 * Servlet implementation class ServeletGyAExpedientes
 */
public class ServeletGyAExpedientes extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServeletGyAExpedientes() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	//	response.getWriter().append("Served at: ").append(request.getContextPath());
		
		Paciente pacte = new Paciente();
		VacunasUsuario vus = new VacunasUsuario();
		
		Enfermedade enf = new Enfermedade();
		
		Medicamento med = new Medicamento();
		Consulta cons = new Consulta();
		ConsultaOdontologica conOdon = new ConsultaOdontologica();
		ReservaCita rcita = new ReservaCita();
		GyAexpedienteDao exdao = new GyAexpedienteDao();
		
	
		String codigo = null;
		String nombre = null;
		String apellido = null;
		String sexo = null;
		String fechaNa = null;
		String edad = null;
		String departaNaci = null;
		String municiNaci = null;
		String peso = null;
		String altura = null;
		String vacunas = null;
		String enfermedades = null;
		String alergias = null;
		String medicamentos = null;
		String antecedentesMedi = null;
		String antecedentesOdon = null;
		String citas = null;
		Date fecha = null;
	
		try {
			codigo = request.getParameter("codigo_p");
			nombre = request.getParameter("nombre_p");
			apellido = request.getParameter("apellido_p");
			sexo = request.getParameter("sexo_p");

			fechaNa = request.getParameter("fechan_p");
			SimpleDateFormat date = new SimpleDateFormat("dd/mm/yyyy");
			 fecha = date.parse(fechaNa);

			edad = request.getParameter("edad_p");
			departaNaci = request.getParameter("departamenton_p");
			municiNaci = request.getParameter("municipion_P");
			peso = request.getParameter("peso_p");
			altura = request.getParameter("altura_p");
			vacunas = request.getParameter("vacuna_p");
			enfermedades = request.getParameter("enfermedades_p");
			alergias = request.getParameter("alergia_p");
			medicamentos = request.getParameter("medicamento_p");
			antecedentesMedi = request.getParameter("ante_medicos");
			antecedentesOdon = request.getParameter("ante_odontologicos");
			citas = request.getParameter("cita_p");
			
			

			pacte.setCodigo(Integer.parseInt(codigo));
			pacte.setNombre_P(nombre);
			pacte.setApellido(apellido);
			pacte.setSexo(sexo);
			pacte.setFecha_De_Nacimiento(fecha);
			pacte.setEdad(Byte.parseByte(edad));
			pacte.setDepartamento_Nacimiento(departaNaci);
			pacte.setMunicipo_Nacimiento(municiNaci);
			pacte.setPeso(Short.parseShort(peso));
			pacte.setAltura(Short.parseShort(altura));
			vus.setIdUsuarioVacuna(Integer.parseInt(vacunas));
			pacte.setVacunasUsuario(vus);
			
			enf.setEnfermedad(Integer.parseInt(enfermedades));
			pacte.setEnfermedade(enf);
			
			pacte.setAlerguias(alergias);
			med.setCodigoM(Integer.parseInt(medicamentos));
			pacte.setMedicamento(med);
			cons.setCodigo_Consulta(Integer.parseInt(antecedentesMedi));
			pacte.setConsulta(cons);
			conOdon.setCodigo_ConsultaO(Integer.parseInt(antecedentesOdon));
			pacte.setConsultaOdontologica(conOdon);
			rcita.setCodigo_Cita(Integer.parseInt(citas));
			pacte.setReservaCita(rcita);

		} catch (Exception e) {
			// TODO: handle exception
		}
		
		String action = request.getParameter("btn");
		
		if(action.equals("Guardar")) {
			  
			  pacte.setCodigo(Integer.parseInt(codigo));
			  pacte.setNombre_P(nombre);
			  pacte.setApellido(apellido);
			  pacte.setSexo(sexo);
			  pacte.setFecha_De_Nacimiento(fecha);
			  pacte.setEdad(Byte.parseByte(edad));
			  pacte.setDepartamento_Nacimiento(departaNaci);
			  pacte.setMunicipo_Nacimiento(municiNaci);
			  pacte.setPeso(Short.parseShort(peso));
			  pacte.setAltura(Short.parseShort(altura));
			  vus.setIdUsuarioVacuna(Integer.parseInt(vacunas));
			  pacte.setVacunasUsuario(vus);
			  enf.setEnfermedad(Integer.parseInt(enfermedades)); 
			  pacte.setEnfermedade(enf);
			  pacte.setAlerguias(alergias); 
			  med.setCodigoM(Integer.parseInt(medicamentos));
			  pacte.setMedicamento(med);
			  cons.setCodigo_Consulta(Integer.parseInt(antecedentesMedi));
			  pacte.setConsulta(cons);
			  conOdon.setCodigo_ConsultaO(Integer.parseInt(antecedentesOdon));
			  pacte.setConsultaOdontologica(conOdon);
			  rcita.setCodigo_Cita(Integer.parseInt(citas)); 
			  pacte.setReservaCita(rcita);
			  exdao.agregarD(pacte); 
			  response.sendRedirect("Expedientes.jsp");
			  
			  }else if (action.equals("Actualizar")) {
				  
			  pacte.setCodigo(Integer.parseInt(codigo));
			  pacte.setNombre_P(nombre); 
			  pacte.setApellido(apellido); 
			  pacte.setSexo(sexo);
			  pacte.setFecha_De_Nacimiento(fecha); 
			  pacte.setEdad(Byte.parseByte(edad));
			  pacte.setDepartamento_Nacimiento(departaNaci);
			  pacte.setMunicipo_Nacimiento(municiNaci);
			  pacte.setPeso(Short.parseShort(peso));
			  pacte.setAltura(Short.parseShort(altura));
			  vus.setIdUsuarioVacuna(Integer.parseInt(vacunas));
			  pacte.setVacunasUsuario(vus);
			  enf.setEnfermedad(Integer.parseInt(enfermedades));
			  pacte.setEnfermedade(enf);
			  pacte.setAlerguias(alergias);
			  med.setCodigoM(Integer.parseInt(medicamentos));
			  pacte.setMedicamento(med);
			  cons.setCodigo_Consulta(Integer.parseInt(antecedentesMedi));
			  pacte.setConsulta(cons);
			  conOdon.setCodigo_ConsultaO(Integer.parseInt(antecedentesOdon));
			  pacte.setConsultaOdontologica(conOdon);
			  rcita.setCodigo_Cita(Integer.parseInt(citas)); 
			  pacte.setReservaCita(rcita);
			  exdao.actualizarD(pacte);
			  response.sendRedirect("EditarExpediente.jsp");
			  
			  
			  }
			 
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	//	doGet(request, response);
		
		GyAexpedienteDao expeDao = new GyAexpedienteDao();
		Gson json = new Gson();
		
try {
			
			response.getWriter().append(json.toJson(expeDao.mostarDatos()));
			
			
		} catch (Exception e) {
			System.out.println(e+"Error a");
		}
		
		
	}

}
