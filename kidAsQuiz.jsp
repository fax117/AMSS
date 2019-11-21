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
            <h1>Cuestionario diario (Asma Niño)</h1>
        </header>

        <section id="start">
            <div class="centrardiv"> <!-- arreglar un poco más -->
                <form>
                    <div id="order">
                        
                        <p class="lefty question">¿Realizaste actividades al aire libre?</p>
                        <div class="lefty question">
                            <input class="lefty" type="radio" name="actividadAsmaK" value="Si">
                            <p class="lefty">Sí</p>
                            <br><br>
                            <input class="lefty" type="radio" name="actividadAsmaK" value="No">
                            <p class="lefty">No</p>
                            <br><br>
                        </div>

                        <p class="lefty question">¿Estuviste al aire libre más de 30 minutos?</p>
                        <div class="lefty question">
                            <input class="lefty" type="radio" name="aireLibreAsmaK" value="Si">
                            <p class="lefty">Sí</p>
                            <br><br>
                            <input class="lefty" type="radio" name="aireLibreAsmaK" value="No">
                            <p class="lefty">No</p>
                        </div>

                        <div class="lefty question">
                            <p class="lefty question">¿En qué intervalo(s) estuviste al aire libre?</p>
                            <br>
                            <input class="lefty" type="checkbox" name="horaAireAsmaK" value="manana">
                            <p class="lefty">Mañana (4:00-10:00)</p>
                            <br><br><br><br>
                            <input class="lefty" type="checkbox" name="horaAireAsmaK" value="medio">
                            <p class="lefty">Medio día (11:00-13:00)</p>
                            <br><br><br>
                            <input class="lefty" type="checkbox" name="horaAireAsmaK" value="tarde">
                            <p class="lefty">Tarde (14:00-19:00)</p>
                            <br><br><br>
                            <input class="lefty" type="checkbox" name="horaAireAsmaK" value="noche">
                            <p class="lefty">Noche (20:00-24:00)</p>
                        </div>

                        <div class="lefty question">
                            <p class="lefty question">¿Cuál(es) de estos síntomas presentaste?</p>
                            <br>
                            <input class="lefty" type="checkbox" name="sintomasAK" value="ojosIrrit">
                            <p class="lefty">Irritación de ojos</p>
                            <br><br><br><br>
                            <input class="lefty" type="checkbox" name="sintomasAK" value="dolorGar">
                            <p class="lefty">Irritación de garganta</p>
                            <br><br><br><br>
                            <input class="lefty" type="checkbox" name="sintomasAK" value="reseqNa">
                            <p class="lefty">Resequedad nasal</p>
                            <br><br><br><br>
                            <input class="lefty" type="checkbox" name="sintomasAK" value="dolorCabe">
                            <p class="lefty">Dolor de cabeza</p>
                            <br><br><br>
                            <input class="lefty" type="checkbox" name="sintomasAK" value="tos">
                            <p class="lefty">Tos</p>
                            <br><br><br>
                            <input class="lefty" type="checkbox" name="sintomasAK" value="respirarDif">
                            <p class="lefty">Dificultad para respirar</p>
                            <br><br><br>
                            <input class="lefty" type="checkbox" name="sintomasAK" value="flujoN">
                            <p class="lefty">Flujo nasal</p>
                            <br><br><br>
                            <input class="lefty" type="checkbox" name="sintomasAK" value="dolorPecho">
                            <p class="lefty">Dolor de pecho</p>
                            <br><br><br>
                            <input class="lefty" type="checkbox" name="sintomasAK" value="jadeo">
                            <p class="lefty">Jadeo</p>
                            <br><br><br>
                            <input class="lefty" type="checkbox" name="sintomasAK" value="pielIrrit">
                            <p class="lefty">Irritación en la piel o comezón</p>
                        </div>

                        <div class="lefty question">
                            <p class="lefty question">Otro, escriba cuál</p>
                            <br><br>
                            <input class="inp" type="text" name="otroSintE">
                        </div>
                        <br>

                        <p class="lefty question">De ser posible, dejar que el paciente conteste</p>
                        <div class="lefty question">
                            <p class="lefty question">¿Cómo te sientes del asma hoy?</p>
                            <br><br>
                            <input class="lefty" type="radio" name="sentirAsmaK" value="muyMal">
                            <p class="lefty">Muy mal</p>
                            <br><br>
                            <input class="lefty" type="radio" name="sentirAsmaK" value="mal">
                            <p class="lefty">Mal</p>
                            <br><br>
                            <input class="lefty" type="radio" name="sentirAsmaK" value="bien">
                            <p class="lefty">Bien</p>
                            <br><br>
                            <input class="lefty" type="radio" name="sentirAsmaK" value="muyBien">
                            <p class="lefty">Muy bien</p>
                            <br><br>
                        </div>
                       
                        <br><br>
                       
                        <div class="lefty question">
                            <p class="lefty question">¿Cuando corres o haces ejercicio ¿cómo se afecta tu respiración?</p>
                            <br><br><br>
                            <input class="lefty" type="radio" name="afectaEjerAK" value="granProb">
                            <p class="lefty">Es un gran problema</p>
                            <br><br><br>
                            <input class="lefty" type="radio" name="afectaEjerAK" value="problema">
                            <p class="lefty">Es un problema, no me siento bien</p>
                            <br><br><br>
                            <input class="lefty" type="radio" name="afectaEjerAK" value="problemaPeq">
                            <p class="lefty">Es un problema, pero me siento bien</p>
                            <br><br><br>
                            <input class="lefty" type="radio" name="afectaEjerAK" value="noProblema">
                            <p class="lefty">No es problema</p>
                            <br><br><br>
                        </div>
                       
                        <br><br>
                       
                        <div class="lefty question">
                            <p class="lefty question">¿Tienes tos debido a tu asma?</p>
                            <br><br>
                            <input class="lefty" type="radio" name="tosAK" value="siempre">
                            <p class="lefty">Sí, siempre</p>
                            <br><br>
                            <input class="lefty" type="radio" name="tosAK" value="mayorParte">
                            <p class="lefty">Sí, la mayoría del tiempo</p>
                            <br><br>
                            <input class="lefty" type="radio" name="tosAK" value="algo">
                            <p class="lefty">Algunas veces</p>
                            <br><br>
                            <input class="lefty" type="radio" name="tosAK" value="nunca">
                            <p class="lefty">No, nunca</p>
                            <br><br>
                        </div>
                       
                        <br><br>
                       
                        <div class="lefty question">
                            <p class="lefty question">¿Te despiertas durante la noche debido a tu asma?</p>
                            <br><br><br>
                            <input class="lefty" type="radio" name="nocheAsmaK" value="siempre">
                            <p class="lefty">Sí, siempre</p>
                            <br><br><br>
                            <input class="lefty" type="radio" name="nocheAsmaK" value="mayorParte">
                            <p class="lefty">Sí, la mayoría del tiempo</p>
                            <br><br><br>
                            <input class="lefty" type="radio" name="nocheAsmaK" value="algo">
                            <p class="lefty">Algunas veces</p>
                            <br><br><br>
                            <input class="lefty" type="radio" name="nocheAsmaK" value="nunca">
                            <p class="lefty">No, nunca</p>
                            <br><br><br>
                        </div>
                       
                        <br><br>

                        <p class="lefty question">Para el tutor</p>
                        <div class="lefty question">
                            <p class="lefty question">¿El paciente presentó síntomas de asma durante el día?</p>
                            <br><br><br>
                            <input class="lefty" type="radio" name="sintAsKTut" value="masUno">
                            <p class="lefty">Más de una vez al día</p>
                            <br><br><br>
                            <input class="lefty" type="radio" name="sintAsKTut" value="uno">
                            <p class="lefty">Una vez al día</p>
                            <br><br><br>
                            <input class="lefty" type="radio" name="sintAsKTut" value="nunca">
                            <p class="lefty">Nunca</p>
                            <br><br><br>
                        </div>

                        <br><br>
                        <div class="lefty question">
                            <p class="lefty question">¿Tuvo el paciente síntomas de asma (respiración sibilante o un silbido en el pecho, tos, falta de aire, 
                            opresión en el pecho o dolor)?</p>
                            <br><br><br>
                            <input class="lefty" type="radio" name="sintAsK" value="si">
                            <p class="lefty">Sí</p>
                            <br><br><br><br>
                            <input class="lefty" type="radio" name="sintAsK" value="no">
                            <p class="lefty">No</p>
                            <br><br><br>
                        </div>

                        <br><br>
                        
                        <div class="lefty question">
                            <p class="lefty question">¿Se despertó el paciente durante la noche debido al asma?</p>
                            <br><br><br>
                            <input class="lefty" type="radio" name="despertoAsmaK" value="si">
                            <p class="lefty">Sí</p>
                            <br><br><br>
                            <input class="lefty" type="radio" name="despertoAsmaK" value="no">
                            <p class="lefty">No</p>
                            <br><br><br>
                        </div>

                        <input type="submit" value="Guardar" id="button">                        
                    </div>
                </form>
            </div>
        </section>
    </body>
</html>