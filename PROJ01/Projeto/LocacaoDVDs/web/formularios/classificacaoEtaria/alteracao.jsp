<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>

<html>
  <head>
    <title>Alterar Classificação Etária</title>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

  </head>

  <body>

    <h1>Alterar Classificação Etária</h1>

    <div>
      <form method="post" action="${cp}/processaClassificacaoEtaria">
        <input type="hidden" name="acao" value="alterar"/>
        <input type="hidden" name="id" value="${classificacaoEtaria.id}"/>
        
        <div>
          <label for="descricao">Descrição:</label>
          <input type="text" id="descricao" name="descricao" value="${classificacaoEtaria.descricao}" required 
                 placeholder="Ex: Livre, 10 anos, 12 anos, 14 anos, 16 anos, 18 anos"/>
        </div>
        
        <div>
          <button type="submit">Alterar</button>
          <a href="${cp}/processaClassificacaoEtaria?acao=listar">
            Cancelar
          </a>
        </div>
      </form>
    </div>

  </body>

</html>