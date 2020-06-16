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
<title>Farmacia</title>
</head>


<script src="http://code.jquery.com/jquery-latest.js"></script>

<script src="http://code.jquery.com/jquery-latest.js"></script>

<script type="text/javascript">

$(document).ready(function(){
 $('#cargar').click(function(){
	 
	
	

	var caja= $('#buscardatos').val();
	$.post('ServeletMedicamentos',{
		caja
	},function(response){

	let datos = JSON.parse(response);
	console.log(datos)


	var tabladatos = document.getElementById('TablaMedi');
	for (let item of datos){

		tabladatos.innerHTML +=`
	
			<tr>
			<td>${item[0]}</td>
			<td>${item[1]}</td>
			<td>${item[2]}</td>
			<td>${item[3]}</td>
			
			</tr>
		
		
		 	
 	   
		`

	}

 });
});
});


</script>


<body>
<div class="limiter">
		<div class="container-login100" style="background-image: url('images/bg-01.jpg');">
	
			<div class="login100 p-l-110 p-r-110 p-t-62 p-b-33" >
				<div class="login100-form validate-form flex-sb flex-w">
					<span class="login100-form-title p-b-53 text-white">
					Registro de medicametos:

					</span>	
					<label>buscador</label>
				<div class="wrap-input100 validate-input" data-validate = "codigo is required">	
			<input type="text" class="input100" name="" placeholder="Escribe el Medicamento" id="buscardatos">
				
		
						
						<span class="focus-input100"></span>
					</div>
					
		
				<div class="container-login100-form-btn m-t-17" >
				<input type="submit" class="login100-form-btn" name="BUSCAR" id="cargar" value="buscar">
					<br>
					

	</div>
	<br>
	<div align="center">
	<a href="NuevoLoteMedicamentos.jsp" class="btn btn-outline-danger btn-sm"><h3>Nuevo lote Medicamentos</h3></a>	
			
		<a href="Enfermera.jsp" class="btn btn-outline-danger btn-sm"><h3>Volver</h3></a>		
		</div>	
			</div>	
			</div>

<table class="table table-dark" id="TablaMedi">

					<thead>
						<th>Codigo</th>
						<th>nombre</th>
						<th>tipo</th>
						<th>cantidad</th>
						

					</thead>
					<tbody>
						

					</tbody>

	</table>
</div>
</div>
</body>
</html>