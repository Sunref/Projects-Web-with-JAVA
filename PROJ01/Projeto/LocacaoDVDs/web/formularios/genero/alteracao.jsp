<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>

<html>
  <head>
    <title>Alterar Gênero</title>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style/main.css">

  </head>

  <body>

    <h1>Alterar Gênero</h1>

    <form method="post" action="${cp}/processaGenero">

      <input name="acao" type="hidden" value="alterar"/>
      <input name="id" type="hidden" value="${genero.id}"/>

      <table>
        <tr>
          <td class="alinharDireita">Id:</td>
          <td>${genero.id}</td>
        </tr>
        <tr>
          <td class="alinharDireita">Descrição:</td>
          <td>
            <input name="descricao" 
                   type="text" 
                   size="40"
                   maxlength="40"
                   value="${genero.descricao}"
                   required/>
          </td>
        </tr>
        <tr>
          <td>
            <a href="${cp}/processaGenero?acao=listar">Voltar</a>
          </td>
          <td class="alinharDireita">
            <input type="submit" value="Alterar"/>
          </td>
        </tr>
      </table>

    </form>

  </body>

</html>