<%@page import="java.util.ArrayList"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="./resources/_css/style.css" rel="stylesheet" type="text/css">
<title>Consulta de Estudantes</title>
</head>
<body>
	<%
		ArrayList listaEstudante = (ArrayList) request.getAttribute("listaEstudante");
		System.out.println(listaEstudante);
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
			<h1 class="titulos">Lista de Estudantes</h1>
			<div style="overflow: auto;">
				<table id="tbEstudante" class="table-content">
					<tr>
						<th>Código Estudante</th>
						<th>Nome do Estudante</th>
						<th>Curso</th>
						<th>Data Registo</th>
					</tr>
					<c:forEach items="${listaEstudante}" var="listaEstudante">
						<tr>
							<td>${listaEstudante.codigoEstudante}</td>
							<td>${listaEstudante.nome} ${listaEstudante.apelido}</td>
							<td>${listaEstudante.curso}</td>
							<td>${listaEstudante.dataRegisto}</td>
						</tr>

					</c:forEach>


				</table>
			</div>
		</div>
	</div>

</body>
</html>