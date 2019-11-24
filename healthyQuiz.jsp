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
            <h1>Cuestionario diario</h1>
        </header>

        <section id="start">
            <div class="centrardiv"> <!-- arreglar un poco más -->
                <form>
                    <div id="order">

                        <p class="lefty question">¿Realizaste actividad física al aire libre?</p>
                        <div class="lefty question">
                            <input class="lefty" type="radio" name="ejercicioSanos" value="Si">
                            <p class="lefty">Sí</p>
                            <br><br>
                            <input class="lefty" type="radio" name="ejercicioSanos" value="No">
                            <p class="lefty">No</p>
                            <br><br>
                        </div>
                            
                        <p class="lefty question">¿En dónde?</p>
                        <div class="lefty question">
                            <input class="lefty" type="textarea" name="ejercicioDonde">
                        </div>

                        <p class="lefty question">¿Qué tipo de ejercicio realizaste?</p>
                        <div class="lefty question">
                            <input class="lefty" type="textarea" name="ejercicioTipo">
                        </div>

                        <p class="lefty question">¿Presentaste cansancio al caminar?</p>
                        <div class="lefty question">
                            <input class="lefty" type="radio" name="cansancio" value="Si">
                            <p class="lefty">Sí</p>
                            <br><br>
                            <input class="lefty" type="radio" name="cansancio" value="No">
                            <p class="lefty">No</p>
                        </div>

                        <p class="lefty question">¿Presentaste cansancio al subir escaleras/terreno empinado?</p>
                        <div class="lefty question">
                            <input class="lefty" type="radio" name="cansancioEmpinado" value="Si">
                            <p class="lefty">Sí</p>
                            <br><br>
                            <input class="lefty" type="radio" name="cansancio" value="No">
                            <p class="lefty">No</p>
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
                            <input class="lefty" type="checkbox" name="sintomas" value="flujoN">
                            <p class="lefty">Flujo nasal</p>
                            <br><br><br><br>
                            <input class="lefty" type="checkbox" name="sintomas" value="estornudos">
                            <p class="lefty">Estornudos</p>
                            <br><br><br>
                            <input class="lefty" type="checkbox" name="sintomas" value="obstrucNa">
                            <p class="lefty">Obstrucción nasal</p>
                            <br><br><br>
                            <input class="lefty" type="checkbox" name="sintomas" value="dolorGarOTrag">
                            <p class="lefty">Dolor de garganta o al tragar</p>
                            <br><br><br>
                            <input class="lefty" type="checkbox" name="sintomas" value="pielIrrit">
                            <p class="lefty">Irritación en la piel o comezón</p>
                            <br><br><br>
                            <input class="lefty" type="checkbox" name="sintomas" value="ojosLlors">
                            <p class="lefty">Ojos llorosos</p>
                            <br><br><br>
                            <input class="lefty" type="checkbox" name="sintomas" value="dolorCabe">
                            <p class="lefty">Dolor de cabeza</p>
                            <br><br><br>
                            <input class="lefty" type="checkbox" name="sintomas" value="respirarDif">
                            <p class="lefty">Dificultad para respirar</p>
                        </div>

                        <div class="lefty question">
                            <p class="lefty question">Otro, escriba cuál</p>
                            <br><br>
                            <input type="text" name="otroSint">
                        </div>
                        <!-- <textarea class="lefty inp"></textarea> -->
                        <input type="submit" value="Guardar" id="button">                        
                    </div>
                </form>
            </div>
        </section>
    </body>
</html>