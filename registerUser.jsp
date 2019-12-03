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
        <script type="text/javascript" src="js/jQuery.js"></script>
    </head>
    <body>

        <header>
            <h1>Registrate</h1>
        </header>

        <section id="start">
            <div class="centrardiv"> <!-- arreglar un poco más -->
                <form method="post" action="./RegisterUser">
                    <input type="text" required placeholder="Nombre" class="inp user" name="addName" id="addName">
                    <input type="text" required placeholder="Apellido" class="inp user" name="addLastName" id="addLastName">
                    <input type="text" required placeholder="Email" class="inp user" name="addEmail" id="addEmail">
                    <input type="text" required placeholder="Dirección" class="inp user" name="addAddress" id="addAddress">
                    <input type="text" required placeholder="Código Postal" class="inp user" name="addCP" id="addCP">
                    <input type="date" required placeholder="Fecha de nacimiento" class="inp user" name="addBirthdate" id="addBirthdate">
                    <input type="password" required placeholder="Contraseña" class="inp passw" name="addPW" id="addPW">
                    <input type="password" required placeholder="Confirmar Contraseña" class="inp passw" name="addPW2" id="addPW2">
                    <div class="reg-error"></div>
                    <input type="submit" value="Siguiente" id="button">
                </form>
            </div>
        </section>

        <script>
            
            $('#button').on('click', function(){
 
                 var error=false;
                //Validate equal passwords:
                if($('#addPW').val() != $('#addPW2').val()){
                    $('#addPW').css('border-bottom', '3px solid #443742');
                    $('#addPW2').css('border-bottom', '3px solid #443742');
                    error=true;
                }
                if(error){
                    $('.reg-error').text('Contraseñas distintas.');
                    $('.reg-error').fadeIn().css('display','block').delay(1000).fadeOut();
                    return false;
                }
                //If no errors, continue
                
            });
         
         </script>
    </body>
</html>