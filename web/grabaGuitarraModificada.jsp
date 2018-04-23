<%-- 
    Document   : grabaGuitarraModificada
    Created on : 22-abr-2018, 23:25:53
    Author     : Adri
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="style.css">
<!-- Bootstrap -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
<link href="img/favicon.ico" rel="icon" type="image/x-icon" />
<title>Listado de guitarras</title>
</head>
<body class="mainBody">
<%
Class.forName("com.mysql.jdbc.Driver");
Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/venta","root", "");
Statement s = conexion.createStatement();
request.setCharacterEncoding("UTF-8");

String actualizacion = "UPDATE guitarra SET "
+ "marca='" + request.getParameter("marca")
+ "', modelo='" + request.getParameter("modelo")
+ "', anyo='" + request.getParameter("anyo")
+ "' WHERE numSerie=" + Integer.valueOf(request.getParameter("numSerie"));
s.execute(actualizacion);
out.println("Guitarra actualizada correctamente.");

conexion.close();
%>
<br>
<script>
window.location.href = "listadoGuitarras.jsp";
</script>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>