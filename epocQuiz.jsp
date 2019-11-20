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
            <h1>Cuestionario diario (EPOC)</h1>
        </header>

        <section id="start">
            <div class="centrardiv"> <!-- arreglar un poco más -->
                <form>
                    <div id="order">

                        <p class="lefty question">¿Realizaste actividades al aire libre?</p>
                        <div class="lefty question">
                            <input class="lefty" type="radio" name="actividadEpoc" value="Si">
                            <p class="lefty">Sí</p>
                            <br><br>
                            <input class="lefty" type="radio" name="actividadEpoc" value="No">
                            <p class="lefty">No</p>
                            <br><br>
                        </div>

                        <p class="lefty question">¿Estuviste al aire libre más de 30 minutos?</p>
                        <div class="lefty question">
                            <input class="lefty" type="radio" name="aireLibreEpoc" value="Si">
                            <p class="lefty">Sí</p>
                            <br><br>
                            <input class="lefty" type="radio" name="aireLibreEpoc" value="No">
                            <p class="lefty">No</p>
                        </div>

                        <div class="lefty question">
                            <p class="lefty question">¿En qué intervalo(s) estuviste al aire libre?</p>
                            <br>
                            <input class="lefty" type="checkbox" name="horaAireEpoc" value="manana">
                            <p class="lefty">Mañana (4:00-10:00)</p>
                            <br><br><br><br>
                            <input class="lefty" type="checkbox" name="horaAireEpoc" value="medio">
                            <p class="lefty">Medio día (11:00-13:00)</p>
                            <br><br><br>
                            <input class="lefty" type="checkbox" name="horaAireEpoc" value="tarde">
                            <p class="lefty">Tarde (14:00-19:00)</p>
                            <br><br><br>
                            <input class="lefty" type="checkbox" name="horaAireEpoc" value="noche">
                            <p class="lefty">Noche (20:00-24:00)</p>
                        </div>

                        <div class="lefty question">
                            <p class="lefty question">¿Cuál(es) de estos síntomas presentaste?</p>
                            <br>
                            <input class="lefty" type="checkbox" name="sintomasE" value="ojosIrrit">
                            <p class="lefty">Irritación de ojos</p>
                            <br><br><br><br>
                            <input class="lefty" type="checkbox" name="sintomasE" value="dolorGar">
                            <p class="lefty">Irritación de garganta</p>
                            <br><br><br><br>
                            <input class="lefty" type="checkbox" name="sintomasE" value="reseqNa">
                            <p class="lefty">Resequedad nasal</p>
                            <br><br><br><br>
                            <input class="lefty" type="checkbox" name="sintomasE" value="dolorCabe">
                            <p class="lefty">Dolor de cabeza</p>
                            <br><br><br>
                            <input class="lefty" type="checkbox" name="sintomasE" value="tos">
                            <p class="lefty">Tos</p>
                            <br><br><br>
                            <input class="lefty" type="checkbox" name="sintomasE" value="respirarDif">
                            <p class="lefty">Dificultad para respirar</p>
                            <br><br><br>
                            <input class="lefty" type="checkbox" name="sintomasE" value="flujoN">
                            <p class="lefty">Flujo nasal</p>
                            <br><br><br>
                            <input class="lefty" type="checkbox" name="sintomasE" value="dolorPecho">
                            <p class="lefty">Dolor de pecho</p>
                            <br><br><br>
                            <input class="lefty" type="checkbox" name="sintomasE" value="jadeo">
                            <p class="lefty">Jadeo</p>
                            <br><br><br>
                            <input class="lefty" type="checkbox" name="sintomasE" value="pielIrrit">
                            <p class="lefty">Irritación en la piel o comezón</p>
                        </div>

                        <div class="lefty question">
                            <p class="lefty question">Otro, escriba cuál</p>
                            <br><br>
                            <input type="text" name="otroSintE">
                        </div>
                        <br>

                        <p class="lefty question">Selecciona el número que mejor describa tu estado actual</p>
                        <div class="in-line">
                            <datalist id="marks">
                                <option value="1">
                                <option value="2">
                                <option value="3">
                                <option value="4">
                                <option value="5">
                            </datalist>
                            <p>Nunca toso 1 </p><input type="range" name="tos" min="1" max="5" step="1" list="marks"><p> 5 Siempre toso</p>
                        </div>

                        <div class="in-line">
                            <p>Sin flema 1 </p><input type="range" name="flema" min="1" max="5" step="1" list="marks"><p> 5 Exceso de flema</p>
                        </div>

                        <div class="in-line">
                            <div class="right-slider">
                                <p>Ninguna opresión en pecho 1 </p>
                            </div>
                            <input type="range" name="tos" min="1" max="5" step="1" list="marks">
                            <div class="right-slider"><p> 5 Mucha opresión en pecho</p></div>
                        </div>

                        <div class="in-line">
                            <p>Nunca toso 1 </p><input type="range" name="tos" min="1" max="5" step="1" list="marks"><p> 5 Siempre toso</p>
                        </div>

                        <div class="in-line">
                            <p>Nunca toso 1 </p><input type="range" name="tos" min="1" max="5" step="1" list="marks"><p> 5 Siempre toso</p>
                        </div>

                        <div class="in-line">
                            <p>Nunca toso 1 </p><input type="range" name="tos" min="1" max="5" step="1" list="marks"><p> 5 Siempre toso</p>
                        </div>

                        <div class="in-line">
                            <p>Nunca toso 1 </p><input type="range" name="tos" min="1" max="5" step="1" list="marks"><p> 5 Siempre toso</p>
                        </div>

                        <div class="in-line">
                            <p>Nunca toso 1 </p><input type="range" name="tos" min="1" max="5" step="1" list="marks"><p> 5 Siempre toso</p>
                        </div>

                        <input type="submit" value="Guardar" id="button">                        
                    </div>
                </form>
            </div>
        </section>
    </body>
</html>