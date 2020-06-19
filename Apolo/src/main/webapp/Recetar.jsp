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
String usuSesion = (String) sesion.getAttribute("usu");

if(usuSesion==null){
	
	response.sendRedirect("LoginD.jsp");
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

});
});
</script>


<form action="ServeletRecetaMedica" method="get">
<body>

    <div class="limiter">
		<div class="container-login100" style="background-image: url('images/bg-01.jpg');">
	
			<div class="wrap-login100 p-l-110 p-r-110 p-t-62 p-b-33" style="background-image: url('images/apoloimg.jpg');">
				<form class="login100-form validate-form flex-sb flex-w">
					<span class="login100-form-title p-b-53 text-white">
						Receta:

					</span>	
			<div class="p-t-31 p-b-9">
						<span class="txt1">			
        Codigo Receta:
        </span>
					</div>
				<div class="wrap-input100 validate-input">	
				<input class="input100" type="text" name="CodigoR" placeholder="Codigo receta">
				
						
						<span class="focus-input100"></span>
					</div>
					
		<div class="p-t-13 p-b-9">
						<span class="txt1">
							Codigo de la consulta:
						</span>
					</div>
					<div class="wrap-input100 validate-input" >
					<input class="input100" type="text" name="Enfermedad" placeholder="Codigo de la consulta ">
					
						
						<span class="focus-input100"></span>
					</div>
					<div class="p-t-13 p-b-9">
						<span class="txt1">
							Medicamento:
						</span>
					</div>
					<div class="wrap-input100 validate-input">
					
					
					<select class="input100" name="Medicamento"  id="TipoSelectMedi">
			<option selected>Elige...</option>
		</select>
					
					
						
						<span class="focus-input100"></span>
					</div>
				<div class="p-t-13 p-b-9">
						<span class="txt1">
							Cantidad Medicamento:
						</span>
					</div>
					<div class="wrap-input100 validate-input">
					<input class="input100" type="text" name="Cantidad" placeholder="Cantidad Medicamento">
				
						
						<span class="focus-input100"></span>
					</div>
					<div class="p-t-13 p-b-9">
						<span class="txt1">
							Dosis Medicamento:
						</span>
					</div>
					<div class="wrap-input100 validate-input">
					<input class="input100" type="text" name="Dosis" placeholder="Dosis Medicamento">
					
						
						<span class="focus-input100"></span>
					</div>
					
				<div class="container-login100-form-btn m-t-17" align="center">
				<input type="submit" class="login100-form-btn" name="btn" value="guardar">
				

	</div>
	<br>
	<a href="Doctor.jsp" class="btn btn-outline-danger btn-sm"><h1>Volver</h1></a>
				
				
			</form>	
			</div>
		</div>
		
	</div>
</body>
</form>
</html>