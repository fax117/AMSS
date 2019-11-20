<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Cuestionario inicial</title>
        <link href="css/resetCss.css" rel ="stylesheet">
        <link href="css/quiz.css" rel ="stylesheet">
    </head>
    <body>

        <header>
            <h1>Cuestionario inicial</h1>
        </header>

        <section id="start">
            <div class="centrardiv"> <!-- arreglar un poco más -->
                <form>
                    <div id="order">
                        <p class="lefty question">Encuesta por llenar a diario:</p>
                        <div class="lefty question">
                            <input class="lefty" type="radio" name="enfermedad" value="Asma">
                            <p class="lefty">Asma</p>
                            <br><br>
                            <input class="lefty" type="radio" name="enfermedad" value="EPOC">
                            <p class="lefty">EPOC</p>
                            <br><br>
                            <input class="lefty" type="radio" name="enfermedad" value="Otra">
                            <p class="lefty">Otra</p>
                            <br><br>
                        </div>
                            
                        <p class="lefty question">Nivel de estudios: </p>
                        <div class="lefty question">
                            <input class="lefty" type="radio" name="studyLevel" value="primaria">
                            <p class="lefty">Primaria</p>
                            <br>
                            <br>
                            <input class="lefty" type="radio" name="studyLevel" value="secundaria">
                            <p class="lefty">Secundaria</p>
                            <br>
                            <br>
                            <input class="lefty" type="radio" name="studyLevel" value="prepa">
                            <p class="lefty">Preparatoria</p>
                            <br>
                            <br>
                            <input class="lefty" type="radio" name="studyLevel" value="licenciatura">
                            <p class="lefty">Licenciatura</p>
                            <br>
                            <br>
                            <input class="lefty" type="radio" name="studyLevel" value="posgrado">
                            <p class="lefty">Posgrado</p>
                            <br>
                            <br>
                        </div>                        <!-- <input class="lefty inp"  type="text" required placeholder="Respuesta" class="inp" name="pregunta2" id="pregunta2"> -->
                        <p class="lefty question">¿Fuma?</p>
                        <div class="lefty question">
                            <input class="lefty" type="radio" name="fuma" value="Si">
                            <p class="lefty">Sí</p>
                            <br><br>
                            <input class="lefty" type="radio" name="fuma" value="No">
                            <p class="lefty">No</p>
                        </div>

                        <div class="lefty question">
                            <p class="lefty">En caso afirmativo</p>
                            <br>
                            <p class="lefty">Cantidad al día</p>
                            <br>
                            <select class="lefty">
                                <option value="uno">1</option>
                                <option value="dos">2</option>
                                <option value="tres">3</option>
                                <option value="cuatroMas">4+</option>
                            </select>
                        </div>
                        <p class="lefty question">Si dejó de fumar, ¿hace cuánto?</p>
                        <div class="lefty question">
                            <select class="lefty">
                                <option value="menosAño">-1 año</option>
                                <option value="año">1 año</option>
                                <option value="masAño">+1 año</option>
                            </select>
                        </div>
                        <p class="lefty question">¿Convive con fumadores?</p>
                        <div class="lefty question">
                            <input class="lefty" type="radio" name="convivirFumadores" value="Si">
                            <p class="lefty">Sí</p>
                            <br>
                            <br>
                            <input class="lefty" type="radio" name="convivirFumadores" value="No">
                            <p class="lefty">No</p>
                            <br>
                            <br>
                            <p class="lefty">¿Dónde?</p>
                            <br>
                            <input type="textarea" name="dondeFumadores">
                        </div>
                        <div class="lefty question">
                            <p class="lefty question">Otro tipo de humo al que esté expuesto/a</p>
                            <input class="lefty" type="textarea" name="otrosHumos">
                        </div>
                        <div class="lefty question">
                            <p class="lefty question">¿Alguna otra enfermedad diagnosticada?</p>
                            <br>
                            <input class="lefty" type="checkbox" name="enfermedad1" value="Broncon">
                            <p class="lefty">Bronconeumonía</p>
                            <br><br><br>
                            <input class="lefty" type="checkbox" name="enfermedad2" value="Neumo">
                            <p class="lefty">Neumonía</p>
                            <br>
                            <br>
                            <input class="lefty" type="checkbox" name="enfermedad3" value="BronCro">
                            <p class="lefty">Bronquitis crónica</p>
                            <br>
                            <br>
                            <input class="lefty" type="checkbox" name="enfermedad4" value="Enfisema">
                            <p class="lefty">Enfisema</p>
                            <br>
                            <br>
                            <input class="lefty" type="checkbox" name="enfermedad5" value="Asma">
                            <p class="lefty">Asma</p>
                            <br>
                            <br>
                            <input class="lefty" type="checkbox" name="enfermedad6" value="Sinusitis">
                            <p class="lefty">Sinusitis</p>
                            <br>
                            <br>
                            <input class="lefty" type="checkbox" name="enfermedad7" value="Rinitis">
                            <p class="lefty">Rinitis</p>
                            <br>
                            <br>
                            <input class="lefty" type="checkbox" name="enfermedad8" value="Polipos">
                            <p class="lefty">Pólipos</p>
                            <br>
                            <br>
                            <input class="lefty" type="checkbox" name="enfermedad9" value="Cancer">
                            <p class="lefty">Cáncer</p>
                            <br>
                            <br>
                            <input class="lefty" type="checkbox" name="enfermedad10" value="Tuber">
                            <p class="lefty">Tuberculosis</p>
                            <br><br>
                            <p class="lefty">En caso de cáncer, indicar tipo</p>
                            <input class="lefty" type="text" name="tipoCancer">
                            <br><br>
                            <p class="lefty question">¿Algún otra enfermedad?</p>
                            <br><br>
                            <input class="lefty" type="text" name="otraEnf">
                        </div>
                        <p class="lefty question">¿Realiza ejercicio?</p>
                        <div class="lefty question">
                            <input class="lefty" type="radio" name="ejercicio" value="Si">
                            <p class="lefty">Sí</p>
                            <br>
                            <br>
                            <input class="lefty" type="radio" name="ejercicio" value="No">
                            <p class="lefty">No</p>
                            <br>
                            <br>
                            <p class="lefty">¿Dónde?</p>
                            <br>
                            <input type="textarea" name="dondeEjercicio">
                        </div>
                        <!-- <textarea class="lefty inp"></textarea> -->
                        <input type="submit" value="Guardar" id="button">                        
                    </div>
                </form>
            </div>
        </section>
    </body>
</html>