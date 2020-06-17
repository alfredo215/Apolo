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

<script src="http://code.jquery.com/jquery-latest.js"></script>

<script type="text/javascript">

$(document).ready(function(){
 $('#cargar').click(function(){
	 
	
	

	var caja= $('#buscardatos').val();
	$.post('ServeletExpedientes',{
		caja
	},function(response){

	let datos = JSON.parse(response);
	console.log(datos)


	var tabladatos = document.getElementById('tablaDatos');
	for (let item of datos){

		tabladatos.innerHTML +=`
	
			<td>${item[0]}</td>
		 	<td>${item[1]}</td>
		 	<td>${item[2]}</td>
		 	<td>${item[3]}</td>
		 	<td>${item[4]}</td> 
		 	<td>${item[5]}</td> 
		 	<td>${item[6]}</td> 
		 	<td>${item[7]}</td> 
		 	<td>${item[8]}</td> 
		 	<td>${item[9]}</td> 
		 	<td>${item[10]} </td> 
		 	<td>${item[11]} </td> 
		 	<td>${item[12]} </td> 
		 	<td>${item[13]} </td> 
		 	<td>${item[14]} </td> 
		 	<td>${item[15]} </td> 
		 	<td>${item[16]} </td> 
		 	<td>${item[17]} </td> 
		 	
		 	
 	   
		`

	}

 });
});
});


</script>

<%-- <% 
HttpSession sesion = (HttpSession) request.getSession();
String usuSesion = (String) sesion.getAttribute("usuario");

if(usuSesion==null){
	
	response.sendRedirect("LoginE.jsp");
}

%> --%>

<body>
<div class="limiter">
		<div class="container-login100" style="background-image: url('images/bg-01.jpg');">
	
			<div class="login100 p-l-110 p-r-110 p-t-62 p-b-33" >
				<div class="login100-form validate-form flex-sb flex-w">
					<span class="login100-form-title p-b-53 text-white">
					Expedientes:

					</span>	
					<label>buscador</label>
				<div class="wrap-input100 validate-input" data-validate = "codigo is required">	
				<input class="input100" type="text" name="" placeholder="Escribe tu Codigo del expediente" id="buscardatos">
				
		
						
						<span class="focus-input100"></span>
					</div>
					
		
				<div class="container-login100-form-btn m-t-17" align="center">
				<input type="submit" class="login100-form-btn" name="BUSCAR" id="cargar" value="buscar">
					<br>
					

	</div>
	<br>
	<div align="center">
	<a href="guardarExpedientee.jsp" class="btn btn-outline-danger btn-sm"><h3>Agregar</h3></a>	
	<a href="Enfermera.jsp" class="btn btn-outline-danger btn-sm"><h3>Volver</h3></a>
	</div>
			
				
			</div>	
			</div>

<table border="4px" align="center" class="table table-dark" id="tablaDatos">

					<thead>
					
						<th >Codigo</th>
						<th >Codigo Expediente</th>
						<th>Nombre Paciente</th>
						<th>Apellido</th>
						<th>Sexo</th>
						<th>Fecha De Nacimiento</th>
						<th>Edad</th>
						<th>Departamento Nacimiento</th>
						<th>Municipo Nacimiento</th>
						<th>Peso</th>
						<th>Altura</th>
						<th>Vacunas</th>
						<th>EnfermedadesP</th>
						<th>Alerguias</th>
						<th>Medicamento</th>
						<th>Antecedentes Medicos</th>
						<th>Antecedentes Odontologicos</th>
						<th>Cita</th>
						
						
						

					</thead>
					
					<tbody>
						

					</tbody>

	</table>
</div>
</div>

</body>
</html>