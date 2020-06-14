<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<% 
String codigo = request.getParameter("cod");
String nombre = request.getParameter("nom");
String apellido = request.getParameter("ap");
String sexo = request.getParameter("sex");
String fechaNa = request.getParameter("fn");
String edad = request.getParameter("edad");
String deparNa = request.getParameter("depana");
String muniNa = request.getParameter("munina");
String peso = request.getParameter("peso");
String altura = request.getParameter("altura");
String vacunas = request.getParameter("vacuna");
String enfermedades = request.getParameter("enfer");
String alergias = request.getParameter("aler");
String medicamento = request.getParameter("medi");
String anteMedicos = request.getParameter("anme");
String anteOdon = request.getParameter("anodo");
String cita = request.getParameter("cita");

if(codigo==null){
	codigo="";
	nombre="";
	apellido="";
	sexo="";
	fechaNa="";
	edad="";
	deparNa="";
	muniNa="";
	peso="";
	altura="";
	vacunas="";
	enfermedades="";
	alergias="";
	medicamento="";
	anteMedicos="";
	anteOdon="";
	cita="";

}

%>


<body>
<form  action="ServeletGyAExpedientes" method="get">
<label>Codigo</label>
	<input type="text" name="codigo_p" value="<%=codigo %>">                                                                                           
	<br>
	<label>Nombre_Paciente</label>
	<input type="text" name="nombre_p" value="<%=nombre %>">
	<br>
	<label>Apellido</label>
	<input type="text" name="apellido_p" value="<%=apellido %>">
	<br>
	<label>Sexo</label>
	<input type="text" name="sexo_p" value="<%=sexo %>">
	<br>
	<label>Fecha_De_Nacimiento</label>
	<input type="date" name="fechan_p" value="<%=fechaNa %>">
	<br>
	<label>Edad</label>
	<input type="text" name="edad_p" value="<%=edad %>">
	<br>
	<label>Departamento_Nacimiento</label>
	<input type="text" name="departamenton_p" value="<%=deparNa %>">
	<br>
	<label>Municipo_Nacimiento</label>
	<input type="text" name="municipion_P" value="<%=muniNa %>">
	<br>
	<label>Peso</label>
	<input type="text" name="peso_p" value="<%=peso %>">
	<br>
	<label>Altura</label>
	<input type="text" name="altura_p" value="<%=altura %>">
	<br>
	<label>Vacunas</label>
	<input type="text" name="vacuna_p" value="<%=vacunas %>">
	<br>
	<label>EnfermedadesP</label>
	<input type="text" name="enfermedades_p" value="<%=enfermedades %>">
	<br>
	<label>Alerguias</label>
	<input type="text" name="alergia_p" value="<%=alergias %>">
	<br>
	<label>Medicamento</label>
	<input type="text" name="medicamento_p" value="<%=medicamento %>">
	 <br>
	 <label>Antecedentes Medicos</label>
	<input type="text" name="ante_medicos" value="<%=anteMedicos %>"> 
	 <br>
	<label>Antecedentes_Odontologicos</label>
	<input type="text" name="ante_odontologicos" value="<%=anteOdon %>"> 
	<br>
	<label>Cita</label>
	<input type="text" name="cita_p" value="<%=cita %>">
	<br><br>
	<input type="submit" name="btn" value="Guardar">
	<input type="submit" name="btn" value="Actualizar">
	
	
	
		
	</form>
</body>

</html>