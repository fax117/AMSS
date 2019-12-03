<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="https://unpkg.com/purecss@1.0.1/build/pure-min.css" integrity="sha384-oAOxQR6DkCoMliIh8yFnu25d7Eq/PHS21PClpwjOTeU2jRSq11vu66rf90/cZr47" crossorigin="anonymous">
	<link href="css/tablasChat.css" rel ="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
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
				<a href="GenerarReporteServlet"><li>Obtener Reportes</li></a>
				<a href="./registerRe.jsp"><li>Registrar Investigadores</li></a>
				<a href="BorrarVerServlet"><li>Borrar Investigadores</li></a>
				<a href="#"><li>Editar Investigadores</li></a>
              	<a href="#"><li>Agregar Recomendaciones</li></a>
				<a href="Logout"><li>Cerrar Sesión</li></a>
			</ul>
		</div>
	</nav>
	</header>

	<form action="./BorrarInvesti" method="post">
		<table class="pure-table pure-table-horizontal">
  		<caption>Borrar Investigador</caption>
  		<tr>
    		<th>Nombre</th>
    		<th>Correo</th>
        <th>Borrar</th>
  		</tr>
  		<c:forEach items="${requestScope.rList}" var="us">
  			<tr>
  				<td>
  					<c:out value= "${us.name}" />
  				</td>
  				<td>
  					<c:out value= "${us.email}" />
  				</td>
          <td>
						<input type="radio" name="borrarID" value= "${us.id_Researcher}">
          </td>
  			</tr>
			</c:forEach>
		</table>
		<div class="buttoncenter">
			<input type="submit" name="boton" value="Borrar" onclick="return confirm('Quieres borrar a este usuario?')" id="button" >
		</div>
	</form>
</body>
</html>
