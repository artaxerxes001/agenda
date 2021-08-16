<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<title>Agenda de Contatos</title>
<link rel="icon" href="imagens/favIconContato.png">
<link rel="stylesheet" href="style.css">
</head>
<body>
	<h1>Editar Contato</h1>
	<form name="frmContato" action="update">
		<table>
			<tr>
				<td><input type="text" name="idcon"
					value="<%out.print(request.getAttribute("idcon"));%>"
					id="Caixa3" readonly></td>
			</tr>
			<tr>
				<td><input type="text" name="nome"
					value="<%out.print(request.getAttribute("nome"));%>"
					class="Caixa1"></td>
			</tr>
			<tr>
				<td><input type="tel" name="fone"
					value="<%out.print(request.getAttribute("fone"));%>"
					class="Caixa2"></td>
			</tr>
			<tr>
				<td><input type="email" name="email"
					value="<%out.print(request.getAttribute("email"));%>"
					class="Caixa1"></td>
			</tr>
		</table>

		<input type="button" value="Salvar"
			onclick="validar()" class="Botao1">
		
	</form>
		<script src="scripts/validador.js"></script>
	
</body>
</html>