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
HttpSession sesion = (HttpSession) request.getSession();
String usuSesion = (String) sesion.getAttribute("usuario");

if(usuSesion==null){
	
	response.sendRedirect("LoginE.jsp");
}

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
<script src="maxLength/maxLength.js"></script>
<script type="text/javascript">
$(function () {
$("#Expe").maxLength(5);	
$("#nom").maxLength(71);	
$("#ape").maxLength(71);	
$("#sex").maxLength(2);	
$("#eda").maxLength(4);	
$("#depa").maxLength(71);	
$("#muni").maxLength(71);	
$("#pes").maxLength(7);	
$("#altu").maxLength(7);	
$("#vacu").maxLength(5);	
$("#aler").maxLength(5);	
$("#ante").maxLength(5);	
$("#anteo").maxLength(5);	
$("#cyt").maxLength(5);	

});
</script>
<!-- ------------------------------------------------------------------------------------------------------------------------------------- -->

<script type="text/javascript">

function soloNumeros(e) {
	key=e.keyCode || e.which;
	
	teclado=String.fromCharCode(key);
	
	numeros="0123456789.";
	
	especiales="8-37-38-46";
	
	teclado_especial=false;
	
	for (var i in especiales) {
		if (key==especiales[i]) {
			teclado_especial=true;
			
		}
		
	}
	
	if (numeros.indexOf(teclado)==-1 && !teclado_especial) {
		return false;
		
	}
	
	  
	
}
</script>

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
<input class="input100" placeholder="Escribe el codigo paciente" type="text" name="codigo_p" onkeypress="return soloNumeros(event)" onpaste="return false"  value="<%=codigo %>" id="Expe" required>
						<span class="focus-input100"></span>
					</div>

	                                                                                          
	<label>Nombre Paciente:</label>	
				<div class="wrap-input100 validate-input">
				<input class="input100" placeholder="Escribe el nombre paciente" type="text" name="nombre_p" value="<%=nombre %>" id="nom" required>	
						<span class="focus-input100"></span>
					</div>
					

	<label>Apellido:</label>	
				<div class="wrap-input100 validate-input">
				<input class="input100" placeholder="Escribe el apellido paciente" type="text" name="apellido_p" value="<%=apellido %>" id="ape" required>	
						<span class="focus-input100"></span>
					</div>

	
<label>Sexo:</label>	
				<div class="wrap-input100 validate-input">
				<input class="input100" placeholder="Escribe el sexo paciente" type="text" name="sexo_p" value="<%=sexo %>" id="sex" required>	
						<span class="focus-input100"></span>
					</div> 
	

<label>Fecha de Nacimiento:</label>	
				<div class="wrap-input100 validate-input">
				<input class="input100" placeholder="Escribe la fecha nacimiento" type="date" name="fechan_p" value="<%=fechaNa %>" id="fech" required>
						<span class="focus-input100"></span>
					</div>
	
	
	<label>Edad:</label>	
				<div class="wrap-input100 validate-input">
<input class="input100" onkeypress="return soloNumeros(event)" onpaste="return false" placeholder="Escribe la edad paciente" type="text" name="edad_p" value="<%=edad %>" id="eda" required>	
						<span class="focus-input100"></span>
					</div> 
	
	
<label>Departamento Nacimiento:</label>	
				<div class="wrap-input100 validate-input">
				<input class="input100" placeholder="Escribe el departamento de nacimiento" type="text" name="departamenton_p" value="<%=deparNa %>" id="depa" required>	
						<span class="focus-input100"></span>
					</div>
 
	
<label>Municipio Nacimento:</label>	
				<div class="wrap-input100 validate-input">
				<input class="input100" placeholder="Escribe el municipio de nacimiento" type="text" name="municipion_P" value="<%=muniNa %>" id="muni" required>	
						<span class="focus-input100"></span>
					</div>
	
	
<label>Peso:</label>	
				<div class="wrap-input100 validate-input">
<input class="input100" onkeypress="return soloNumeros(event)" onpaste="return false" placeholder="Escribe el peso paciente" type="text" name="peso_p" value="<%=peso %>" id="pes" required>	
						<span class="focus-input100"></span>
					</div>
 
	
	<label>Altura:</label>	
				<div class="wrap-input100 validate-input">
	<input class="input100" onkeypress="return soloNumeros(event)" onpaste="return false" placeholder="Escribe la altura paciente" type="text" name="altura_p" value="<%=altura %>" id="altu" required>
						<span class="focus-input100"></span>
					</div>
	
	
<label>Vacunas:</label>	
				<div class="wrap-input100 validate-input">
				<input class="input100" placeholder="Escribe las vacunas paciente" type="text" name="vacuna_p" value="<%=vacunas %>" id="vacu" required>	
						<span class="focus-input100"></span>
					</div>
	
	
<label>Enfermedad del Paciente:</label>	
				<div class="wrap-input100 validate-input">
				
				<select class="input100" name="enfermedades_p"  id="TipoSelect" required>
<option value>Elige...</option>
</select>			
						<span class="focus-input100"></span>
					</div>

	
	
	<label>Alergias:</label>	
				<div class="wrap-input100 validate-input">
				<input class="input100" placeholder="Escribe las alergias paciente" type="text" name="alergia_p" value="<%=alergias %>" id="aler" required>	
						<span class="focus-input100"></span>
					</div>
	
	
<label>Medicamento:</label>	
				<div class="wrap-input100 validate-input">
				
								<select class="input100" name="medicamento_p"  id="TipoSelectMedi" required>
<option value>Elige...</option>
</select>
				
				
				
						<span class="focus-input100"></span>
					</div>
	
	 
<label>Antecedentes Medicos:</label>	
				<div class="wrap-input100 validate-input">	
				<input class="input100" placeholder="Escribe los antecedentes medicos" type="text" name="ante_medicos" value="<%=anteMedicos %>" id="ante" required>	
						<span class="focus-input100"></span>
					</div>
	 
	
<label>Antecedentes Odontologicos:</label>	
				<div class="wrap-input100 validate-input">
				<input class="input100" placeholder="Escribe los antecedentes odontologicos" type="text" name="ante_odontologicos" value="<%=anteOdon %>" id="anteo" required>	
						<span class="focus-input100"></span>
					</div>
	 
	
<label>Cita:</label>	
				<div class="wrap-input100 validate-input">
				<input class="input100" placeholder="Escribe la cita medica" type="text" name="cita_p" value="<%=cita %>" id="cyt" required>	
						<span class="focus-input100"></span>
					</div>
	<div class="container-login100-form-btn m-t-17" align="center">
				<input type="submit" class="login100-form-btn" name="btn" value="Guardar" >	
    </div>
    <div class="container-login100-form-btn m-t-17" align="center">				
					<input type="submit" class="login100-form-btn" name="btn" value="Actualizar" >
					
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