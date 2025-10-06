<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>

<html>
  <head>
    <title>Excluir Classificação Etária</title>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

  </head>

  <body>

    <h1>Excluir Classificação Etária</h1>

    <div>
      <h3>⚠️ Confirmação de Exclusão</h3>
      <p>Tem certeza que deseja excluir a seguinte classificação etária?</p>
      
      <div>
        <table>
          <tr>
            <td><strong>Id:</strong></td>
            <td>${classificacaoEtaria.id}</td>
          </tr>
          <tr>
            <td><strong>Descrição:</strong></td>
            <td>${classificacaoEtaria.descricao}</td>
          </tr>
        </table>
      </div>
      
      <p><strong>⚠️ Esta ação não pode ser desfeita!</strong></p>
      
      <div>
        <form method="post" action="${cp}/processaClassificacaoEtaria" style="display: inline;">
          <input type="hidden" name="acao" value="excluir"/>
          <input type="hidden" name="id" value="${classificacaoEtaria.id}"/>
          <button type="submit">
            Confirmar Exclusão
          </button>
        </form>
        
        <a href="${cp}/processaClassificacaoEtaria?acao=listar">
          Cancelar
        </a>
      </div>
    </div>

  </body>

</html>