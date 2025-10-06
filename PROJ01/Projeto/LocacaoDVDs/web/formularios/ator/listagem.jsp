<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>

<html>
  <head>
    <title>Atores</title>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

  </head>

  <body>

    <h1>Atores</h1>

    <p>
      <a href="${cp}/processaAtor?acao=prepararNovo">Novo Ator</a>
    </p>

    <table class="tabelaListagem">
      <thead>
        <tr>
          <th>Id</th>
          <th>Nome</th>
          <th>Sobrenome</th>
          <th>Data de Estreia</th>
          <th>Alterar</th>
          <th>Excluir</th>
        </tr>
      </thead>
      <tbody>

        <jsp:useBean 
            id="servicos" 
            scope="page" 
            class="cadastroclientes.servicos.AtorServices"/>

        <c:forEach items="${atores}" var="ator">
          <tr>
            <td>${ator.id}</td>
            <td>${ator.nome}</td>
            <td>${ator.sobrenome}</td>
            <td>
              <fmt:formatDate value="${ator.dataEstreia}" pattern="dd/MM/yyyy"/>
            </td>
            <td>
              <a href="${cp}/processaAtor?acao=prepararAlteracao&id=${ator.id}">
                Alterar
              </a>
            </td>
            <td>
              <a href="${cp}/processaAtor?acao=prepararExclusao&id=${ator.id}">
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