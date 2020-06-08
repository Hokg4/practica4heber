<%-- 
    Document   : index
    Created on : 05-06-2020, 01:10:12 PM
    Author     : usuario
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%@page import="com.emergentes.modelo.Blog"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
List<Blog> lista = (List<Blog>) request.getAttribute("lista");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css\fontello.css">
	<link rel="stylesheet" href="css\estilos_2.css">
         <style type="text/css">
           
           
             body{
                 font-family: 'Open Sans', sans-serif;
                   }
        </style>
        <title>JSP Page</title>
    </head>
    <body>
      
        <header>
	<div class="contenedor">
		<h1 class="icon-android">Blog</h1>
		<input type="checkbox" id="menu-bar">
		<label class="icon-menu" for="menu-bar"></label>
		<nav class="menu">
		
			<a href="MainController?op=nuevo">Nueva entrada</a>
			<a href="LoginControlador">Salir</a>
			
			
		</nav>
	</div>
        </header>
       <main>
	<section id="blog">
	    
	<div class="contenedor">
             <h1>Lo ultimo de nuestro blog</h1>
              <c:forEach var="blog" items="${lista}">
	 <article>
               
                
                    <p>${blog.fecha}</p>
                    <br>
                    <h1 class="titulo-post">${blog.titulo}</h1>
                    <br>
                    <h3>${blog.contenido}</h3>
                          
          <p class="link"><a href="MainController?op=editar&id=${blog.id}">Editar</a>
              <a href="MainController?op=eliminar&id=${blog.id}"
             onclick="return(confirm('esta seguro??'))">Eliminar</a>
          </p>
            
              <hr>
        </article> 
                 
                  </c:forEach>
            
	</div>
         </section >
             
		
	</main>
    
    </body>
</html>
