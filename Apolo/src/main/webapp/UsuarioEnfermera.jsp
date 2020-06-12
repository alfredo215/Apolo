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
String CedE=request.getParameter("Cenfermera");
String Usuar=request.getParameter("User");
String Contras=request.getParameter("Codoctor");



if(idBus==null){
	idBus="";
	CedE="";
	Usuar="";
	Contras="";

	
}

%>

<body>


<form action="ServletGuardarU" method="get">
<table align="center">
	<thead>

	</thead>
		<tbody>
			<tr>
				<td>
					<p>Id</p><input type="text" name="idBus" value="<%=idBus %>">
					<p>CedulaE</p><input type="text" name="Cenfermera" value="<%=CedE %>">
					<p>Usuario</p><input type="text" name="User" value="<%=Usuar %>">
					<p>Contraseña</p><input type="password" name="Contra" value="<%=Contras %>">


					<br>
					<br>
				</td>
			</tr>
		</tbody>
</table>

<input type="submit" class="btn btn-info" value="Guardar" name="btn">
</body>
</html>