<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<title>Medicamentos</title>
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
<% 
HttpSession sesion = (HttpSession) request.getSession();
String usuSesion = (String) sesion.getAttribute("usuario");

if(usuSesion==null){
	
	response.sendRedirect("LoginE.jsp");
}

%>


<script src="maxLength/maxLength.js"></script>
<script type="text/javascript">
$(function () {
$("#buscardatos").maxLength(5);	

});
</script>

<script type="text/javascript">

function soloNumeros(e) {
	key=e.keyCode || e.which;
	
	teclado=String.fromCharCode(key);
	
	numeros="0123456789";
	
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
<div class="limiter">
		<div class="container-login100" style="background-image: url('images/bg-01.jpg');">
	
			<div class="login100 p-l-110 p-r-110 p-t-62 p-b-33" >
				<div class="login100-form validate-form flex-sb flex-w">
					<span class="login100-form-title p-b-53 text-white">
					Buscador:

					</span>	
				<div class="wrap-input100 validate-input" data-validate = "medicamento is required">	
<input class="input100" onkeypress="return soloNumeros(event)" onpaste="return false" type="text" name="" placeholder="Escribe el Medicamento" id="buscardatos" required>
		
						
						<span class="focus-input100"></span>
					</div>
					
		
				<div class="container-login100-form-btn m-t-17" align="center">
				<input type="submit" class="login100-form-btn" name="BUSCAR" id="cargar" value="buscar">
					<br>
					

	</div>
	<br>
	<br>
	<a href="Enfermera.jsp" class="btn btn-outline-danger btn-sm"><h3>Volver</h3></a>
	<br>
	<a href="GuardarMedicamentos.jsp" class="btn btn-outline-danger btn-sm"><h3>Agregar</h3></a>			
				
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




<br>



</body>
</html>