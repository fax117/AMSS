<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
	   <title>Consulta</title>
	   <meta charset="UTF-8">
       <meta name="viewport" content="width=device-width, initial-scale=1.0">
       <link href="css/resetCss.css" rel ="stylesheet">
       <link href="css/login.css" rel ="stylesheet">
</head>
<body>
  <table style="width:100%">
    <caption>Cuestionarios</caption>
    <tr>
      <th>Pregunta del paciente</th>
    </tr>
    <c:forEach items="${requestScope.preguntaList}" var="us">
      <tr>
        <td>
          <c:out value= "${us.pregunta}" />
        </td>
      </tr>
    </c:forEach>
  </table>
	<h3>Consulta personalizada</h3>
	<p>Por favor escribe aquí tus sintomas</p>
	<form method="post" action="./RespuestaConsultaAdmin">
    <input type="hidden" name="id_pregunta" value="${us.id_pregunta}">
		<textarea maxlength="1000" rows="10" cols="50" name="consultaTx"></textarea>
		<br>
		<input type="submit" value="Enviar" id="button">
	</form>
</body>
</html>
