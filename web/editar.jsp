<%-- 
    Document   : editar
    Created on : 05-06-2020, 01:09:47 PM
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
        </style> <style type="text/css">
	</style>
        <title>JSP Page</title>
    </head>
    <body>
        
        <h1>
            <c:if test="${blog.id != 0}">Editar Entrada </c:if>
        </h1>
        <form action="MainController" method="post" class="form-register">
            <h2 class="form__titulo">FORMULARIO DE DATOS </h2>
 
           <div style="text-align:center;">
	     <input type="hidden" name="id" value="${blog.id}" placeholder="id" class="input-48" >
            <br>
	     <input type="hidden" name="fecha" value="<%= currentDate%>" placeholder="Fecha" class="input-48" >
              <br>
	     <input type="text" name="titulo" value="${blog.titulo}" placeholder="Titulo" class="input-48" >
              <br>
              <input type="text" name="contenido" value="${blog.contenido}" placeholder="Contenido" class="input-48" >
             <br> <br>
	     <input type="submit" value="Enviar" class="btn-enviar" >
              <br> <br>
           </div>
       </form>
        
    </body>
</html>
