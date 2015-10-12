<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Área restrita - Restaurante Tô com fome</title>
	</head>
	<body>
		<sec:ifLoggedIn>
		Olá, ${usuario}!
		<a href="/RestauranteToComFome/j_spring_security_logout">Sair</a>
		</sec:ifLoggedIn>
		
	</body>
</html>
