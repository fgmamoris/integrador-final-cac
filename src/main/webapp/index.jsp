<%-- 
    Document   : index
    Created on : 5 dic. 2021, 13:17:52
    Author     : Federico Mamoris
--%>

<%@page import="java.util.List"%>
<%@page import="models.Articulo"%>
<%@page import="models.Articulo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:th="http://www.thymeleaf.org">
    <!DOCTYPE html>
    <jsp:include page="/head.jsp" />
    <body class="d-flex flex-column h-100">
        <jsp:include page="/header.jsp" />
        <!-- Begin page content -->
        <main class="my-5 container ">
            <div class="ccol-md-9 ml-sm-auto col-lg-10 px-md-4 my-5" style="width: 85%">            
                <h1>Bienvenidos!</h1>
                <h3>Proyecto final del curso Codo a Codo</h3>
                <p>El proyecto implica realizar un CRUD, un sistema desarrollado en Java para el servicio Backend con Servlet, con patrón de diseño de arquitectura MVC, utilizando Maven para la inyección de dependencias, entre ellas mysql para la persistencia de datos, html para las páginas, y bootstrap para el maquetado de las dichas páginas.</p>
                <p>Para verificar el funcionamiento del programa <a href="ArticuloController?action=show" style="text-decoration: none">Ingrese aqui</a></p>
                <p>El código del presente proyecto puede encontrase en el <a href="https://github.com/fgmamoris/integrador-final-cac.git" style="text-decoration: none">repositorio</a> de mi autoría</p>
            </div>

        </main>
        <jsp:include page="/footer.jsp" />

    </body>
</html>



