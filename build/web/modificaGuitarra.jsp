<%-- 
    Document   : modificaGuitarra
    Created on : 22-abr-2018, 23:19:32
    Author     : Adri
--%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- Bootstrap -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
<link href="images/favicon.ico" rel="icon" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="css/styles.css">
<title>Modifica una guitarra</title>
</head>
<body class="guitBody">
<% request.setCharacterEncoding("UTF-8"); %>
<div class="container">
<br><br>
<div class="panel panel-info">
    <div class="panel-heading text-center" style="background: rgb(218,165,32);"><p class="mod"> Modificación de guitarra</p></div>
<form method="get" action="grabaGuitarraModificada.jsp">
<div class="form-group" style="margin-top: 20px;">
<label>&nbsp;&nbsp;Nº de serie:&nbsp;</label><input type="text" size="5" name="numSerie" value="<%= request.getParameter("numSerie") %>">
</div>
<div class="form-group">
<label>&nbsp;&nbsp;Marca:&nbsp;</label><input type="text" size="35" name="marca" value="<%= request.getParameter("marca") %>">
</div>
<div class="form-group">
<label>&nbsp;&nbsp;Modelo:&nbsp;</label><input type="text" name="modelo" size="5" value="<%= request.getParameter("modelo") %>">
</div>
<div class="form-group">
<label>&nbsp;&nbsp;Año:&nbsp;</label><input type="text" name="anyo" size="5" value="<%= request.getParameter("anyo") %>">
</div>
<hr>
&nbsp;&nbsp;<a href="listadoEquipos.jsp" class="btn btn-danger"><span class="glyphicon glyphicon-remove"></span></a>
<button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-ok"></span></button><br><br>
</form>

</div>
</div>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>