<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
	<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link href="css/resetCss.css" rel ="stylesheet">
		<link href="css/tablasChat.css" rel ="stylesheet">

			<style media="screen">
				table {
					border-spacing:10px; border-collapse: separate;
				}

				td {
					border: 1px solid black;
					border-radius: 9px;
					border-color: black;
					padding: 10px;
				}
			</style>
</head>

<body>
	<header>
	<nav role="navigation">
		<div id="menuToggle">
			<input type="checkbox" />
			<span></span>
			<span></span>
			<span></span>

			<ul id="menu">
				<a href="./LandingPageAdmin.jsp"><li>Inicio</li></a>
				<a href="GenerarReporteServlet"><li>Obetener Reportes</li></a>
				<a href="./registerRe.jsp"><li>Registrar Investigadores</li></a>
				<a href="BorrarVerServlet"><li>Borrar Investigadores</li></a>
				<a href="#"><li>Editar Investigadores</li></a>
              	<a href="#"><li>Agregar Recomendaciones</li></a>
				<a href="ViewPregunta"><li>Responder</li></a>
				<a href="Logout"><li>Cerrar Sesión</li></a>
			</ul>
		</div>
	</nav>
	</header>

	<div class="centerDiv">
		<form method="post" action="./RespuestaConsultaAdmin">
	  <table>
	    <tr>
	      <th>Pregunta del paciente</th>
	    </tr>
	    <c:forEach items="${requestScope.preguntaList}" var="us">
	      <tr>
	        <td>
	          <c:out value= "${us.pregunta}" />
						<input type="hidden" name="id_pregunta" value="${us.id_pregunta}">
	        </td>
	      </tr>
	    </c:forEach>
	  </table>
		<p>Contestar Consulta</p>
		<br>
			<textarea maxlength="1000" rows="10" cols="50" name="consultaTx"></textarea>
			<br>
			<input type="submit" value="Enviar" id="button" onclick="return confirm('Quieres Enviar esta respuesta?')" >
		</form>
	</div>
</body>
</html>
