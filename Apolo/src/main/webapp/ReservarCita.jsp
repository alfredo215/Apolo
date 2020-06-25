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
<title>Reservar cita</title>
</head>
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<% 

String codigo = request.getParameter("codigo");
String ExpePas = request.getParameter ("ExpePas");
String HoraCita = request.getParameter("HoraCita");
String Nfecha = request.getParameter("Nfecha");

if(codigo==null){
	codigo="";
	ExpePas = "";
	HoraCita="";
	Nfecha="";
	
}

%>

<% 
HttpSession sesion = (HttpSession) request.getSession();
String usuSesion = (String) sesion.getAttribute("expediente");

if(usuSesion==null){
	
	response.sendRedirect("LoginCita.jsp");
}

%>

<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="maxLength/maxLength.js"></script>
<script type="text/javascript">
$(function () {
$("#cod").maxLength(5);	
$("#codex").maxLength(5);	
$("#fecha").maxLength(11);	
$("#hora").maxLength(6);	

});
</script>


<script type="text/javascript">

function soloNumeros(e) {
	key=e.keyCode || e.which;
	
	teclado=String.fromCharCode(key);
	
	numeros="0123456789-:";
	
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


<form action="ServletReservar" method="get" >
<body>
<div class="limiter">
		<div class="container-login100" style="background-image: url('images/bg-01.jpg');">
	
			<div class="wrap-login100 p-l-110 p-r-110 p-t-62 p-b-33" style="background-image: url('images/apoloimg.jpg');">
				<form class="login100-form validate-form flex-sb flex-w">
					<span class="login100-form-title p-b-53 text-white">
						Reservacion de Citas:

					</span>	
			<div class="p-t-31 p-b-9">
						<span class="txt1">			
        Codigo:
        </span>
					</div>
				<div class="wrap-input100 validate-input" >	
	<input class="input100" type="text" id="cod" onkeypress="return soloNumeros(event)" onpaste="return false" placeholder="Introdusca su codigo" name="idReserva" value="<%=codigo %>" required>
				
		
						
						<span class="focus-input100"></span>
					</div>
					
		<div class="p-t-13 p-b-9">
						<span class="txt1">
							Codigo Expedente:
						</span>
					</div>
					<div class="wrap-input100 validate-input" >
	<input class="input100" type="text" onkeypress="return soloNumeros(event)" onpaste="return false"  id="codex" placeholder="Introdusca su codigo Expediente" name = "CodigoReserva" value = "<%= ExpePas %>" required>
						
						<span class="focus-input100"></span>
					</div>
					<div class="p-t-13 p-b-9">
						<span class="txt1">
							Fecha de la cita: yyyy-mm-dd
						</span>
					</div>
					<div class="wrap-input100 validate-input" >
<input class="input100" onkeypress="return soloNumeros(event)" onpaste="return false" type="text" id="fecha" placeholder="Introdusca fecha yyyy-mm-dd" name="fechaReserva" placeholder="yyy-mm-dd" value="<%=Nfecha %>" required>
						
						<span class="focus-input100"></span>
					</div>
					<div class="p-t-13 p-b-9">
						<span class="txt1">
							Hora de su cita:
						</span>
					</div>
<div class="wrap-input100 validate-input" >
<input class="input100" onkeypress="return soloNumeros(event)" onpaste="return false" type="text" id="hora" placeholder="Introdusca hora cita" name="HoraReserva" value="<%=HoraCita %>" required>
						
						<span class="focus-input100"></span>
					</div>
					
				<div class="container-login100-form-btn m-t-17" align="center">
				<input type="submit" class="login100-form-btn" name="btn" value="Enviar">

	</div>
	<br>
	<a href="LoginCita.jsp" class="btn btn-outline-danger btn-sm"><h1>Volver</h1></a>
				
				
			</form>	
			</div>
		</div>
		
	</div>

</body>
</form>
</html>