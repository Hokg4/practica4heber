<%-- 
    Document   : panel
    Created on : 05-06-2020, 01:10:42 PM
    Author     : usuario
--%>
<%
    if(session.getAttribute("logueado") != "OK"){
        response.sendRedirect("login.jsp");
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div style="text-align:center;">

        <h1>Bienvenido</h1>
        <br>
        <a href="MainController">Entrar</a>
         </div>
    </body>
</html>
