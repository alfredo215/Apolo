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
		
			$.post('ServletGuardarU',{

			},function(respose){

			let datos = JSON.parse(respose)
			console.log(datos[0][2]);
			var tabladatos = document.getElementById('tablaDatos')
			for (let item of datos) {
				//if({item[2]==null || item[2]==undefined){
					//{item[2]=="No disponible"
					
				
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
		
</script>



<label>buscador</label>
<input type="text" name="" placeholder="Escribe tu cedula">
<input type="submit" name="buscar" value="Buscar">
<br>
<label>usuario</label>
<input type="text" name="">
<br>
<label>contrasenia</label>
<input type="text" name="">
<br>

<label>e  opciones van los botones de eliminar y actualizar pero solo sera posible al escribir en un buscador la cedula de la persona de lo contrario la tabla no mostrara nada pero si escribe su cedula en el buscador se mostrara en la tabla el usuario con las opciones y si desea actualizar se cargaran los datos en los txt de arriba</label>
	
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
						

					</tbody>

	</table>

</body>
</html>