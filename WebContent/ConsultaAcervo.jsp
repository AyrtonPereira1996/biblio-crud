<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="./resources/_css/style.css" rel="stylesheet" type="text/css">
<title>Consulta de Acervo</title>
</head>
<body>
	<%
		ArrayList listaAcervo = (ArrayList) request.getAttribute("listaAcervo");
		System.out.println(listaAcervo);
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
			<h1 class="titulos">Lista do acervo de Livros</h1>
			<a class="ancora" href="obterLivroRequirido">Consultar livros mais requisitados</a>
			<div style="overflow: auto;">
				<table id="tbAcervo" class="table-content">
					<tr>
						<th>Código</th>
						<th>Titulo do Livro</th>
						<th>Categoria</th>
						<th>Data de registo</th>
					</tr>

					<c:forEach items="${listaAcervo}" var="listaAcervo">
						<tr>
							<td>${listaAcervo.codigoLivro}</td>
							<td>${listaAcervo.nomeObra}</td>
							<td>${listaAcervo.categoria}</td>
							<td>${listaAcervo.dataRegisto }</td>

						</tr>
					</c:forEach>


				</table>
			</div>

		</div>
	</div>

</body>
</html>