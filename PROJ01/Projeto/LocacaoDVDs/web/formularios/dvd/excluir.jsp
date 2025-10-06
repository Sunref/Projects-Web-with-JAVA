<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>

<html>
  <head>
    <title>Excluir DVD</title>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

  </head>

  <body>

    <h1>Excluir DVD</h1>

    <div>
      <h3>⚠️ Confirmação de Exclusão</h3>
      <p>Tem certeza que deseja excluir o seguinte DVD?</p>
      
      <div>
        <table>
          <tr>
            <td><strong>Id:</strong></td>
            <td>${dvd.id}</td>
          </tr>
          <tr>
            <td><strong>Título:</strong></td>
            <td>${dvd.titulo}</td>
          </tr>
          <tr>
            <td><strong>Ano de Lançamento:</strong></td>
            <td>${dvd.anoLancamento}</td>
          </tr>
          <tr>
            <td><strong>Ator Principal:</strong></td>
            <td>${dvd.atorPrincipal.nome} ${dvd.atorPrincipal.sobrenome}</td>
          </tr>
          <tr>
            <td><strong>Ator Coadjuvante:</strong></td>
            <td>${dvd.atorCoadjuvante.nome} ${dvd.atorCoadjuvante.sobrenome}</td>
          </tr>
          <tr>
            <td><strong>Gênero:</strong></td>
            <td>${dvd.genero.descricao}</td>
          </tr>
          <tr>
            <td><strong>Classificação Etária:</strong></td>
            <td>${dvd.classificacaoEtaria.descricao}</td>
          </tr>
          <tr>
            <td><strong>Duração:</strong></td>
            <td>${dvd.duracaoMinutos} minutos</td>
          </tr>
        </table>
      </div>
      
      <p><strong>⚠️ Esta ação não pode ser desfeita!</strong></p>
      
      <div>
        <form method="post" action="${cp}/processaDvd" style="display: inline;">
          <input type="hidden" name="acao" value="excluir"/>
          <input type="hidden" name="id" value="${dvd.id}"/>
          <button type="submit">
            Confirmar Exclusão
          </button>
        </form>
        
        <a href="${cp}/processaDvd?acao=listar">
          Cancelar
        </a>
      </div>
    </div>

  </body>

</html>