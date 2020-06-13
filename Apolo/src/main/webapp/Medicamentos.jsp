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
<br> <br>
<label>buscador</label>
<input type="text" name="" placeholder="Escribe tu Codigo del Medicamento" id="buscardatos">
<input type="submit" name="BUSCAR" id="cargar" value="buscar">
<br>

<a href="GuardarMedicamentos.jsp" type="submit" class="btn btn-info">Guardar</a>
<br>
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

</body>
</html>