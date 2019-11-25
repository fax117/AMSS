<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
	<style>
	table, th, td {
 		 border: 1px solid black;
  		 border-collapse: collapse;
}
	th, td {
 	 padding: 15px;
  	 text-align: center;
}
</style>
</head>
<body>
	<form action="./BorrarInvesti" method="post">
		<table style="width:100%">
  		<caption>Cuestionarios</caption>
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
		<input type="submit" name="boton" value="Borrar" onclick="return confirm('Quieres borrar a este usuario?')" >
	</form>
</body>
</html>
