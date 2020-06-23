<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<head>
	<title>Login</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>


<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="maxLength/maxLength.js"></script>
<script type="text/javascript">
$(function () {
$("#idexpe").maxLength(5);	

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
				<form action="ServletReservar" method="post">
	
	<div class="limiter">
		<div class="container-login100" style="background-image: url('images/bg-01.jpg');">
			<div class="wrap-login100 p-l-110 p-r-110 p-t-62 p-b-33" style="background-image: url('images/apoloimg.jpg');">
				<form class="login100-form validate-form flex-sb flex-w">
					<span class="login100-form-title p-b-53 text-white">
						Reservar Cita:
					</span>
					
					
						
			
						
			<div class="p-t-31 p-b-9">
						<span class="txt1">			
        <label for="username">Expediente</label>
        </span>
					</div>
				<div class="wrap-input100 validate-input" data-validate = "Username is required">	
				<input class="input100" type="text" 

onkeypress="return soloNumeros(event)" onpaste="return false" placeholder="Introdusca Expediente" name="expe" id="idexpe">
				
		
						
						<span class="focus-input100"></span>
					</div>
					
				<div class="container-login100-form-btn m-t-17">
				<input align="center" class="login100-form-btn" type="submit" value="Entrar">
	         </div>
				
		
<div class="w-full text-center p-t-55">
						<span class="txt2">
							
						</span>

		
					</div>
				<a href="index.jsp" class="btn btn-outline-danger btn-sm"><h1>Volver</h1></a>
			</form>	
			</div>
		</div>
	</div>
		</form>

	<div id="dropDownSelect1"></div>
	

</body>
</html>