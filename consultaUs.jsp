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
	<h3>Consulta personalizada</h3>
	<p>Por favor escribe aquí tus sintomas</p>
	<form method="post" action="./ConsultaUs">
		<textarea maxlength="1000" rows="10" cols="50" name="consultaTx"></textarea>
		<br>
		 <p>
             <label>Asunto</label>
             <select id = "miLista" name="asuntoParam">
               <option value = "Irritacion">Irritación</option>
               <option value = "Resquedda nasal">Resequedad nasal</option>
               <option value = "Dolor">Dolor de cabeza</option>
               <option value = "Tos">Tos</option>
               <option value = "Dificultad para respirar">Dificultad para respirar</option>
               <option value = "Flujo nasal">Flujo nasal</option>
               <option value = "Dolor de pecho">Dolor de pecho</option>
               <option value = "Irritación, comezón en la piel">Irritación, comezón en la piel</option>
             </select>
          </p>
		<input type="submit" value="Enviar" id="button">
	</form>
</body>
</html>
