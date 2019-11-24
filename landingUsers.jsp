<!DOCTYPE html>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" %>

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
              <a href="#"><li>Home</li></a>
              <a href="#"><li>About</li></a>
              <a href="#"><li>Info</li></a>
              <a href="TransitionServlet"><li>Consulta</li></a>
            </ul>
          </div>
        </nav>
            <a href="profile.jsp"><img class="header-icons" id="profile-icon" src="img/profile-icon.svg"></a>
        </header>

        <div class="irpsDisplay">
            <div id="indexCircle">
                <br>
                <p>IRPS de hoy</p>
                <br>
                <p class="indexNumber">7</p>
                <br>
                <div id="yourNumberCircle">
                    <br>
                    <p id="whiteText"> Tu número </p>
                    <br>
                    <p class="indexNumber" id="whiteText">5</p>
                    <br>
                </div>
            </div>
        </div>
        <div class="recoms">
            <img class="recomIcons" src="img/recomNotDrive.svg">
            <img class="recomIcons" src="img/recomNoExercise.svg">
            <img class="recomIcons" src="img/recomAsthma.svg">
            <img class="recomIcons" src="img/recomNoSun.svg">
        </div>

        <div class="button">
            <a href="CuestionarioDiarioBoton"><button>Contestar cuestionario</button></a>
        </div>
    </body>
</html>
