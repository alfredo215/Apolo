<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<script src="http://code.jquery.com/jquery-latest.js">
</script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#carga').click(function(){
			
			var	caja = $('#datos').val();
			$.post('ServletGuardarUD',{
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
					<td><a href="ServletGuardarUD?btn=Eliminar&idBus=${item[0]}" class = "btn btn-warning">Eliminar</a>
					<a href="UsuarioDoctor.jsp?idBus=${item[0]}&Ced=${item[3]}&Usuar=${item[4]}&Contras=${item[5]}" class = "btn btn-danger">Modificar</a>
					
					</tr>
					
				`	
			}

			});
			
		});
		
		});
		
</script>

<% 
HttpSession sesion = (HttpSession) request.getSession();
String usuSesion = (String) sesion.getAttribute("usuario");

if(usuSesion==null){
	
	response.sendRedirect("LoginD.jsp");
}

%>

<script src="maxLength/maxLength.js"></script>
<script type="text/javascript">
$(function () {
$("#datos").maxLength(61);	

});
</script>

<body>
<div class="limiter">
		<div class="container-login100" style="background-image: url('images/bg-01.jpg');">
	
			<div class=" p-l-110 p-r-110 p-t-62 p-b-33">
				<form class="login100-form validate-form flex-sb flex-w">
					<span class="login100-form-title p-b-53 text-white">
						Usuarios:

					</span>	

<label>buscador</label>

<div class="wrap-input100 validate-input" data-validate = "Enfermedad is required">	
				<input class="input100" type="text" name="" placeholder="Escribe tu usuario" id="datos">
		
						
						<span class="focus-input100"></span>
					</div>
					
		
				<div class="container-login100-form-btn m-t-17" align="center">
				<input type="submit" class="login100-form-btn" name="buscar" id="carga" value="buscar">
					<br>
					

	</div>
	<br>
	<br>
	<a href="Doctor.jsp" class="btn btn-outline-danger btn-sm"><h3>Volver</h3></a>
	<br>		
				
			</form>	
			
			</div>


	<table class="table table-dark" id="tablaDatos">

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
</div>
			</div>
</body>
</html>