<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Cuestionario diario</title>
        <link href="css/resetCss.css" rel ="stylesheet">
        <link href="css/quiz.css" rel ="stylesheet">
    </head>
    <body>

        <header>
            <h1>Cuestionario diario (Asma)</h1>
        </header>

        <section id="start">
            <div class="centrardiv"> <!-- arreglar un poco más -->
                <form method="post" action="./CuestionarioAsma">
                    <div id="order">

                        <p class="lefty question">¿Realizaste actividades al aire libre?</p>
                        <div class="lefty question">
                            <input class="lefty" type="radio" name="actividadAsma" value="Si">
                            <p class="lefty">Sí</p>
                            <br><br>
                            <input class="lefty" type="radio" name="actividadAsma" value="No">
                            <p class="lefty">No</p>
                            <br><br>
                        </div>

                        <p class="lefty question">¿Estuviste al aire libre más de 30 minutos?</p>
                        <div class="lefty question">
                            <input class="lefty" type="radio" name="aireLibre" value="Si">
                            <p class="lefty">Sí</p>
                            <br><br>
                            <input class="lefty" type="radio" name="aireLibre" value="No">
                            <p class="lefty">No</p>
                        </div>

                        <div class="lefty question">
                            <p class="lefty question">¿En qué intervalo(s) estuviste al aire libre?</p>
                            <br>
                            <input class="lefty" type="checkbox" name="horaAire" value="manana">
                            <p class="lefty">Mañana (4:00-10:00)</p>
                            <br><br><br><br>
                            <input class="lefty" type="checkbox" name="horaAire" value="medio">
                            <p class="lefty">Medio día (11:00-13:00)</p>
                            <br><br><br>
                            <input class="lefty" type="checkbox" name="horaAire" value="tarde">
                            <p class="lefty">Tarde (14:00-19:00)</p>
                            <br><br><br>
                            <input class="lefty" type="checkbox" name="horaAire" value="noche">
                            <p class="lefty">Noche (20:00-24:00)</p>
                        </div>

                        <div class="lefty question">
                            <p class="lefty question">¿Cuál(es) de estos síntomas presentaste?</p>
                            <br>
                            <input class="lefty" type="checkbox" name="sintomas" value="ojosIrrit">
                            <p class="lefty">Irritación de ojos</p>
                            <br><br><br><br>
                            <input class="lefty" type="checkbox" name="sintomas" value="dolorGar">
                            <p class="lefty">Irritación de garganta</p>
                            <br><br><br><br>
                            <input class="lefty" type="checkbox" name="sintomas" value="reseqNa">
                            <p class="lefty">Resequedad nasal</p>
                            <br><br><br><br>
                            <input class="lefty" type="checkbox" name="sintomas" value="dolorCabe">
                            <p class="lefty">Dolor de cabeza</p>
                            <br><br><br>
                            <input class="lefty" type="checkbox" name="sintomas" value="tos">
                            <p class="lefty">Tos</p>
                            <br><br><br>
                            <input class="lefty" type="checkbox" name="sintomas" value="respirarDif">
                            <p class="lefty">Dificultad para respirar</p>
                            <br><br><br>
                            <input class="lefty" type="checkbox" name="sintomas" value="flujoN">
                            <p class="lefty">Flujo nasal</p>
                            <br><br><br>
                            <input class="lefty" type="checkbox" name="sintomas" value="dolorPecho">
                            <p class="lefty">Dolor de pecho</p>
                            <br><br><br>
                            <input class="lefty" type="checkbox" name="sintomas" value="jadeo">
                            <p class="lefty">Jadeo</p>
                            <br><br><br>
                            <input class="lefty" type="checkbox" name="sintomas" value="pielIrrit">
                            <p class="lefty">Irritación en la piel o comezón</p>
                        </div>

                        <div class="lefty question">
                            <p class="lefty question">Otro, escriba cuál</p>
                            <br><br>
                            <input type="text" name="otroSint">
                        </div>
                        <br>

                        <div class="lefty question">
                            <p class="lefty question">¿Cuánto te ha impedido el asma hacer todo lo que querías (trabajo/escuela/casa)?</p>
                            <br><br><br>
                            <input class="lefty" type="radio" name="impedimento" value="siempre">
                            <p class="lefty">Siempre</p>
                            <br><br><br>
                            <input class="lefty" type="radio" name="impedimento" value="mayorTiempo">
                            <p class="lefty">La mayoría del tiempo</p>
                            <br><br><br>
                            <input class="lefty" type="radio" name="impedimento" value="algoTiempo">
                            <p class="lefty">Algo de tiempo</p>
                            <br><br><br>
                            <input class="lefty" type="radio" name="impedimento" value="pocoTiempo">
                            <p class="lefty">Un poco de tiempo</p>
                            <br><br><br>
                            <input class="lefty" type="radio" name="impedimento" value="nunca">
                            <p class="lefty">Nunca</p>
                        </div>

                        <div class="lefty question">
                            <p class="lefty question">¿Cuánto te ha faltado el aire?</p>
                            <br>
                            <input class="lefty" type="radio" name="faltaAire" value="hoy">
                            <p class="lefty">Solo hoy</p>
                            <br><br><br>
                            <input class="lefty" type="radio" name="faltaAire" value="ayer">
                            <p class="lefty">Solo ayer</p>
                            <br><br><br>
                            <input class="lefty" type="radio" name="faltaAire" value="ambos">
                            <p class="lefty">Los dos días</p>
                            <br><br><br>
                            <input class="lefty" type="radio" name="faltaAire" value="nunca">
                            <p class="lefty">Nunca</p>
                        </div>

                        <div class="lefty question">
                            <p class="lefty question">Frecuencia con la que has utilizado inhalador o medicamento en nebulizador</p>
                            <br><br>
                            <input class="lefty" type="radio" name="nebuInha" value="hoy">
                            <p class="lefty">Solo hoy</p>
                            <br><br><br>
                            <input class="lefty" type="radio" name="nebuInha" value="ayer">
                            <p class="lefty">Solo ayer</p>
                            <br><br><br>
                            <input class="lefty" type="radio" name="nebuInha" value="ambos">
                            <p class="lefty">Los dos días</p>
                            <br><br><br>
                            <input class="lefty" type="radio" name="nebuInha" value="nunca">
                            <p class="lefty">Nunca</p>
                        </div>

                        <div class="lefty question">
                            <p class="lefty question">¿Cómo evaluarías el control de tu asma durante ayer y hoy?</p>
                            <br><br><br>
                            <input class="lefty" type="radio" name="controlAsma" value="noContr">
                            <p class="lefty">No controlada en lo absoluto</p>
                            <br><br><br>
                            <input class="lefty" type="radio" name="controlAsma" value="malContr">
                            <p class="lefty">Mal controlada</p>
                            <br><br><br>
                            <input class="lefty" type="radio" name="controlAsma" value="algoContr">
                            <p class="lefty">Algo controlada</p>
                            <br><br><br>
                            <input class="lefty" type="radio" name="controlAsma" value="bienContr">
                            <p class="lefty">Bien controlada</p>
                            <br><br><br>
                            <input class="lefty" type="radio" name="controlAsma" value="compContr">
                            <p class="lefty">Completamente controlada</p>
                        </div>

                        <input type="submit" value="Guardar" id="button">                        
                    </div>
                </form>
            </div>
        </section>
    </body>
</html>