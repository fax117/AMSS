<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
	<title>Consulta</title>
</head>
<body>
	<h3>Consulta personalizada</h3>
	<p>Por favor escribe aquí tus sintomas</p>
	<form method="post" action="./ConsultaUs">
		<textarea maxlength="1000" rows="10" cols="50" name="consultaTx"></textarea>
		<br>
		 <p>
             <label>Asunto</label>
<<<<<<< HEAD
             <select id = "miLista" name="asuntoParam">
               <option value = "ASMA">ASMA</option>
               <option value = "IRRITACION">IRRITACION</option>
               <option value = "GRIPA">GRIPA</option>
               <option value = "MIEDO">MIEDO</option>
=======
             <select id = "miLista">
               <option value = "Asunto">Irritación</option>
               <option value = "Asunto">Resequedad nasal</option>
               <option value = "Asunto">Dolor de cabeza</option>
               <option value = "Asunto">Tos</option>
               <option value = "Asunto">Dificultad para respirar</option>
               <option value = "Asunto">Flujo nasal</option>
               <option value = "Asunto">Dolor de pecho</option>
               <option value = "Asunto">Irritación, comezón en la piel</option>
>>>>>>> 9d428742cca7f0f3d6fc914e1782f2877c791da1
             </select>
          </p>
		<input type="submit" value="Enviar" id="button">
	</form>
</body>
</html>
