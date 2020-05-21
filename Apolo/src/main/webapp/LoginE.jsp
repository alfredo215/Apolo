<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="ServeletDatos" method="post">
		<!-- Usuario-->
		<label for="username">Usuario</label>
		<input type="text" placeholder="Introdusca usuario" name="user">
		<!-- Usuario-->
		<label for="password">Contraseña</label>
		<input type="password" placeholder="Introdusca contraseña"  name="pass">

		<input type="submit" value="Entrar">
		<br>
		<a href="index.jsp" class = "btn btn-success">Tabla</a>


	</form>
</body>
</html>