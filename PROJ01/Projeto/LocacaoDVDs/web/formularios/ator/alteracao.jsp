<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>

<html>
  <head>
    <title>Alterar Ator</title>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

  </head>

  <body>

    <h1>Alterar Ator</h1>

    <div>
      <form method="post" action="${cp}/processaAtor">
        <input type="hidden" name="acao" value="alterar"/>
        <input type="hidden" name="id" value="${ator.id}"/>
        
        <div>
          <label for="nome">Nome:</label>
          <input type="text" id="nome" name="nome" value="${ator.nome}" required/>
        </div>
        
        <div>
          <label for="sobrenome">Sobrenome:</label>
          <input type="text" id="sobrenome" name="sobrenome" value="${ator.sobrenome}" required/>
        </div>
        
        <div>
          <label for="dataEstreia">Data de Estreia:</label>
          <input type="date" id="dataEstreia" name="dataEstreia" 
                 value="<fmt:formatDate value='${ator.dataEstreia}' pattern='yyyy-MM-dd'/>" required/>
        </div>
        
        <div>
          <button type="submit">Alterar</button>
          <a href="${cp}/processaAtor?acao=listar">
            Cancelar
          </a>
        </div>
      </form>
    </div>

  </body>

</html>