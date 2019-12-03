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
       <link href="css/tablasChat.css" rel ="stylesheet">
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
				<a href="#"><li>Inicio</li></a>
				<a href="#"><li>Programar Recordatorio</li></a>
				<a href="TransitionServlet"><li>Consulta un médico</li></a>
				<a href="TransitionRespuesta"><li>Ver Respuesta</li></a>
				<a href="Logout"><li>Cerrar Sesión</li></a>
			</ul>
		</div>
	</nav>
	</header>

	<div class="centerDiv">
	<h3>Consulta personalizada</h3>
	<br>
		<form method="post" action="./ConsultaUs">
			<br>
	             <label>Asunto</label>
							 <br>
							 <br>
	             <select required id = "miLista" name="asuntoParam">
	               <option value = "Irritacion">Irritación</option>
	               <option value = "Resquedda nasal">Resequedad nasal</option>
	               <option value = "Dolor">Dolor de cabeza</option>
	               <option value = "Tos">Tos</option>
	               <option value = "Dificultad para respirar">Dificultad para respirar</option>
	               <option value = "Flujo nasal">Flujo nasal</option>
	               <option value = "Dolor de pecho">Dolor de pecho</option>
	               <option value = "Irritación, comezón en la piel">Irritación, comezón en la piel</option>
	             </select>
					<br>
					<br>

							 <p>Por favor escribe aquí tus sintomas</p>
							 <br>
							 	<textarea maxlength="1000" rows="10" cols="50" name="consultaTx"></textarea>
			<input type="submit" value="Enviar" id="button" onclick="return confirm('Quieres Enviar esta pregunta?')" >
		</form>
	</div>
</body>
</html>
