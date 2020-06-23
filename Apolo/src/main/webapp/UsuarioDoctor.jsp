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

<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="maxLength/maxLength.js"></script>
<script type="text/javascript">
$(function () {
$("#Iddoc").maxLength(5);	
$("#cedoc").maxLength(5);	
$("#usua").maxLength(61);	
$("#contrasenia").maxLength(61);	

});
</script>


<script type="text/javascript">

function soloNumeros(e) {
	key=e.keyCode || e.which;
	
	teclado=String.fromCharCode(key);
	
	numeros="0123456789";
	
	especiales="8-37-38-46";
	
	teclado_especial=false;
	
	for (var i in especiales) {
		if (key==especiales[i]) {
			teclado_especial=true;
			
		}
		
	}
	
	if (numeros.indexOf(teclado)==-1 && !teclado_especial) {
		return false;
		
	}
	
	  
	
}
</script>




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
<input class="input100" id="Iddoc" onkeypress="return soloNumeros(event)" onpaste="return false" type="text" 
placeholder="Introdusca su ID" name="idBus" value="<%=idBus %>" required>	

						
						<span class="focus-input100"></span>
					</div>
					
		<div class="p-t-13 p-b-9">
						<span class="txt1">
							Cedula Doc.:
						</span>
					</div>
					<div class="wrap-input100 validate-input" >
<input class="input100" id="cedoc" onkeypress="return soloNumeros(event)" onpaste="return false" type="text"
 placeholder="Introdusca la Cedula Doc." name="Cdoctor" value="<%=Ced %>" required>
					
						
						<span class="focus-input100"></span>
					</div>
					<div class="p-t-13 p-b-9">
						<span class="txt1">
							Usuario:
						</span>
					</div>
					<div class="wrap-input100 validate-input" >
<input class="input100" id="usua"  type="text" placeholder="Introdusca su Usuario" name="User" value="<%=Usuar %>" required>
						
						<span class="focus-input100"></span>
					</div>
					<div class="p-t-13 p-b-9">
						<span class="txt1">
							Contraseña:
						</span>
					</div>
					<div class="wrap-input100 validate-input" >
<input class="input100" id="contrasenia" type="password" placeholder="Introdusca la Contraseña" name="Contra" value="<%=Contras %>" required>
						
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