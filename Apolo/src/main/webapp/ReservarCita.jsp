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
				<input class="input100" type="text" placeholder="Introdusca su codigo" name="idReserva" value="<%=codigo %>">
				
		
						
						<span class="focus-input100"></span>
					</div>
					
		<div class="p-t-13 p-b-9">
						<span class="txt1">
							Codigo Expedente:
						</span>
					</div>
					<div class="wrap-input100 validate-input" >
					<input class="input100" type="text" placeholder="Introdusca su codigo Expediente" name = "CodigoReserva" value = "<%= ExpePas %>">
						
						<span class="focus-input100"></span>
					</div>
					<div class="p-t-13 p-b-9">
						<span class="txt1">
							Fecha de la cita:
						</span>
					</div>
					<div class="wrap-input100 validate-input" >
						<input class="input100" type="text" placeholder="Introdusca fecha" name="fechaReserva" placeholder="yyy-mm-dd" value="<%=Nfecha %>">
						
						<span class="focus-input100"></span>
					</div>
					<div class="p-t-13 p-b-9">
						<span class="txt1">
							Hora de su cita:
						</span>
					</div>
					<div class="wrap-input100 validate-input" >
					<input class="input100" type="text" placeholder="Introdusca hora cita" name="HoraReserva" value="<%=HoraCita %>">
						
						<span class="focus-input100"></span>
					</div>
					
				<div class="container-login100-form-btn m-t-17" align="center">
				<input type="submit" class="login100-form-btn" name="btn" value="Enviar">

	</div>
	<br>
	<a href="#" class="btn btn-outline-danger btn-sm"><h1>Volver</h1></a>
				
				
			</form>	
			</div>
		</div>
		
	</div>

</body>
</form>
</html>