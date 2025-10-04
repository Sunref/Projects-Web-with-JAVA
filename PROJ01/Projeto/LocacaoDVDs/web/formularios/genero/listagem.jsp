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

  </head>

  <body>

    <h1>Gêneros</h1>

    <p>
      <a href="${cp}/processaGenero?acao=prepararNovo">Novo Gênero</a>
    </p>

    <table class="tabelaListagem">
      <thead>
        <tr>
          <th>Id</th>
          <th>Descrição</th>
          <th>Alterar</th>
          <th>Excluir</th>
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
            <td>
              <a href="${cp}/processaGenero?acao=prepararAlteracao&id=${genero.id}">
                Alterar
              </a>
            </td>
            <td>
              <a href="${cp}/processaGenero?acao=excluir&id=${genero.id}">
                Excluir
              </a>
            </td>
          </tr>
        </c:forEach>

      </tbody>

    </table>

    <p>
      <a href="${cp}/index.jsp">Tela Principal</a>
    </p>

  </body>

</html>