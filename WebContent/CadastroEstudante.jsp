<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="./resources/_css/style.css" rel="stylesheet" type="text/css">
<title>Cadastro Estudante</title>
</head>
<body style="overflow:hidden; ">
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
		<h1>Cadastro de Estudante</h1><hr/>
	
			<div id="form-content">
				<form method="post" action="/BibliotecaUCM/novoEstudante">
				<label for="idcodigoEstudante">* Código do Estudante</label><br/>
				<input type="number" id="idcodigoEstudante" name="codigoEstudante" required="required" /><br/>
				
				<label for="idNomeEstudante">* Nome do Estudante</label><br/>
				<input type="text" id="idNomeEstudante" name="nomeEstudante" required="required" /><br/>
				
				<label for="idApelidoEstudante">* Apelido do Estudante</label><br/>
				<input type="text" id="idApelidoEstudante" name="apelidoEstudante" required="required" /><br/>
				
				<label for="idCurso">* Curso do Estudante</label>
				<select id="idCurso" name="cursoEstudante">
					<optgroup label="Cursos">
					<option value="Tecnologias de Informação">Tecnologias de Informação</option>
					<option value="Recursos Humanos">Recursos Humanos</option>
					<option value="Direito">Direito</option>
					<option value="Gestão Hospitalar">Gestão Hospitalar</option>
					<option value="Contabilidade">Contabilidade</option>
					<option value="Administração de empresas">Administração de empresas</option>
					</optgroup>
					
				</select><br/>
				
				<input class="button" type="submit" value="Registar" />
				
				</form>
			</div>
		
		</div>


	</div>

</body>
</html>