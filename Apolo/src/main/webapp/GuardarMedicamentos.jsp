<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<% 

String codigo = request.getParameter("id");
String nombre = request.getParameter("nombre");
String tipo = request.getParameter("tipo");
String cantidad = request.getParameter("cantidad");

if(codigo==null){
	codigo="";
	nombre="";
	tipo="";
	cantidad="";
	
}


%>
<form action="ServeletMedicamentos" method="get" >
<body>
    <label>Codigo</label>
	<input type="text" name="Id" value="<%=codigo %>">
	<br>
	<label>nombre</label>
	<input type="text" name="nombre" value="<%=nombre %>">
	<br>
	<label>tipo</label>
	<input type="text" name="tipoM" value="<%=tipo %>">
	<br>
	<label>cantidad</label>
	<input type="text" name="cantidadM" value="<%=cantidad %>">
	<br>
	
<br>
<input type="submit" name="btn" value="guardar">
<input type="submit" name="btn" value="actualizar">
<br>


</body>
</form>
</html>