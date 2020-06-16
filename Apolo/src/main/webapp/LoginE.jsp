<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<head>
	<title>Login</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>
	<form action="ServletLoginEnfermera" method="post">

	<div class="limiter">
		<div class="container-login100" style="background-image: url('images/bg-01.jpg');">
			<div class="wrap-login100 p-l-110 p-r-110 p-t-62 p-b-33" style="background-image: url('images/apoloimg.jpg');">
				<form class="login100-form validate-form flex-sb flex-w">
				
					<span class="login100-form-title p-b-53 text-white ">
						Inicio Enfermera/o:
					</span>
					
					
						
						
						
			<div class="p-t-31 p-b-9">
						<span class="txt1">			
        <label for="username">Usuario</label>
        </span>
					</div>
				<div class="wrap-input100 validate-input" data-validate = "Username is required">	
		<input class="input100" type="text" placeholder="Introdusca usuario" name="user">
						
						<span class="focus-input100"></span>
					</div>
					
		<div class="p-t-13 p-b-9">
						<span class="txt1">
							Contraseña
						</span>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "Password is required">
           <input class="input100" type="password" placeholder="Introdusca contraseña"  name="pass">
						
						<span class="focus-input100"></span>
					</div>
					
				<div class="container-login100-form-btn m-t-17">
    <input align="center" class="login100-form-btn" type="submit"  value="Entrar">
	</div>
			</form>		
		
<div class="w-full text-center p-t-55">
						<span class="txt2">
							Nueva Cuenta?
						</span>
		<a href="IngresoEnf.jsp" class="txt2 bo1">Crear cuenta</a>
		</a>
					</div>
				<a href="index.jsp" class="btn btn-outline-danger btn-sm"><h1>Volver</h1></a>
				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	

</body>
</html>