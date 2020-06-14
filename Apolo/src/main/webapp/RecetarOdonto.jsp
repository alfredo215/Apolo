<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<form action="ServeletRecetaMedica" method="get">
<body>

<label>Codigo</label>
<input type="text" name="CodigoR" placeholder="Codigo receta">
<br>
<label>Enfermedad</label>
<input type="text" name="Enfermedad" placeholder="Nombre Enfermedad ">
<br>

<label>Enfermedad Odontologica</label>
<input type="text" name="EnfermedaOdon" placeholder="Enfermedad Odontologica"> 

<br>
<label>Medicamento</label>
<input type="text" name="Medicamento" placeholder="Medicamento">
<br>
<label>Cantidad</label>
<input type="text" name="Cantidad" placeholder="Cantidad Medicamento">
<br>
<label>Dosis</label>
<input type="text" name="Dosis" placeholder="Dosis Medicamento">
<br>
<input type="submit" name="btn" value="guardar">
<a href="Doctor.jsp" class = "btn">salir</a>
<br>
    
</body>
</form>
</html>