<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>

<html>
  <head>
    <title>Gêneros</title>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style/main.css">

  </head>

  <body>

    <h1>Gêneros</h1>

    <div class="content-wrapper">
      <div class="header-action">
        <a href="${cp}/processaGenero?acao=prepararNovo" class="btn">Novo Gênero</a>
      </div>

      <table class="tabelaListagem">
        <thead>
          <tr>
            <th>Id</th>
            <th>Descrição</th>
            <th>Ações</th>
          </tr>
        </thead>
        <tbody>

        <jsp:useBean 
            id="servicos" 
            scope="page" 
            class="cadastroclientes.servicos.GeneroServices"/>

        <c:forEach items="${generos}" var="genero">
          <tr>
            <td>${genero.id}</td>
            <td>${genero.descricao}</td>
            <td class="table-actions">
              <a href="${cp}/processaGenero?acao=prepararAlteracao&id=${genero.id}">Alterar</a>
              <a href="${cp}/processaGenero?acao=prepararExclusao&id=${genero.id}" class="delete">Excluir</a>
            </td>
          </tr>
        </c:forEach>

      </tbody>

      </table>
    </div>

    <a href="${cp}/index.jsp" class="back-link">Tela Principal</a>

  </body>

</html>