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
        </header>
        
        <div id="bod">
            <div  class="title">
                <h1>Recordatorio</h1>
            </div>
            
          
          <p class="cent">Escoge un número para fijar un recordatorio.</p>
          
          <form method="post" action="./Alertas" id="chooseIRPSForm" >
            <ul id="chooseIRPS">
              <li><input name="alert" value="1" class="but1 botones" type="submit"></li>
              <li><button name="alert" value="2" class="but2 botones">2</button></li>
              <li><button name="alert" value="3" class="but3 botones">3</button></li>
              <li><button name="alert" value="4" class="but4 botones">4</button></li>
              <li><button name="alert" value="5" class="but5 botones">5</button></li>
              <li><button name="alert" value="6" class="but6 botones">6</button></li>
              <li><button name="alert" value="7" class="but7 botones">7</button></li>
              <li><button name="alert" value="8" class="but8 botones">8</button></li>
              <li><button name="alert" value="9" class="but9 botones">9</button></li>
              <li><button name="alert" value="10" class="but10 botones">10</button></li>
              <li><button name="alert" value="11" class="but11 botones">10+</button></li>
            </ul>
          </form>

          <p class="cent">Por predeterminado, se manda notificación cuando el IRPS aparece con tu número o superior a él</p>
        </div>
        


    </body>
</html>