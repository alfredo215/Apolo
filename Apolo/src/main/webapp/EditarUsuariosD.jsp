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
			$.post('ServletGuardarUD',{

			},function(respose){

			let datos = JSON.parse(respose)

			var tabladatos = document.getElementById('tablaDatos')
			
			for (let item of datos) {

					
				
				tabladatos.innerHTML +=`
		
					<tr>
					<td>${item[0]}</td>
					<td>${item[1]}</td>
					<td>${item[4]}</td>
					<td>${item[5]}</td>
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






<label>buscador</label>
<input type="text" name="" placeholder="Escribe tu cedula">
<input type="submit" name="buscar" id="carga" value="buscar">
<br>
<label>usuario</label>
<input type="text" name="">
<br>
<label>contrasenia</label>
<input type="text" name="">
<br>

	<table class="table table" id="tablaDatos">

					<thead>
						<th>Id</th>
						<th>CedulaDoctor</th>
						<th>Nombre</th>
						<th>Apellido</th>
						<th>Usuario</th>
						<th>contrasenia</th>
						<th>Opciones</th>
						

					</thead>
					<tbody>
						

					</tbody>

	</table>

</body>
</html>