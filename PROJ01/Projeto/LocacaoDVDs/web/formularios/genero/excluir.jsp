<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>

<html>
  <head>
    <title>Excluir Gênero</title>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style/main.css">

  </head>

  <body>

    <h1>Excluir Gênero</h1>

    <div>
      <h3>⚠️ Confirmação de Exclusão</h3>
      <p>Tem certeza que deseja excluir o seguinte gênero?</p>
      
      <div>
        <table>
          <tr>
            <td><strong>Id:</strong></td>
            <td>${genero.id}</td>
          </tr>
          <tr>
            <td><strong>Descrição:</strong></td>
            <td>${genero.descricao}</td>
          </tr>
        </table>
      </div>
      
      <p><strong>⚠️ Esta ação não pode ser desfeita!</strong></p>
      
      <div>
        <form method="post" action="${cp}/processaGenero" style="display: inline;">
          <input type="hidden" name="acao" value="excluir"/>
          <input type="hidden" name="id" value="${genero.id}"/>
          <button type="submit">
            Confirmar Exclusão
          </button>
        </form>
        
        <a href="${cp}/processaGenero?acao=listar">
          Cancelar
        </a>
      </div>
    </div>

  </body>

</html>