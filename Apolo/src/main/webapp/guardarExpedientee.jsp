<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<title>Insert title here</title>


</head>
<% 
/*HttpSession sesion = (HttpSession) request.getSession();
String usuSesion = (String) sesion.getAttribute("usuario");

if(usuSesion==null){
	
	response.sendRedirect("LoginE.jsp");
}*/

%>
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


<!-- ---------------------------------------------------------------------------------------------------------- -->
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$.post('ServletSelectConsulta',{
		
	},function(response){
	let datos = JSON.parse(response);
	console.log(datos)
	var selector = document.getElementById('TipoSelect');
	for (let item of datos){

		selector.innerHTML +=`
			<option value = "${item[0]}">${item[1]}</option>
		`
	}
	document.getElementById('TipoSelect').value="<%=enfermedades%>";
	
});
});
</script>
<!-- -------------------------------------------------------------------------------------------------------------------------------- -->


<script type="text/javascript">
$(document).ready(function(){
	$.post('ServletSelectMedicamentos',{
		
	},function(response){
	let datos = JSON.parse(response);
	console.log(datos)
	var selector = document.getElementById('TipoSelectMedi');
	for (let item of datos){

		selector.innerHTML +=`
			<option value = "${item[0]}">${item[1]}</option>
		`
	}
	document.getElementById('TipoSelectMedi').value="<%=medicamento %>";
});
});
</script>


<!-- ------------------------------------------------------------------------------------------------------------------------------------- -->




<body>
<form  action="ServeletGyAExpedientes" method="get">
<div class="limiter">
		<div class="container-login100" style="background-image: url('images/bg-01.jpg');">
	
			<div class="login100 p-l-110 p-r-110 p-t-62 p-b-33" style="background-image: url('images/apoloimg.jpg');">
				<form class="login100-form validate-form flex-sb flex-w" >
					<span class="login100-form-title p-b-53 text-white">
					Guardar Expedientes:
					</span>	
					
					<label>Codigo:</label>	
				<div class="wrap-input100 validate-input">
				<input class="input100" placeholder="Escribe el codigo paciente" type="text" name="codigo_p" value="<%=codigo %>">
						<span class="focus-input100"></span>
					</div>

	                                                                                          
	<label>Nombre Paciente:</label>	
				<div class="wrap-input100 validate-input">
				<input class="input100" placeholder="Escribe el nombre paciente" type="text" name="nombre_p" value="<%=nombre %>">	
						<span class="focus-input100"></span>
					</div>
					

	<label>Apellido:</label>	
				<div class="wrap-input100 validate-input">
				<input class="input100" placeholder="Escribe el apellido paciente" type="text" name="apellido_p" value="<%=apellido %>">	
						<span class="focus-input100"></span>
					</div>

	
<label>Sexo:</label>	
				<div class="wrap-input100 validate-input">
				<input class="input100" placeholder="Escribe el sexo paciente" type="text" name="sexo_p" value="<%=sexo %>">	
						<span class="focus-input100"></span>
					</div> 
	

<label>Fecha de Nacimiento:</label>	
				<div class="wrap-input100 validate-input">
				<input class="input100" placeholder="Escribe la fecha nacimiento" type="date" name="fechan_p" value="<%=fechaNa %>">
						<span class="focus-input100"></span>
					</div>
	
	
	<label>Edad:</label>	
				<div class="wrap-input100 validate-input">
				<input class="input100" placeholder="Escribe la edad paciente" type="text" name="edad_p" value="<%=edad %>">	
						<span class="focus-input100"></span>
					</div> 
	
	
<label>Departamento Nacimiento:</label>	
				<div class="wrap-input100 validate-input">
				<input class="input100" placeholder="Escribe el departamento de nacimiento" type="text" name="departamenton_p" value="<%=deparNa %>">	
						<span class="focus-input100"></span>
					</div>
 
	
<label>Municipio Nacimento:</label>	
				<div class="wrap-input100 validate-input">
				<input class="input100" placeholder="Escribe el municipio de nacimiento" type="text" name="municipion_P" value="<%=muniNa %>">	
						<span class="focus-input100"></span>
					</div>
	
	
<label>Peso:</label>	
				<div class="wrap-input100 validate-input">
				<input class="input100" placeholder="Escribe el peso paciente" type="text" name="peso_p" value="<%=peso %>">	
						<span class="focus-input100"></span>
					</div>
 
	
	<label>Altura:</label>	
				<div class="wrap-input100 validate-input">
				<input class="input100" placeholder="Escribe la altura paciente" type="text" name="altura_p" value="<%=altura %>">
						<span class="focus-input100"></span>
					</div>
	
	
<label>Vacunas:</label>	
				<div class="wrap-input100 validate-input">
				<input class="input100" placeholder="Escribe las vacunas paciente" type="text" name="vacuna_p" value="<%=vacunas %>">	
						<span class="focus-input100"></span>
					</div>
	
	
<label>Enfermedad del Paciente:</label>	
				<div class="wrap-input100 validate-input">
				
				<select class="input100" name="enfermedades_p"  id="TipoSelect" >
<option selected>Elige...</option>
</select>			
						<span class="focus-input100"></span>
					</div>

	
	
	<label>Alergias:</label>	
				<div class="wrap-input100 validate-input">
				<input class="input100" placeholder="Escribe las alergias paciente" type="text" name="alergia_p" value="<%=alergias %>">	
						<span class="focus-input100"></span>
					</div>
	
	
<label>Medicamento:</label>	
				<div class="wrap-input100 validate-input">
				
								<select class="input100" name="medicamento_p"  id="TipoSelectMedi">
<option selected>Elige...</option>
</select>
				
				
				
						<span class="focus-input100"></span>
					</div>
	
	 
<label>Antecedentes Medicos:</label>	
				<div class="wrap-input100 validate-input">	
				<input class="input100" placeholder="Escribe los antecedentes medicos" type="text" name="ante_medicos" value="<%=anteMedicos %>">	
						<span class="focus-input100"></span>
					</div>
	 
	
<label>Antecedentes Odontologicos:</label>	
				<div class="wrap-input100 validate-input">
				<input class="input100" placeholder="Escribe los antecedentes odontologicos" type="text" name="ante_odontologicos" value="<%=anteOdon %>">	
						<span class="focus-input100"></span>
					</div>
	 
	
<label>Cita:</label>	
				<div class="wrap-input100 validate-input">
				<input class="input100" placeholder="Escribe la cita medica" type="text" name="cita_p" value="<%=cita %>">	
						<span class="focus-input100"></span>
					</div>
	<div class="container-login100-form-btn m-t-17" align="center">
				<input type="submit" class="login100-form-btn" name="btn" value="Guardar">	
    </div>
    <div class="container-login100-form-btn m-t-17" align="center">				
					<input type="submit" class="login100-form-btn" name="btn" value="Actualizar">
					
    </div>
	<br>
	<br>
	<a href="Expedientes.jsp" class="btn btn-outline-danger btn-sm"><h3>Volver</h3></a>		
				
			</form>	
			</div>
</div>

		
	</form>
</body>

</html>