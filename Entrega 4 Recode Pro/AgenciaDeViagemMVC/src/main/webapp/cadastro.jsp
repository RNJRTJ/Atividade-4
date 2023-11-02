<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
		<h3>Cadastro do Contato</h3>
		<form action="Inserir" method="post" class="form-control">
			<fieldset>
				<legend>Dados do Contato</legend>
				<p>
					<label for="cpf">Cpf</label> <input type="text"
						id="cpf" name="cpf" size="40" class="form-control" required>
				</p>
				<p>
					<label for="nome">Nome</label> <input type="text" id="nome"
						name="nome" size="40" class="form-control" required>
				</p>
				<p>
					<label for="email">Email</label> <input type="text"
						id="email" name="email" size="40" class="form-control" required>
				</p>
				<p>
					<label for="telefone">Telefone</label> <input type="text"
						id="telefone" name="telefone" size="40" class="form-control" required>
				</p>
				<p>
					<input type="submit" value="Cadastrar Cliente"
						class="btn btn-primary">
				</p>
			</fieldset>
		</form>
		<br>
		<h5>Contatos Cadastrado</h5>
	<table class="table">
		<thead>
			<tr>
				<th>Cpf</th>
				<th>Nome</th>
				<th>Email</th>
				<th>Telefone</th>
				<th>Ações</th>
			</tr>
		</thead>
		<tbody>
			<jstl:forEach items="${listaContatos}" var="contatos">
				<tr>
					<td>${contatos.cpf}</td>
					<td>${contatos.nome}</td>
					<td>${contatos.email}</td>
					<td>${contatos.telefone}</td>
					<td>
						<a href="editar?id=${contatos.id}" class="btn btn-success">Editar</a>  
						<a href="excluir?id=${contatos.id}" onclick="return confirm('Deseja Excluir?')" class="btn btn-danger">Excluir</a>
					</td>
				</tr>
			</jstl:forEach>
		</tbody>
	</table>
	</div>
</body>
</html>