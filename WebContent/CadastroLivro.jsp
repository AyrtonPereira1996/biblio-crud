<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="./resources/_css/style.css" rel="stylesheet" type="text/css">
<title>Cadastro de livros</title>
</head>
<body  style="overflow:hidden;" >
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
			
				<h1>Cadastro de Livro</h1>
				<hr />

				<div id="form-content">
					<form method="post" action="/BibliotecaUCM/novoLivro">
					
						<label for="idLivroCodigo">* Código do livro</label><br /> <input
							required="required" type="number" id="idLivroCodigo" name="codigoLivro"><br />
					
						<label for="idLivro">* Nome do livro</label><br /> <input
							required="required" type="text" id="idLivro" name="nomeLivro"><br />

						<label for="idCategoria">* Categoria do Livro</label> <select
							required="required" id="idCategoria" name="categoriaLivro">
							<optgroup label="Categoria de Livros">
								<option value="Direito">Direito</option>
								<option value="Informática">Informática</option>
								<option value="Literatura Africana">Literatura Africana</option>
								<option value="Literatura Moçambicana">Literatura
									Moçambiçana</option>
								<option value="Relações Internacionais">Relações
									Internacionais</option>
							</optgroup>
						</select><br /> <input class="button" type="submit" value="Registar">


					</form>


				</div>
			
		</div>

	</div>

</body>
</html>