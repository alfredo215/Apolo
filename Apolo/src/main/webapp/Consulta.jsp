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
<title>Consulta</title>
<!-- ----------------------------------------------------------------------------------------- -->
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$.post('ServletSelectConsulta',{
		
	},function(response){
	let datos = JSON.parse(response);
	console.log(datos)
	var selector = document.getElementById('TipoSelect');
	for (let item of datos){

		selector.innerHTML +=`
			<option value = "${item[0]}">${item[1]}</option>
		`
	}
	
});
});
</script>
<!-- ---------------------------------------------------------- -->
</head>

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
$("#CodiCon").maxLength(5);	
$("#CedD").maxLength(5);	
$("#Pas").maxLength(5);	
$("#Sinto").maxLength(61);	


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


<form action="ServeletGuardarC" method="get">
<body>
<div class="limiter">
		<div class="container-login100" style="background-image: url('images/bg-01.jpg');">
	
			<div class="wrap-login100 p-l-110 p-r-110 p-t-62 p-b-33" style="background-image: url('images/apoloimg.jpg');">
				<form class="login100-form validate-form flex-sb flex-w">
					<span class="login100-form-title p-b-53 text-white">
						Consulta:

					</span>	
					
<label>Codigo consulta:</label>
<div class="wrap-input100 validate-input">
<input class="input100" type="text" name="codigoConsul" placeholder="Codigo consulta" onkeypress="return soloNumeros(event)" onpaste="return false" id="CodiCon" required>
<span class="focus-input100"></span>
					</div>
<label>Cedula:</label>
<div class="wrap-input100 validate-input">
<input class="input100" type="text" name="Cedula" placeholder="Cedula de Doctor" onkeypress="return soloNumeros(event)" onpaste="return false" id="CedD" required>
<span class="focus-input100"></span>
					</div>
<label>Paciente:</label>
<div class="wrap-input100 validate-input">
<input class="input100" type="text" onkeypress="return soloNumeros(event)" onpaste="return false" name="Paciente" placeholder="Ingrese Paciente"  id="Pas" required>
<span class="focus-input100"></span>
					</div>
<label>Sintomas:</label>
<div class="wrap-input100 validate-input">
<input class="input100" type="text" name="sintomas" placeholder="Ingrese el sintoma"  id="Sinto" required>
<span class="focus-input100"></span>
					</div>
<label>Enfermedad:</label>
<div class="wrap-input100 validate-input" >

<select class="input100" name="Enfermedades"  id="TipoSelect" required>
<option value>Elige...</option>
</select>
<span class="focus-input100"></span>
					</div>
<div class="container-login100-form-btn m-t-17" align="center">
<input class="login100-form-btn"  type="submit" name="btn" value="Recetar">
</div>
<br>
<a href="Doctor.jsp" class="btn btn-outline-danger btn-lg"><h3>salir</h3></a>
</form>
	</div>
		</div>
		
	</div>




</body>
</form>
</html>