<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Área restrita - Restaurante Tô com fome</title>
	</head>
	<body>
		<form action='${request.contextPath}/j_spring_security_check' method='POST' id='frmLogar' name='frmLogar'>
			<p>
				Email
				<input type='text' name='j_username' id='username' />
			</p>
			<p>
				Senha
				<input type='password' name='j_password' id='password' />
			</p>
			<input type="submit" value="Entrar" />
		</form>
	</body>
</html>
