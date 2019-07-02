<%@page import="java.util.ArrayList"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="./resources/_css/style.css" rel="stylesheet" type="text/css">
<title>Layout</title>
</head>
<body>
	<%
		ArrayList listaRequisicao = (ArrayList) request.getAttribute("listaRequisicao");
		System.out.println(listaRequisicao);
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
									requisi��es</a></li>
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
									requisi��o</a></li>
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
			<h1 class="titulos">Lista de requisi��es</h1>
			<div style="overflow: auto;">
				<table id="tbRequisicao" class="table-content">
					<tr>
						<th>C�digo</th>
						<th>C�digo do estudante</th>
						<th>Nome do estudante</th>
						<th>Curso</th>
						<th>Titulo do livro</th>
						<th>Categoria do livro</th>
						<th>Data de registo</th>
					</tr>

					<c:forEach items="${listaRequisicao}" var="listaRequisicao">
						<tr>
							<td>${listaRequisicao.codigoRequisicao}</td>
							<td>${listaRequisicao.estudante.codigoEstudante}</td>
							<td>${listaRequisicao.estudante.nome}
								${listaRequisicao.estudante.apelido}</td>
							<td>${listaRequisicao.estudante.curso}</td>
							<td>${listaRequisicao.livro.nomeObra}</td>
							<td>${listaRequisicao.livro.categoria}</td>
							<td>${listaRequisicao.dataRegisto}</td>

						</tr>


					</c:forEach>
				</table>
			</div>

		</div>

	</div>
</body>
</html>