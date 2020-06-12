<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="http://code.jquery.com/jquery-latest.js">
</script>
<script type="text/javascript">
$(document).ready(function(){
	$('#carga').click(function(){
		
		var	caja = $('#datos').val();
		$.post('ServletGuardarU',{
			caja
		},function(respose){

		let datos = JSON.parse(respose)
		console.log(datos)

		var tabladatos = document.getElementById('tablaDatos')

		for (let item of datos) {

				
			
			tabladatos.innerHTML +=`
	
				<tr>
				<td>${item[0]}</td>
				<td>${item[3]}</td>
				<td>${item[1]}</td>
				<td>${item[2]}</td>
				<td>${item[4]}</td>
				<td>${item[5]}</td>
			
				<td><a href="ServletGuardarU?btn=Eliminar&idBus=${item[0]}" class = "btn btn-warning">Eliminar</a>
				<a href="UsuarioEnfermera.jsp?idBus=${item[0]}&CedE=${item[3]}&Usuar=${item[4]}&Contras=${item[5]}" class = "btn btn-danger">Modificar</a>
				
				</tr>
				
			`
			
		}

		});
		
	});
	
	});
	
</script>
<label>buscador</label>
<input type="text" name="" placeholder="Escribe tu usuario" id="datos">
<input type="submit" name="buscar" id="carga" value="buscar">
<br>
	
	<table class="table table" id="tablaDatos">

					<thead>
						<th>Id</th>
						<th>CedulaEnfermera</th>
						<th>Nombre</th>
						<th>Apellido</th>
						<th>Usuario</th>
						<th>contrasenia</th>
						<th>Opciones</th>
						

					</thead>
					<tbody>
						<tr id="tablaDatos"></tr>

					</tbody>

	</table>

</body>
</html>