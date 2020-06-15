<html>
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

<script src="http://code.jquery.com/jquery-latest.js"></script>

<script type="text/javascript">

$(document).ready(function(){
 $('#cargar').click(function(){
	 
	
	

	var caja= $('#buscardatos').val();
	$.post('ServeletGyAEnfermedad',{
		caja
	},function(response){

	let datos = JSON.parse(response);
	console.log(datos)


	var tabladatos = document.getElementById('tablaEnfer');
	for (let item of datos){

		tabladatos.innerHTML +=`
	
			<td>${item[0]}</td>
		 	<td>${item[1]}</td>
		 	<td>${item[2]}</td>
		 	<td><a href="Enfermedades.jsp?id=${item[0]}&nombreEnf=${item[1]}&tipo=${item[2]}" class="btn btn-danger"> Actualizar</a> </td> 
		 	
 	   
		`

	}

 });
});
});


</script>



<body>
<br>
<label>Buscar Enfermedad:</label>
<input type="text" name="" placeholder="Escribe la Enfermedad" id="buscardatos">
<input type="submit" class="btn btn-info" name="Buscar" id="cargar" value="buscar">
			
			<a href="Enfermedades.jsp" class="btn btn-info">Agregar Nueva Enfermedad</a>
			<br>

					<table class="table table-dark" id="tablaEnfer">
						<thead>  
						<th>Numero de Enfermedad</th>
		                <th>Nombre Enfermedad</th>
		                <th>Tipo</th>
								
						</thead>
							<tbody>
								
							</tbody>

					</table>

</body>
</html>