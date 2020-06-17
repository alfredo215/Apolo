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
<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
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


<% 
HttpSession sesion = (HttpSession) request.getSession();
String usuSesion = (String) sesion.getAttribute("usu");

if(usuSesion==null){
	
	response.sendRedirect("LoginD.jsp");
}

%>
<body>
<form action="ServeletGyAEnfermedad" method="get">
<div class="limiter">
		<div class="container-login100" style="background-image: url('images/bg-01.jpg');">
	
			<div class="wrap-login100 p-l-110 p-r-110 p-t-62 p-b-33" style="background-image: url('images/apoloimg.jpg');">
				<form class="login100-form validate-form flex-sb flex-w">
					<span class="login100-form-title p-b-53 text-white">
						Registrar Nuevas Enfermedades:

					</span>	

<div class="p-t-31 p-b-9">

            <label> ID Enfermedad:</label>      
					</div>
				<div class="wrap-input100 validate-input" data-validate = "codigo is required">	
				<input class="input100" type="text" name="nefd" value="<%=id %>" placeholder="ID de la Enfermedad">
						
						<span class="focus-input100"></span>
					</div>

<div class="p-t-31 p-b-9">
                <label>Nombre de la Enfermedad:</label>
					</div>
				<div class="wrap-input100 validate-input" data-validate = "codigo is required">	
				<input class="input100" type="text" name="nombreE" value="<%=ne %>" placeholder="Nombre Enfermedad">
						
						<span class="focus-input100"></span>
					</div>

  <div class="p-t-31 p-b-9">
			<label>Tipo de Enfermedad:</label>
					</div>
				<div class="wrap-input100 validate-input" data-validate = "codigo is required">	
			<input class="input100" type="text"  name="tipoE" value="<%= te %>" placeholder="Tipo de Enfermedad">
						
						<span class="focus-input100"></span>
					</div>
  
  
				<div class="container-login100-form-btn m-t-17" align="center">
<input type="submit" class="login100-form-btn" name="btn" value="Guardar">
	</div>
	
		<div class="container-login100-form-btn m-t-17" align="center">
<input type="submit" class="login100-form-btn" name="btn" value="Actualizar">
	</div>
	
	<br>
	<div align="center">
	<a href="MostrarEnfd.jsp" class="btn btn-outline-danger btn-sm"><h3>Mostrar</h3> </a>
	<a href="Doctor.jsp" class="btn btn-outline-danger btn-sm"><h3>Volver</h3></a>
		</div>		
	
				
			</form>	
			</div>
		</div>
		
	</div>









</form>
<br>





</body>
</html>