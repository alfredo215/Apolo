<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%
String idBus=request.getParameter("idBus");
String Ced=request.getParameter("Cdoctor");
String Usuar=request.getParameter("Udoctor");
String Contras=request.getParameter("Cdoctor");



if(idBus==null){
	idBus="";
	Ced="";
	Usuar="";
	Contras="";

	
}

%>

<body>


<form action="ServletGuardarUD" method="post">
<table align="center">
	<thead>

	</thead>
		<tbody>
			<tr>
				<td>
					<p>Id</p><input type="text" name="idBus" value="<%=idBus %>">
					<p>CedulaD</p><input type="text" name="Nunombre" value="<%=Ced %>">
					<p>Usuario</p><input type="text" name="Napellido" value="<%=Usuar %>">
					<p>Contraseña</p><input type="password" name="Nespe" value="<%=Contras %>">


					<br>
					<br>
				</td>
			</tr>
		</tbody>
</table>

<input type="submit" class="btn btn-info" value="Guardar" name="btn">
</body>
</html>