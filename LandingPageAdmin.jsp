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
              <a href="#"><li>Inicio</li></a>
              <a href="#"><li>Cuenta</li></a>
              <a href="GenerarReporteServlet"><li>Obtener Reportes</li></a>
              <a href="ViewPregunta"><li>Responder</li></a>
              <a href="Logout"><li>Cerrar Sesión</li></a>
            </ul>
          </div>
        </nav>
            <img class="header-icons" id="profile-icon" src="img/profile-icon.svg">
        </header>

        <div id="thingsToDo">
            <a href="GenerarReporteServlet"><button id="button">Obtener Reportes</button></a>
            <a href="./registerRe.jsp"><button id="button">Registrar investigador</button></a>
            <a href="BorrarVerServlet"><button id="button">Borrar investigador</button></a>
            <button id="button">Editar investigador</button>
            <button id="button">Agregar recomendaciones</button>
        </div>

    </body>
</html>
