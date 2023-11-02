<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Fly Together</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
	crossorigin="anonymous"></script>
</head>
<body>

	<div class="container">
		<h5>Alteração do contato</h5>
		<form action="editar" method="post" class="form-control">
			
			<p>Cpf</p>
			<p>
				<input type="text" id="cpf" name="cpf" value="${contatos.cpf}">
			</p>
			<p>Nome</p>
			<p>
				<input type="text" id="nome" name="nome" value="${contatos.nome}">
			</p>
			<p>Email</p>
			<p>
				<input type="text" id="email" name="email" value="${contatos.email}">
			</p>
			<p>Telefone</p>
			<p>
				<input type="text" id="telefone" name="telefone" value="${contatos.telefone}">
			</p>
			
			<input type="hidden" id="id" name="id" value="${contatos.id}">
		
			<button type="submit" class="btn btn-success">Atualizar</button>
		</form>
	</div>
</body>
</html>