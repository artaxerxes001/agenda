<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="model.JavaBeans"%>
<%@ page import="java.util.ArrayList"%>
<%
	ArrayList<JavaBeans> lista = (ArrayList<JavaBeans>) request.getAttribute("contatos");

	/*	
	for (int i = 0; i < lista.size(); i++) {
			out.println(lista.get(i).getIdcon());
			out.println(lista.get(i).getNome());
			out.println(lista.get(i).getFone());
			out.println(lista.get(i).getEmail());
		}
	*/
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="pt-br">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Angenda de Contatos</title>
<link rel="icon" href="imagens/favIconContato.png">
<link rel="stylesheet" href="style.css">

<style type="text/css">
caption{
	font-size: 32px;
 	color: blue;
}
img{
	boder-radius:50%;
}
</style>
</head>
<body>
	<h1>Angenda de Contatos</h1>
	<a href="novo.html" class="Botao1">Novo contato</a>
	<a href="report" class="Botao2">Relatorio</a>
	<table id="tabela">
	<caption >Contatos</caption>
		<thead>
			
		</thead>
		<tbody>
			<%
				for (int i = 0; i < lista.size(); i++) {
			%>

			<tr>
				<!--<td><%=lista.get(i).getIdcon()%></td>-->
				<td><img alt="" src="imagens/agenda.png" width=64px></td>
				<td><%=lista.get(i).getNome()%></td>
				<!--
				<td><%=lista.get(i).getFone()%></td>
				<td><%=lista.get(i).getEmail()%></td>
				-->
				<td><a href="select?idcon=<%=lista.get(i).getIdcon()%>"
					class="Botao1">Editar</a>
				<a href="javascript: confirmar(<%=lista.get(i).getIdcon()%>)"
					class="Botao2">Excluir</a></td>
			</tr>
			<%
				}
			%>
		</tbody>
	</table>
	<script src="scripts/confirmador.js"></script>
</body>
</html>