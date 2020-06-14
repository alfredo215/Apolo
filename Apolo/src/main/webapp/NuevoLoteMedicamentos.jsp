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

String codigo = request.getParameter("codigo");
String NvMedicamentos = request.getParameter("NvMedicamentos");
String CantidadNmedic = request.getParameter("CantidadNmedic");
String Nfecha = request.getParameter("Nfecha");

if(codigo==null){
	codigo="";
	NvMedicamentos="";
	CantidadNmedic="";
	Nfecha="";
	
}

%>
<form action="ServletLoteMedi" method="get" >
<body>
    <label>Codigo</label>
	<input type="text" name="idNmedic" value="<%=codigo %>">
	<br>
	<label>Medicamentos</label>
	<input type="text" name="nombreNmedic" value="<%=NvMedicamentos %>">
	<br>
	<label>Cantidad</label>
	<input type="text" name="CantidadNmedic" value="<%=CantidadNmedic %>">
	<br>
	<label>fecha</label>
	<input type="text" name="fechaNmedic" placeholder="yyy-mm-dd" value="<%=Nfecha %>">
	<br>
	
<br>
<input type="submit" name="btn" value="Guardar">
<br>


</body>
</form>
</html>