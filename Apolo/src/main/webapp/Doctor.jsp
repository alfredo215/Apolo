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
<title>Doctor</title>
</head>
<% 
HttpSession sesion = (HttpSession) request.getSession();
String usuSesion = (String) sesion.getAttribute("usuario");

if(usuSesion==null){
	
	response.sendRedirect("LoginD.jsp");
}

%>
<body>
<div class="limiter">
	<div class="p-5 mb-2 bg-primary text-white" align="center" ><h1 class="display-2" style = "font-family:Lucida Bright">INICIO DOCTORES</h1>

	</div>
	
	<div class="p-5 mb-2 "  >
<div class="p-4 mb-2 text-white" align="center" >
<a href="Consulta.jsp" class = "btn btn-outline-primary btn-lg">Consulta</a>

<a href="ConsultaOdontologica.jsp" class = "btn btn-outline-primary btn-lg">Consulta odontologuica</a>

<a href="Enfermedades.jsp" class = "btn btn-outline-primary btn-lg">Ingresar enfermedades</a>

<a href="EditarUsuariosD.jsp" class = "btn btn-outline-primary btn-lg">Editar usuario</a>

<a href="VerExpedientes.jsp" class = "btn btn-outline-primary btn-lg">Ver Expedientes</a>

<img  align="center" src="images/apoloimg.jpg">
	</div>
	
<form action="ServletLogin" method="post">
<input type="submit" class="btn btn-outline-primary btn-lg" value="Cerrar" name="btnCerrar">
</form>
	</div>
	
	
</div>


</body>
</html>