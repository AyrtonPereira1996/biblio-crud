<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="./resources/_css/style.css" rel="stylesheet" type="text/css">
<title>Cadastro de requisição</title>
</head>
<body  style="overflow:hidden;">
	<div id="interface-content">
		<div id="header-content">
			<div id="tool-bar-content">

				<div class="dropdown">
					<button class="dropbtn">Consultar</button>
					<div class="dropdown-content">
						<ul class="menu-list">
							<li class="menu-item"><a href="obterAcervo">Consultar acervo</a></li>
							<li class="menu-item"><a href="obterRequisicao">Consultar requisições</a></li>
							<li class="menu-item"><a href="obterEstudante">Consultar estudantes</a></li>
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
			
				<h1>Cadastro de Requisição</h1>
				<hr />

				<div id="form-content">
					<form method="post" action="/BibliotecaUCM/novaRequisicao">
						<label for="idRequiridor">* Código do estudante</label><br /> 
						<input required="required" type="number" id="idRequiridor" name="codigoRequiridor"><br />

						<label for="idLivro">*  Código do Livro</label> <br/>
						<input required="required" type="number" id="idRequiridor" name="codigoLivro"><br />
							
						<input class="button" type="submit" value="Registar">


					</form>


				</div>
			
		</div>

	</div>