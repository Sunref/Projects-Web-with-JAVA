<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>

<html>
  <head>
    <title>Classificações Etárias</title>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style/main.css">

  </head>

  <body>

    <h1>Classificações Etárias</h1>

    <p>
      <a href="${cp}/processaClassificacaoEtaria?acao=prepararNovo">Nova Classificação Etária</a>
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
            class="cadastroclientes.servicos.ClassificacaoEtariaServices"/>

        <c:forEach items="${classificacoesEtarias}" var="classificacao">
          <tr>
            <td>${classificacao.id}</td>
            <td>${classificacao.descricao}</td>
            <td>
              <a href="${cp}/processaClassificacaoEtaria?acao=prepararAlteracao&id=${classificacao.id}">
                Alterar
              </a>
            </td>
            <td>
              <a href="${cp}/processaClassificacaoEtaria?acao=prepararExclusao&id=${classificacao.id}">
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