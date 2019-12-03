<!DOCTYPE html>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Página Principal</title>
        <link href="css/resetCss.css" rel ="stylesheet">
        <link href="css/home.css" rel ="stylesheet">

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
                <a href="ProgramarRecordatorio"><li>Programar Recordatorio</li></a>
                <a href="TransitionServlet"><li>Consulta un médico</li></a>
                <a href="TransitionRespuesta"><li>Ver Respuesta</li></a>
                <a href="Logout"><li>Cerrar Sesión</li></a>
              </ul>
          </div>
        </nav>
        </header>

        <div class="irpsDisplay">
            <div id="indexCircle">
                <br>
                <p>IRPS de hoy</p>
                <br>
                <p class="indexNumber"><c:out value="${requestScope.irpsServerValue}"/></p>
                <br>
                <div id="yourNumberCircle">
                    <br>
                    <p id="whiteText"> Tu número </p>
                    <br>
                    <p class="indexNumber" id="whiteText"><c:out value="${requestScope.irpsCustomValue}"/></p>
                    <br>
                </div>
            </div>
        </div>
        <div class="recoms">
            <p class="indexNumber" id="whiteText"><c:out value="${requestScope.customRecommendation}"/></p>
        </div>

        <div id="center">
            <a href="CuestionarioDiarioBoton"><button class="button">Contestar cuestionario</button></a>
        </div>
    </body>
</html>
