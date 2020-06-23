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
<title>nuevo lote</title>
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


<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$.post('ServletSelectMedicamentos',{
		
	},function(response){
	let datos = JSON.parse(response);
	console.log(datos)
	var selector = document.getElementById('TipoSelectMedi');
	for (let item of datos){

		selector.innerHTML +=`
			<option value = "${item[0]}">${item[1]}</option>
		`
	}
	document.getElementById('TipoSelectMedi').value="<%=NvMedicamentos %>";
});
});
</script>

<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="maxLength/maxLength.js"></script>
<script type="text/javascript">
$(function () {
$("#cod").maxLength(5);	
$("#canti").maxLength(6);	
$("#fecha").maxLength(11);	



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


<form action="ServletLoteMedi" method="get" >
<body>

<div class="limiter">
		<div class="container-login100" style="background-image: url('images/bg-01.jpg');">
	
			<div class="wrap-login100 p-l-110 p-r-110 p-t-62 p-b-33" style="background-image: url('images/apoloimg.jpg');">
				<form class="login100-form validate-form flex-sb flex-w">
					<span class="login100-form-title p-b-53 text-white">
						Nuevo lote de Medicamento:

					</span>	
			<div class="p-t-31 p-b-9">
						<span class="txt1">			
        Codigo:
        </span>
					</div>
				<div class="wrap-input100 validate-input" data-validate = "codigo is required">	
	<input class="input100" type="text" id="cod" onkeypress="return soloNumeros(event)" onpaste="return false" placeholder="Introdusca el Codigo" name="idNmedic" value="<%=codigo %>" required>
						
						<span class="focus-input100"></span>
					</div>
					
		<div class="p-t-13 p-b-9">
						<span class="txt1">
							Medicamentos:
						</span>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "medicamento is required">
					
					<select class="input100" name="nombreNmedic"  id="TipoSelectMedi" required>
<option value>Elige...</option>
</select>
					
					
						
						<span class="focus-input100"></span>
					</div>
					<div class="p-t-13 p-b-9">
						<span class="txt1">
							Cantidad:
						</span>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "cantidad is required">
	<input class="input100" type="text" id="canti" onkeypress="return soloNumeros(event)" onpaste="return false" placeholder="Introdusca la cantidad" name="CantidadNmedic" value="<%=CantidadNmedic %>" required>
				
						
						<span class="focus-input100"></span>
					</div>
					<div class="p-t-13 p-b-9">
						<span class="txt1">
							Fecha:
						</span>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "nombre is required">
			<input class="input100" id="fecha" type="text" placeholder="Introdusca la fecha" name="fechaNmedic" placeholder="yyy-mm-dd" value="<%=Nfecha %>" required>
						
						<span class="focus-input100"></span>
					</div>
				
				<div class="container-login100-form-btn m-t-17" align="center">
				<input type="submit" class="login100-form-btn" name="btn" value="Guardar">

	</div>
	<br>
	<a href="Medicamentos.jsp" class="btn btn-outline-danger btn-sm"><h1>Volver</h1></a>
				
				
			</form>	
			</div>
		</div>
		
	</div>

</body>
</form>
</html>