<%-- 
    Document   : nuevo
    Created on : 26-06-2020, 04:41:39 PM
    Author     : usuario
--%>
<%@page import="java.util.*" %> 
<%@page import="java.text.SimpleDateFormat" %> 
<%
    Date dNow = new Date();
    SimpleDateFormat ft = new SimpleDateFormat("yyy/MM/dd");
    String currentDate = ft.format(dNow);
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.emergentes.modelo.Blog"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Blog blog = (Blog) request.getAttribute("blog");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css\estilos_1.css">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Nueva Entrada</h1>
                <form action="MainController" method="post" class="form-register">
            <h2 class="form__titulo">FORMULARIO DE DATOS </h2>
 
           <div style="text-align:center;">
	     <input type="hidden" name="id" value="${blog.id}" placeholder="id" class="input-48" >
            <br>
            <input type="hidden" name="fecha" value="<%= currentDate%>" autocomplete="on" class="input-48" >
              <br>
	     <input type="text" name="titulo" value="${blog.titulo}" placeholder="Titulo" class="input-48" required>
              <br>
	     <textarea name="contenido" rows="10" cols="40" value="${blog.contenido}" placeholder="Contenido" class="input-48" required></textarea>
             <br> <br>
	     <input type="submit" value="Enviar" class="btn-enviar" >
              <br> <br>
           </div>
       </form>
    </body>
</html>
