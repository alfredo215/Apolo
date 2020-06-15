<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<form action="ServeletGuardarC" method="get">
<body>

<label>Codigo consulta:</label>
<br>
<input type="text" name="codigoConsul" placeholder="Codigo consulta">
<br>
<label>Cedula:</label>
<br>
<input type="text" name="Cedula" placeholder="Cedula de Doctor">
<br>
<label>Paciente</label>
<br>
<input type="text" name="Paciente" placeholder="Ingrese Paciente">
<br> 
<label>Sintomas</label>
<br>
<input type="text" name="sintomas" placeholder="Ingrese el sintoma">
<br>
<label>Enfermedad</label>
<br>
<input type="text" name="Enfermedades" placeholder="Ingrese la Enfermedades">
<br> <br>
<input type="submit" name="btn" value="Recetar"  >

<!-- <a href="Doctor.jsp" class ="btn">salir</a> -->





</body>
</form>
</html>