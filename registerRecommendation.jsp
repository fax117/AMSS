<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
        <title>Registro Usuario</title>
        <link href="css/resetCss.css" rel ="stylesheet">
        <link href="css/register.css" rel ="stylesheet">
    </head>
    <body>

        <header>
            <h1>Registra una nueva recomendación</h1>
        </header>

        <section id="start">
            <div class="centrardiv"> <!-- arreglar un poco más -->
                <form method="post" action="./RegisterAdvice">
                    <input type="text" required placeholder="Nombre" class="inp user" name="addName" id="addName">
                    <input type="text" required placeholder="Descripción" class="inp user" name="addDescription" id="addDescription">
                    <input type="text" required placeholder="IRPS en que aplica" class="inp user" name="IRPSVal" id="IRPSVal">
                    <input type="submit" value="Registrar" id="button">
                </form>
                <!-- <div class="login"></div> 
                <div class="reg-error"></div> -->
            </div>
        </section>
    </body>
</html>