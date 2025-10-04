<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>

<html>
  <head>
    <title>DVDs</title>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

  </head>

  <body>

    <h1>DVDs</h1>

    <p>
      <a href="${cp}/processaDvd?acao=prepararNovo">Novo DVD</a>
    </p>

    <table class="tabelaListagem">
      <thead>
        <tr>
          <th>Id</th>
          <th>Título</th>
          <th>Ano</th>
          <th>Ator Principal</th>
          <th>Ator Coadjuvante</th>
          <th>Gênero</th>
          <th>Classificação</th>
          <th>Duração (min)</th>
          <th>Alterar</th>
          <th>Excluir</th>
        </tr>
      </thead>
      <tbody>

        <jsp:useBean 
            id="servicos" 
            scope="page" 
            class="cadastroclientes.servicos.DvdServices"/>

        <c:forEach items="${dvds}" var="dvd">
          <tr>
            <td>${dvd.id}</td>
            <td>${dvd.titulo}</td>
            <td>${dvd.anoLancamento}</td>
            <td>${dvd.atorPrincipal.nome} ${dvd.atorPrincipal.sobrenome}</td>
            <td>${dvd.atorCoadjuvante.nome} ${dvd.atorCoadjuvante.sobrenome}</td>
            <td>${dvd.genero.descricao}</td>
            <td>${dvd.classificacaoEtaria.descricao}</td>
            <td>${dvd.duracaoMinutos}</td>
            <td>
              <a href="${cp}/processaDvd?acao=prepararAlteracao&id=${dvd.id}">
                Alterar
              </a>
            </td>
            <td>
              <a href="${cp}/processaDvd?acao=excluir&id=${dvd.id}" 
                 onclick="return confirm('Tem certeza que deseja excluir este DVD?')">
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