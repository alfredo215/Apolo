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
<title>Consulta</title>
</head>
<form action="ServeletGuardarC" method="get">
<body>
<div class="limiter">
		<div class="container-login100" style="background-image: url('images/bg-01.jpg');">
	
			<div class="wrap-login100 p-l-110 p-r-110 p-t-62 p-b-33" style="background-image: url('images/apoloimg.jpg');">
				<form class="login100-form validate-form flex-sb flex-w">
					<span class="login100-form-title p-b-53 text-white">
						Consulta:

					</span>	
					
<label>Codigo consulta:</label>
<div class="wrap-input100 validate-input">
<input class="input100" type="text" name="codigoConsul" placeholder="Codigo consulta">
<span class="focus-input100"></span>
					</div>
<label>Cedula:</label>
<div class="wrap-input100 validate-input">
<input class="input100" type="text" name="Cedula" placeholder="Cedula de Doctor">
<span class="focus-input100"></span>
					</div>
<label>Paciente:</label>
<div class="wrap-input100 validate-input">
<input class="input100" type="text" name="Paciente" placeholder="Ingrese Paciente">
<span class="focus-input100"></span>
					</div>
<label>Sintomas:</label>
<div class="wrap-input100 validate-input">
<input class="input100" type="text" name="sintomas" placeholder="Ingrese el sintoma">
<span class="focus-input100"></span>
					</div>
<label>Enfermedad:</label>
<div class="wrap-input100 validate-input" >
<input class="input100" type="text" name="Enfermedades" placeholder="Ingrese la Enfermedades">
<span class="focus-input100"></span>
					</div>
<div class="container-login100-form-btn m-t-17" align="center">
<input class="login100-form-btn"  type="submit" name="btn" value="Recetar"  >
</div>
<br>
<a href="Doctor.jsp" class="btn btn-outline-danger btn-lg"><h3>salir</h3></a>
</form>
	</div>
		</div>
		
	</div>




</body>
</form>
</html>