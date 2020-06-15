<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<body>

<form action="ServeletGconsultaOdon" method="get">
<body>

<label>Codigo consulta Odontologica:</label>
<br>
<input type="text" name="codigoConsulO" placeholder="Codigo consulta Odontologica">
<br>
<label>Cedula:</label>
<br>
<input type="text" name="Cedula" placeholder="Cedula de Odontologo">
<br>
<label>Paciente</label>
<br>
<input type="text" name="Paciente" placeholder="Ingrese el Paciente">
<br> 
<label>Sintomas</label>
<br>
<input type="text" name="sintomas" placeholder="Ingrese el sintoma">
<br>
<label>Enfermedad Odontologica</label>
<br>
<input type="text" name="Enfermedades" placeholder="Ingrese la Enfermedade ">
<br> <br>


<input type="submit" name="btn" value="Recetar">
<a href="Doctor.jsp" class = "btn">salir</a>

</body>
</form>
</html>