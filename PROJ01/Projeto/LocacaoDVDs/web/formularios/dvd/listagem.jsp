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
    <link rel="stylesheet" href="style/main.css">

  </head>

  <body>

    <h1>DVDs</h1>

    <div class="content-wrapper">
      <div class="header-action">
        <a href="${cp}/processaDvd?acao=prepararNovo" class="btn">Novo DVD</a>
      </div>

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
            <th>Ações</th>
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
            <td class="table-actions">
              <a href="${cp}/processaDvd?acao=prepararAlteracao&id=${dvd.id}">Alterar</a>
              <a href="${cp}/processaDvd?acao=prepararExclusao&id=${dvd.id}" class="delete">Excluir</a>
            </td>
          </tr>
        </c:forEach>

      </tbody>

      </table>
    </div>

    <a href="${cp}/index.jsp" class="back-link">Tela Principal</a>

  </body>

</html>