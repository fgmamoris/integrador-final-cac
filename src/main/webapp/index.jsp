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

    <head>
        <title>Trabajo Integrador - Tickets</title>
        <meta charset="UTF-8"/>
        <meta name="title" content="Trabajo Integrador"/>
        <link href="static/css/style.css" rel="stylesheet" type="text/css" />
        <meta name="viewport" content="width=device-width,initial-scale=1"/>
        <meta name="keywords" content="Codo a Codo"/>
        <meta name="description" content="Trabajo integrador"/>
        <meta name="author" content="Federico Mamoris"/>
        <meta name="copyright" content="Federico Mamoris 2021"/>
        <meta name="robots" content="index, follow"/>
        <meta http-equiv="content-language" content="es"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"><!-- comment -->
            <!-- Optional JavaScript -->
            <!-- jQuery first, then Popper.js, then Bootstrap JS -->
            <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
            <!-- JavaScript Bundle with Popper -->
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </head>

    <body class="d-flex flex-column h-100">
        <header>
            <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark">
                <div class="container-fluid" id="nav-bar">
                    <a class="navbar-brand font-weight-bold" href="index.html"> <img src="static/images/codoacodo.png" width="80" height="55" alt="">
                            Codo a Codo - FullStack con Java</a>
                </div>
            </nav>
        </header>
        <!-- Begin page content -->
        <main class="my-5 container ">
            <div class="ccol-md-9 ml-sm-auto col-lg-10 px-md-4 my-5" style="width: 85%">            
                <h1>Bienvenidos!</h1>
                <h3>Proyecto final del curso Codo a Codo</h3>
                <p>Un sistema desarrollado en Java para el servicio Backend con Servlet, utilizando Maven para la inyección de dependencias, entre ellas mysql para la persistencia de datos, html para las páginas, y bootstrap para el maquetado de las dichas páginas.</p>
                <p>El proyecto implica un realizar un CRUD, que Un sistema desarrollado en Java para el servicio Backend con Servlet, utilizando Maven para la inyección de dependencias, entre ellas mysql para la persistencia de datos, html para las páginas, y bootstrap para el maquetado de las dichas páginas.</p>
                <p>PAra verificar el funcionamiento del programa <a href="ArticuloController?action=show" style="text-decoration: none">Ingrese aqui</a></p>
                <p>El código del presente proyecto puede encontrase en el <a href="index.html" style="text-decoration: none">repositorio</a> de mi autoría</p>
            </div>

        </main>
        <footer class="page-footer font-small blue fixed-bottom text-light" style="background-color: #3f3c39; color: white ">
            <!-- Copyright -->
            <div class="footer-copyright text-center py-3 text-light">&copy; 
                <script type="text/javascript">document.write(new Date().getFullYear());</script> Copyright:
                <a href="https://github.com/fgmamoris"> Federico Mamoris</a>
            </div>
            <!-- Copyright -->
        </footer>
    </body>
</html>



