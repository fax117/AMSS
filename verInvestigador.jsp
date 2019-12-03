<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
        <title>Página Principal Administradores</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        
        <link href="css/resetCss.css" rel ="stylesheet">
        <link href="css/homeAdmin.css" rel ="stylesheet">
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
              <a href="VerInvestigadores"><li>Borrar Investigadores</li></a>
              <a href="VerInvestigadores"><li>Editar Investigadores</li></a>
              <a href="#"><li>Agregar Recomendaciones</li></a>
              <a href="ViewPregunta"><li>Responder</li></a>
              <a href="Logout"><li>Cerrar Sesión</li></a>
            </ul>
          </div>
        </nav>
        </header>

        <div id="bod">
            <table class="table">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nombre</th>
                        <th>Correo</th>
                        <th>Contraseña</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${requestScope.researcherListShow}" var="us2">
                    <tr>
                        <td><c:out value="${us2.id_investigador}"/></td>
                        <td><c:out value="${us2.Nombre}"/></td>
                        <td><c:out value="${us2.Correo}"/></td>
                        <td><c:out value="${us2.Contrasena}"/></td>
                        <td><form action="BorrarInvesti" method="get"><input type="submit" class="buttonC" value="Eliminar"></form></td>
                        <td><form action="EditarInvestigador" method="get"><input type="submit" class="buttonC" value="Modificar"></form></td>
                    </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        


    </body>
</html>