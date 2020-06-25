<html>
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<title>Enfermedades</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
$(document).ready(function(){
 $('#cargar').click(function(){

	var caja= $('#buscardatos').val();
	$.post('ServeletGyAEnfermedad',{
		caja
	},function(response){

	let datos = JSON.parse(response);
	console.log(datos)


	var tabladatos = document.getElementById('tablaEnfer');
	for (let item of datos){

		tabladatos.innerHTML +=`
	
			<td>${item[0]}</td>
		 	<td>${item[1]}</td>
		 	<td>${item[2]}</td>
		 	<td><a href="Enfermedades.jsp?id=${item[0]}&nombreEnf=${item[1]}&tipo=${item[2]}" class="btn btn-danger"> Actualizar</a> </td> 
		 	
 	   
		`

	}

 });
});
});


</script>


<% 
HttpSession sesion = (HttpSession) request.getSession();
String usuSesion = (String) sesion.getAttribute("usuario");

if(usuSesion==null){
	
	response.sendRedirect("LoginD.jsp");
}

%>
<body>


<div class="limiter">
		<div class="container-login100" style="background-image: url('images/bg-01.jpg');">
	
			<div class="login100 p-l-110 p-r-110 p-t-62 p-b-33" >
				<div class="login100-form validate-form flex-sb flex-w">
					<span class="login100-form-title p-b-53 text-white">
					Buscar Enfermedad:

					</span>	
				<div class="wrap-input100 validate-input" data-validate = "Enfermedad is required">	
				
				<input class="input100" type="text" name="buscardatos" placeholder="Escribe la Enfermedad" id="buscardatos" required>
		
						
						<span class="focus-input100"></span>
					</div>
					
		
				<div class="container-login100-form-btn m-t-17" align="center">
				<input type="submit" class="login100-form-btn" name="Buscar" id="cargar" value="buscar">
					<br>
					

	</div>
	<br>
	<br>
	<a href="Enfermedades.jsp" class="btn btn-outline-danger btn-sm"><h3>Volver</h3></a>

	<a href="Enfermedades.jsp" class="btn btn-outline-danger btn-sm"><h3>Agregar</h3></a>			
				
		</div>
			
			</div>

					<table class="table table-dark" id="tablaEnfer">
						<thead>  
						<th>Numero de Enfermedad</th>
		                <th>Nombre Enfermedad</th>
		                <th>Tipo</th>
								
						</thead>
							<tbody>
								
							</tbody>

					</table>
</div>
			</div>
</body>
</html>