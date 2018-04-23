<%-- 
    Document   : grabaGuitarra
    Created on : 19-abr-2018, 18:05:00
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
    </head>
    <body>
        <%
            Class.forName("com.mysql.jdbc.Driver");

            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/venta", "root", "");

            Statement s = conexion.createStatement();

            request.setCharacterEncoding("UTF-8");

            String insercion = "INSERT INTO guitarra VALUES (" + "'" + request.getParameter("numSerie")
                    + "', '" + request.getParameter("marca")
                    + "', '" + request.getParameter("modelo")
                    + "', " + Integer.valueOf(request.getParameter("anyo"))
                    + ")";
            
            s.execute(insercion);
            
            conexion.close();
        %>

        <script> document.location ="listadoGuitarras.jsp"</script>
    </body>
</html>
