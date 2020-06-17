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
	
	response.sendRedirect("LoginD.jsp");
}

%>

<%
String idBus=request.getParameter("idBus");
String Ced=request.getParameter("Ced");
String Usuar=request.getParameter("Usuar");
String Contras=request.getParameter("Contras");



if(idBus==null){
	idBus="";
	Ced="";
	Usuar="";
	Contras="";

	
}

%>

<body>


<form action="ServletGuardarUD" method="get">


<div class="limiter">
		<div class="container-login100" style="background-image: url('images/bg-01.jpg');">
	
			<div class="wrap-login100 p-l-110 p-r-110 p-t-62 p-b-33" style="background-image: url('images/apoloimg.jpg');">
				<form class="login100-form validate-form flex-sb flex-w">
					<span class="login100-form-title p-b-53 text-white">
						Usuario Doctor:

					</span>	
			<div class="p-t-31 p-b-9">
						<span class="txt1">			
        ID:
        </span>
					</div>
				<div class="wrap-input100 validate-input" >
				<input class="input100" type="text" placeholder="Introdusca su ID" name="idBus" value="<%=idBus %>">	

						
						<span class="focus-input100"></span>
					</div>
					
		<div class="p-t-13 p-b-9">
						<span class="txt1">
							Cedula Doc.:
						</span>
					</div>
					<div class="wrap-input100 validate-input" >
					<input class="input100" type="text" placeholder="Introdusca la Cedula Doc." name="Cdoctor" value="<%=Ced %>">
					
						
						<span class="focus-input100"></span>
					</div>
					<div class="p-t-13 p-b-9">
						<span class="txt1">
							Usuario:
						</span>
					</div>
					<div class="wrap-input100 validate-input" >
					<input class="input100" type="text" placeholder="Introdusca su Usuario" name="User" value="<%=Usuar %>">
						
						<span class="focus-input100"></span>
					</div>
					<div class="p-t-13 p-b-9">
						<span class="txt1">
							Contraseņa:
						</span>
					</div>
					<div class="wrap-input100 validate-input" >
					<input class="input100" type="password" placeholder="Introdusca la Contraseņa" name="Contra" value="<%=Contras %>">
						
						<span class="focus-input100"></span>
					</div>
					
				<div class="container-login100-form-btn m-t-17" align="center">
				<input type="submit" class="login100-form-btn" value="Guardar" name="btn">
                <input type="submit" class="login100-form-btn" value="Actualizar" name="btn">
				

	</div>
	<br>
	<a href="LoginD.jsp" class="btn btn-outline-danger btn-sm"><h1>Volver</h1></a>
				
				
			</form>	
			</div>
		</div>
		
	</div>
</form>
</body>
</html>