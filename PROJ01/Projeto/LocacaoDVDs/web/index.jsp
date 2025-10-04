<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>

<html>
  <head>
    <title>Sistema para Locação de DVDs</title>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

  </head>

  <body>

    <h1>Sistema para Locação de DVDs</h1>

    <p>
      <a href="${cp}/processaDvd?acao=listar">DVDs</a>
    </p>
    <p>
      <a href="${cp}/processaAtor?acao=listar">Atores</a>
    </p>
    <p>
      <a href="${cp}/processaGenero?acao=listar">Gêneros</a>
    </p>
    <p>
      <a href="${cp}/processaClassificacaoEtaria?acao=listar">Classificações Etárias</a>
    </p>

  </body>

</html>
