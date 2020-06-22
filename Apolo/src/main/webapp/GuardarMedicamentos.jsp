<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<title>Insert title here</title>
</head>
<% 
HttpSession sesion = (HttpSession) request.getSession();
String usuSesion = (String) sesion.getAttribute("usuario");

if(usuSesion==null){
	
	response.sendRedirect("LoginE.jsp");
}

%>
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
<div class="limiter">
		<div class="container-login100" style="background-image: url('images/bg-01.jpg');">
	
			<div class="login100 p-l-110 p-r-110 p-t-62 p-b-33" style="background-image: url('images/apoloimg.jpg');">
				<form class="login100-form validate-form flex-sb flex-w" >
					<span class="login100-form-title p-b-53 text-white">
					Guardar Medicamentos:
					</span>	
					
					<label>Codigo:</label>	
				<div class="wrap-input100 validate-input">
				<input class="input100" type="text"  placeholder="Escribe el codigo" name="Id" value="<%=codigo %>" required>	
						<span class="focus-input100"></span>
					</div>
				
					<label>Nombre:</label>
				<div class="wrap-input100 validate-input">	
				<input class="input100" type="text" placeholder="Escribe el nombre" name="nombre" value="<%=nombre %>" required>
						<span class="focus-input100"></span>
					</div>
						
					<label>Tipo</label>
				<div class="wrap-input100 validate-input">
				<input class="input100" type="text" placeholder="Escribe el tipo " name="tipoM" value="<%=tipo %>" required>	
						<span class="focus-input100"></span>
					</div>

					<label>Cantidad</label>
				<div class="wrap-input100 validate-input" >	
				<input class="input100" type="text" placeholder="Escribe la cantidad" name="cantidadM" value="<%=cantidad %>" required>
						<span class="focus-input100"></span>
					</div>
					
				<div class="container-login100-form-btn m-t-17" align="center">
				<input type="submit" class="login100-form-btn" name="btn" value="guardar"">	
    </div>
    <div class="container-login100-form-btn m-t-17" align="center">				
					<input type="submit" class="login100-form-btn" name="btn" value="actualizar" ">
					
    </div>
	<br>
	<br>
	<a href="Medicamentos.jsp" class="btn btn-outline-danger btn-sm"><h3>Volver</h3></a>		
				
			</form>	
			</div>
</div>
</div>





</body>
</form>
</html>