<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>

<script type="text/javascript">

$(document).ready(function(){
	
	

	var btn= $('#carga').val();
	$.post('gaMedicamentos',{

	},function(response){

	var datos = JSON.parse(response);
	


	var tabladatos = document.getElementById('TablaMedi');
	for (let item of datos){

		tabladatos.innerHTML +=`
	
	/* 		<td>${item[0]}</td>
		 	<td>${item[1]}</td>
		 	<td>${item[2]}</td>
		 	<td>${item[3]}</td> */
		 	 	`

	}


});
});


</script>

<body>

<table class="table table-dark" name = "TablaMedi">

					<thead>
						<th>Codigo</th>
						<th>nombre</th>
						<th>tipo</th>
						<th>cantidad</th>
						

					</thead>
					<tbody>
						

					</tbody>

	</table>

</body>
</html>