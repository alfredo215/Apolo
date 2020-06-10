<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>

<script type="text/javascript">

$(document).ready(function(){
	
	

	var btn= $('#carga').val();
	$.post('ServeletGyAExpedientes',{

	},function(response){

	var datos = JSON.parse(response);
	


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


</script>
<body>
	
<br> <br>	
<a href="guardarExpedientee.jsp" type="submit" class="btn btn-info" >Guardar</a> 


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



</body>
</html>