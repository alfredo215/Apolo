<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reservar cita</title>
</head>
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<% 

String codigo = request.getParameter("codigo");
String ExpePas = request.getParameter("ExpePas");
String HoraCita = request.getParameter("HoraCita");
String Nfecha = request.getParameter("Nfecha");

if(codigo==null){
	codigo="";
	ExpePas="";
	HoraCita="";
	Nfecha="";
	
}

%>
<form action="ServletReservar" method="get" >
<body>
    <label>Codigo</label>
	<input type="text" name="idReserva" value="<%=codigo %>">
	<br>
	<label>Codigo Expediente</label>
	<input type="text" name="CodigoReserva" value="<%=ExpePas %>">
	<br>
	<label>Fecha de la cita</label>
	<input type="text" name="fechaReserva" placeholder="yyy-mm-dd" value="<%=Nfecha %>">
	<br>
	<label>Hora de su cita</label>
	<input type="text" name="HoraReserva" value="<%=HoraCita %>">
	<br>
	
	
<br>
<input type="submit" name="btn" value="Enviar">
<br>


</body>
</form>
</html>