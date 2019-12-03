<!DOCTYPE html>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Alerta</title>
        <link href="css/resetCss.css" rel ="stylesheet">
        <link href="css/home.css" rel ="stylesheet">
        <link href="css/alertas.css" rel="stylesheet">
        
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
              <a href="#"><li>Contact</li></a>
            </ul>
          </div>
        </nav>
          <img class="header-icons" id="profile-icon" src="img/profile-icon.svg">
        </header>
        
        <div id="bod">
            <div  class="title">
                <h1>Recordatorio</h1>
            </div>
            
          
          <p class="cent">Escoge un número para fijar un recordatorio.</p>

          <ul id="chooseIRPS">
            <li><button class="but1 botones">1</button></li>
            <li><button class="but2 botones">2</button></li>
            <li><button class="but3 botones">3</button></li>
            <li><button class="but4 botones">4</button></li>
            <li><button class="but5 botones">5</button></li>
            <li><button class="but6 botones">6</button></li>
            <li><button class="but7 botones">7</button></li>
            <li><button class="but8 botones">8</button></li>
            <li><button class="but9 botones">9</button></li>
            <li><button class="but10 botones">10</button></li>
            <li><button class="but11 botones">10+</button></li>
          </ul>

          <p class="cent">Por predeterminado, se manda notificación cuando el IRPS aparece con tu número o superior a él</p>
        </div>
        


    </body>
</html>