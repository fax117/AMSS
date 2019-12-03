<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
        <title>Generar Reporte</title>
        <link href="css/resetCss.css" rel ="stylesheet">
        <link href="css/generarReportes.css" rel ="stylesheet">
    </head>
    <body>
            
        <header>
            <a href="./LandingPageAdmin.jsp"><img src="img/left_Arrow.png" id="backArrow"></a>
            <h1>Reporte de pacientes</h1>
        </header>
       
        <section id="start">
            <div class="centrardiv">
                <h2>Generar reportes de:</h2>
                <form method="get"  action="./ExecuteGenerarReporte">
                    <input type="date" name="initialDate" id="date">
                    <h2>a:</h2>
                    <input type="date" name="endDate" id="date">
                    <h2> Información de:</h2>
                    <select id ="date" name="enfermedad">
                        <option value="asma">Asma</option>
                        <option value="asmaNinos">Asma Niños</option>
                        <option value="epoc">EPOC</option>
                        <option value="sanos">Sanos</option>
                    </select>
                    <input type="submit" id ="button" value="GenerarReporte">
                </form>
            </div>  
        </section>
        
    </body>
</html>