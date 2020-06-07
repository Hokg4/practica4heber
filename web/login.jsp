5<%-- 
    Document   : login
    Created on : 05-06-2020, 01:10:25 PM
    Author     : usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
	 <style type="text/css">
		<%@include file="WEB-INF/css/estilos.css"%>
	</style>
        <title>JSP Page</title>
    </head>
    <body>
       
        <div style="text-align:center;">
        <h1>Login</h1>
        
        <form action="LoginControlador" method="post" class="form-register">
            <h2 class="form__titulo">INGRESAR DATOS DE ADMINISTRADOR</h2>
          
            <div>
		<input type="text" name="usuario" placeholder="Usuario" class="input-48" required>
		<input type="password" name="password" placeholder="Password" class="input-48" required>
		<input type="submit" value="Ingresar" class="btn-enviar">
		
	    </div>
            
        </form>
        </div>
        </font>
        
    </body>
</html>
