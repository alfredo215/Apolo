<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<head>
<meta charset="ISO-8859-1">

<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<title>Ingresar Doctor</title>

</head>
<%
String idBus=request.getParameter("idBus");
String Nom=request.getParameter("Nom");
String Ape=request.getParameter("Ape");
String Espe=request.getParameter("Espe");
String Tel=request.getParameter("Tel");


if(idBus==null){
	idBus="";
	Nom="";
	Ape="";
	Espe="";
	Tel="";
	
}

%>

<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="maxLength/maxLength.js"></script>
<script type="text/javascript">
$(function () {
$("#Id").maxLength(5);	
$("#nom").maxLength(71);	
$("#ape").maxLength(71);	
$("#espe").maxLength(71);	
$("#tel").maxLength(9);	

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


<form action="ServletLogin" method="get">

<div class="limiter">
		<div class="container-login100" style="background-image: url('images/bg-01.jpg');">
	
<div class="wrap-login100 p-l-110 p-r-110 p-t-62 p-b-33" style="background-image: url('images/apoloimg.jpg');">
<form class="login100-form validate-form flex-sb flex-w">
<span class="login100-form-title p-b-53 text-white">
						Registro Doctor/ra:

					</span>	
			<div class="p-t-31 p-b-9">
						<span class="txt1">			
        Cedula:
        </span>
</div>
<div class="wrap-input100 validate-input" data-validate = "cedula is required">	
<input class="input100" onkeypress="return soloNumeros(event)" onpaste="return false" type="text" placeholder="Introdusca su Cedula" name="Id" value="<%=idBus %>" id="Id" required>
		
						
						<span class="focus-input100"></span>
					</div>
					
		<div class="p-t-13 p-b-9">
						<span class="txt1">
							Nombre:
						</span>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "nombre is required">
					<input class="input100" type="text" placeholder="Introdusca su Nombre" name="Nunombre" value="<%=Nom %>" id="nom" required>
						
						<span class="focus-input100"></span>
					</div>
					<div class="p-t-13 p-b-9">
						<span class="txt1">
							Apellido:
						</span>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "apellido is required">
					<input class="input100" type="text" placeholder="Introdusca su Apellido" name="Napellido" value="<%=Ape %>" id="ape" required>
						
						<span class="focus-input100"></span>
					</div>
					<div class="p-t-13 p-b-9">
						<span class="txt1">
							Especialidad:
						</span>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "nombre is required">
					<input class="input100" type="text" placeholder="Introdusca su Especialidad" name="Nespe" value="<%=Espe %>" id="espe" required>
						
						<span class="focus-input100"></span>
					</div>
					<div class="p-t-13 p-b-9">
						<span class="txt1">
							Telefono:
						</span>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "nombre is required">
<input class="input100" onkeypress="return soloNumeros(event)" onpaste="return false" type="text" placeholder="Introdusca su Telefono" name="Ntel" value="<%=Tel %>" id="tel" required>
<span class="focus-input100"></span>
				</div>
				<div class="container-login100-form-btn m-t-17" align="center">
					<input type="submit" class="login100-form-btn" value="Guardar" name="btn">

	</div>
	<br>
	<a href="LoginD.jsp" class="btn btn-outline-danger btn-sm"><h1>Volver</h1></a>
				
				
			</form>	
			</div>
		</div>
		
	</div>
</form>
</body>
</html>