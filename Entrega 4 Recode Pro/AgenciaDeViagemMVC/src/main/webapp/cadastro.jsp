<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" 
    integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="style.css">
    <link rel="icon" href="img/Together.png">
    <title>Let s Fly Together</title>
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
	   <!--Inicio do Header-->
    <header class="header">
<!--Inicio da Navbar-->
<nav class="navbar navbar-expand-lg mb-5 bg-primary">
    <div class="container-fluid">
        <a class="navbar-brand align-middle" href="#">
            <img src="img/Together.png" style="height: 95px; width: 100%;" class=" d-inline-block">
        </a>
        <button  
            class="navbar-toggler" 
            type="button" 
            data-bs-toggle="collapse" 
            data-bs-target="#navbarSupportedContent" 
            aria-controls="navbarSupportedContent" 
            aria-expanded="false" 
            aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
                <a class="text-white nav-link active fs-5" aria-current="home" href="home.html">Home</a>
            </li>
            <li class="nav-item">
                <a class="text-white nav-link active fs-5" href="destinos.html">Destinos</a>
            </li>
            <li class="nav-item">
                <a class="text-white nav-link active fs-5" href="promocoes.html">Promoção</a>
            </li>
            <li class="nav-item">
                <a class="text-white nav-link fs-5" href="contato.html">Contato</a>
            </li>
        </ul>
            <form class="d-flex" role="search">
                <input class="form-control me-2" type="search" placeholder="Lugares" aria-label="Search">
                <button class="btn btn-secondary text-dark btnNavbar " type="submit">Buscar</button>
            </form>
    </div>
    </div>
</nav>
<!--Fim da Navbar-->
    </header>
    <!--Fim do Header-->
    <!--Inicio do Main-->
    <main class="container">
        <!-- Inicio Contato-->
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
        <!-- Fim Contato -->
    </main>
    <!--Fim do Main-->
    <!-- Inicio Rodapé -->
    <footer class="container-fluid py-5 bg-dark d-flex" style="align-items: center;">
        <a class="navbar-brand align-middle m-1" href="#">
            <img src="img/Together.png" class="d-inline-block img">
        </a> 
        <div id="copyright" class="copyrightSiteFooter">
            <p class="text-center" dir="ltr">
                <span class="clearfix justify-content-center">
                        &nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;
                    <a href="#">TERMOS DE USO</a>
                        &nbsp;|&nbsp;
                    <a href="#">POLÍTICA DE PRIVACIDADE</a>
                        &nbsp;|&nbsp;
                    <a href="#">CONFIGURAÇÕES DE PRIVACIDADE</a>
                </span>
                        &nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;
                    <a class="rodape text-white card-text py-3 w-100 p3" href="#">© 2023 Grupo Fly Together. Criado por Robson Junior.</a>
            </p>
        </div>
    </footer>
    <!-- Fim Rodapé -->
</body>
</html>