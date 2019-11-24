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
		<table style="width:100%">
  		<caption>Cuestionarios</caption>
  		<tr>
    		<th>Nombre</th>
    		<th>Status</th>
        <th>Contestar</th>
  		</tr>
  		<c:forEach items="${requestScope.chatList}" var="us">
  			<tr>
  				<td>
  					<c:out value= "${us.nameUser}" />
  				</td>
  				<td>
  					<c:out value= "${us.asuntoUser}" />
  				</td>
          <td>
            <input type="radio" name="preguntaID" value="${us.idpreguntaUser}">
          </td>
  			</tr>
			</c:forEach>
		</table>
</body>
</html>
