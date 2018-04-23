<%-- 
    Document   : listadoGuitarras
    Created on : 22-abr-2018, 22:55:49
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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/styles.css">
        <link href="img/favicon.ico" rel="icon" type="image/x-icon" />
        <title>Listado de usuarios</title>
    </head>
    <body class="mainBody">
        <div class="container">
            <br><br>   
            <div class="panel panel-primary">
                <div class="panel-heading text-center"><h2>Lista de coleccionistas</h2></div>
                <%
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/venta", "root", "");
                    Statement s = conexion.createStatement();
                    ResultSet listado = s.executeQuery("SELECT guitarra.marca, guitarra.modelo, guitarra.numSerie, coleccionista.codigo, coleccionista.nombre, coleccionista.apellidos FROM guitarra JOIN coleccionista ON guitarra.numSerie=coleccionista.numSerie");
                %>

                
                
                
                <table class="table table-striped">
                    <tr><th>Código</th><th>Nombre</th><th>Apellidos</th><th>Guitarra</th></tr>
                    <form method="get" action="grabaCol.jsp">
                        <tr>
                            <td><input type="text" name="codigo" size="20"></td>
                            <td><input type="text" name="nombre" size="40"></td>
                            <td><input type="text" name="apellidos" size="40"></td>
                            <td><input type="text" name="numSerie" size="20"></td>
                            <td><button type="submit" value="Añadir" class="btn btn-primary"><span class="glyphicon glyphicon-plus"></span></button></td><td></td>
                        </tr>           
                    </form>
                    <%
                        while (listado.next()) {
                            out.println("<tr><td>");
                            out.println(listado.getString("codigo") + "</td>");
                            out.println("<td>" + listado.getString("nombre") + "</td>");
                            out.println("<td>" + listado.getString("apellidos") + "</td>");
                            out.println("<td>" +  listado.getString("marca") + " " + listado.getString("modelo")+ "<br>"  + "Nº de serie:" + " " + listado.getString("numSerie") + "</td>");
                            
                    %>
                    <td>
                        <form method="get" action="modificaCol.jsp">
                            <input type="hidden" name="codigo" value="<%=listado.getString("codigo")%>">
                            <input type="hidden" name="nombre" value="<%=listado.getString("nombre")%>">
                            <input type="hidden" name="apellidos" value="<%=listado.getString("apellidos")%>">
                            <input type="hidden" name="numSerie" value="<%=listado.getString("numSerie")%>">
                            
                            <button type="submit"  class="btn btn-info"><span class="glyphicon glyphicon-pencil"></span></button>
                        </form>
                    </td>
                    <td>
                        <form method="post" action="borraCol.jsp">
                            <input type="hidden" name="codigo" value="<%=listado.getString("codigo")%>"/>
                            <button type="submit" class="btn btn-danger"><span class="glyphicon glyphicon-remove"></span></button>
                        </form>
                    </td></tr>
                    <%
                        } // while   
                        conexion.close();
                    %>

                </table>
            </div>
            <a href="listadoGuitarras.jsp"><p>Ir a guitarras →</p></a>
        </div>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins
) -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
</html>

