<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<script src="http://code.jquery.com/jquery-latest.js">
</script>

<head>
<meta charset="ISO-8859-1">
<title>Enfermedades</title>
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
</head>

<%
String id=request.getParameter("id");
String ne=request.getParameter("nombreEnf");
String te=request.getParameter("tipo");

if(id==null){
	id="";
	ne="";
	te="";
	
}

%>

<body>

<h1 align="center">Registrar Nuevas Enfermedades:</h1>
<br>
<form action="ServeletGyAEnfermedad" method="get">
<Div align="center">
<div>
<label>ID Enfermedad:</label>
<br>
<input type="text" name="nefd" value="<%=id %>" placeholder="ID de la Enfermedad">
</div>
<br>
<div>
<label>Nombre de la Enfermedad:</label>
<br>
<input type="text" name="nombreE" value="<%=ne %>" placeholder="Nombre Enfermedad">
</div>
<br>
<div>
<label>Tipo de Enfermedad:</label>
<br>
<input type="text"  name="tipoE" value="<%= te %>" placeholder="Tipo de Enfermedad">
</div>
<br>
<br>
<input type="submit" class="btn btn-info" name="btn" value="Guardar">

<input type="submit" class="btn btn-info" name="btn" value="Actualizar">




<a href="MostrarEnfd.jsp" class="btn btn-info">Atras </a>
</Div>
</form>
<br>



<!-- <a href="#" class = "btn">salir</a> -->

</body>
</html>