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
				<input class="input100" type="text" placeholder="Introdusca su Cedula" name="Id" value="<%=idBus %>">
		
						
						<span class="focus-input100"></span>
					</div>
					
		<div class="p-t-13 p-b-9">
						<span class="txt1">
							Nombre:
						</span>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "nombre is required">
					<input class="input100" type="text" placeholder="Introdusca su Nombre" name="Nunombre" value="<%=Nom %>">
						
						<span class="focus-input100"></span>
					</div>
					<div class="p-t-13 p-b-9">
						<span class="txt1">
							Apellido:
						</span>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "apellido is required">
					<input class="input100" type="text" placeholder="Introdusca su Apellido" name="Napellido" value="<%=Ape %>">
						
						<span class="focus-input100"></span>
					</div>
					<div class="p-t-13 p-b-9">
						<span class="txt1">
							Especialidad:
						</span>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "nombre is required">
					<input class="input100" type="text" placeholder="Introdusca su Especialidad" name="Nespe" value="<%=Espe %>">
						
						<span class="focus-input100"></span>
					</div>
					<div class="p-t-13 p-b-9">
						<span class="txt1">
							Telefono:
						</span>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "nombre is required">
						<input class="input100" type="text" placeholder="Introdusca su Telefono" name="Ntel" value="<%=Tel %>">
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