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
            <h1>Registrate</h1>
        </header>

        <section id="start">
            <div class="centrardiv"> <!-- arreglar un poco más -->
                <form method="post" action="./RegisterRe">
                    <input type="text" required placeholder="Nombre" class="inp user" name="ReName" id="ReName">
                    <input type="email" required placeholder="Email" class="inp user" name="ReEmail" id="ReEmail">
                    <input type="password" minlenght="8" required placeholder="Contraseña" class="inp passw" name="RePW" id="RePW">
                    <input type="password" minlenght="8" required placeholder="Confirmar Contraseña" class="inp passw" name="RePW2" id="RePW2">
                    <input type="submit" value="Siguiente" id="button">
                </form>
                <!-- <div class="login"></div>
                <div class="reg-error"></div> -->
            </div>
        </section>
    </body>
</html>
