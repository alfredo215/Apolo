<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<title>Ingresar Enfermera</title>
</head>
<%
String idBus=request.getParameter("idBus");
String Nom=request.getParameter("Nom");
String Ape=request.getParameter("Ape");
String Espe=request.getParameter("Espe");


if(idBus==null){
	idBus="";
	Nom="";
	Ape="";
	Espe="";
	
}

%>

<body>


<form action="ServletLoginEnfermera" method="get">
<table align="center">
	<thead>

	</thead>
		<tbody>
			<tr>
				<td>
					<p>Cedula</p><input type="text" name="Id" value="<%=idBus %>">
					<p>Nombre</p><input type="text" name="Nunombre" value="<%=Nom %>">
					<p>Apellido</p><input type="text" name="Napellido" value="<%=Ape %>">
					<p>Especialidad</p><input type="text" name="Nespe" value="<%=Espe %>">

					<br>
					<br>
				</td>
			</tr>
		</tbody>
</table>

<input type="submit" class="btn btn-info" value="Guardar" name="btn">
<input type="submit" class="btn btn-info" value="Actualizar" name= "btn">
</form>
</body>
</html>