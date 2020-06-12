<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<form action="gaMedicamentos" method="get">
<body>
    <label>Codigo</label>
	<input type="text" name="Id">
	<br>
	<label>nombre</label>
	<input type="text" name="nombre">
	<br>
	<label>tipo</label>
	<input type="text" name="tipoM">
	<br>
	<label>cantidad</label>
	<input type="text" name="cantidadM">
	<br>
	
<br>
<input type="submit" name="btn" value="guardar">
<input type="submit" name="btn" value="actualizar">
<br>
<table class="table table">

					<thead>
						<th>Codigo</th>
						<th>nombre</th>
						<th>tipo</th>
						<th>cantidad</th>
						

					</thead>
					<tbody>
						

					</tbody>

	</table>

</body>
</form>
</html>