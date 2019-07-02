<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="./resources/_css/style.css" rel="stylesheet" type="text/css">
<title>Página inicial</title>
</head>
<body>
	<%
		ArrayList listaRequirido = (ArrayList) request.getAttribute("listaRequirido");
		System.out.println(listaRequirido);
	%>
	<div id="interface-content">
		<div id="header-content">
			<div id="tool-bar-content">

				<div class="dropdown">
					<button class="dropbtn">Consultar</button>
					<div class="dropdown-content">
						<ul class="menu-list">
							<li class="menu-item"><a href="obterAcervo">Consultar
									acervo</a></li>

							<li class="menu-item"><a href="obterRequisicao">Consultar
									requisições</a></li>
							<li class="menu-item"><a href="obterEstudante">Consultar
									estudantes</a></li>
						</ul>
					</div>
				</div>

				<div class="dropdown">
					<button class="dropbtn">Cadastrar</button>
					<div class="dropdown-content">
						<ul class="menu-list">
							<li class="menu-item"><a href="CadastroRequisicao.jsp">Cadastrar
									requisição</a></li>
							<li class="menu-item"><a href="CadastroLivro.jsp">Cadastrar
									livro</a></li>
							<li class="menu-item"><a href="CadastroEstudante.jsp">Cadastrar
									estudante</a></li>
						</ul>

					</div>

				</div>
			</div>
		</div>

		<div id="content">
			<h1 class="titulos">Lista de livros requiridos</h1>
			<div style="overflow: auto;">
				<table class="table-content" id="tbLivrosRequiridos">
					<tr>
						<th>Codigo do livro</th>
						<th>Nome do livro</th>
						<th>Categoria do livro</th>
						<th>Número de requirições</th>
					</tr>
					<c:forEach items="${listaRequirido}" var="listaRequirido">
						<tr>
							<td>${listaRequirido.livro.codigoLivro}</td>
							<td>${listaRequirido.livro.nomeObra}</td>
							<td>${listaRequirido.livro.categoria}</td>
							<td>${listaRequirido.numero_vezes}</td>

						</tr>


					</c:forEach>


				</table>

			</div>

		</div>

	</div>

</body>
</html>