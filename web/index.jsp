<%-- 
    Document   : index
    Created on : 10-may-2018, 19:39:36
    Author     : Adri
--%>


<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Scanner"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Inicio de Sesión</title>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
        <link href="https://fonts.googleapis.com/css?family=Do+Hyeon" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="css/loginstyle.css">
    </head>
    <body>

        <div class="container">
            <form method="get" action="sesion.jsp">
                <div class="login">
                    <div class="row">
                        <div class="col-md-12">
                    <h1>Login</h1>
                        </div>
                    <form method="post">
                        <div class="row">
                        <div class="col-md-12">
                        <input type="text" name="u" placeholder="Usuario" required="required" id="user" size="20" />
                        </div>
                        </div>
                        <div class="row">
                        <div class="col-md-12">
                        <input type="password" name="p" placeholder="Contraseña" required="required" id="pass" size="20" />
                        </div>
                        </div>
                        <div class="row">
                            <div class="col-md-2">
                        <button type="submit" class="btn btn-primary btn-block btn-large">Iniciar sesion</button>
                            </div>
                        </div>
                    </form>
                        
                </div>
                
                    <div class="autor">
                        
                        <% 
                        
                        ArrayList<String> autor = new ArrayList<String>();
                        autor.add("Adrian");
                        autor.add("Villalba");
                        autor.add("Sanchez");
                        out.print("Creado por " + autor.get(0) + " " + autor.get(1) + " " + autor.get(2));
                        %>
                       
                    </div>
        </div>
    </body>
</html>
