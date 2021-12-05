<%-- 
    Document   : articulos
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
            <script src="https://kit.fontawesome.com/6ed7d13145.js" crossorigin="anonymous"></script>
    </head>

    <body class="d-flex flex-column h-100">
        <header>
            <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark">
                <div class="container-fluid" id="nav-bar">
                    <a class="navbar-brand font-weight-bold" href="index.jsp"> <img src="static/images/codoacodo.png" width="80" height="55" alt="">
                            Codo a Codo - FullStack con Java</a>
                </div>
            </nav>
        </header>
        <!-- Begin page content -->
        <main class="my-5 container" >
            <div class="col-md-9 ml-sm-auto col-lg-10 px-md-4" style="margin-top: 50px;">
                <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                    <h2>Administraci&oacute;n de art&iacute;culos</h2>
                </div>
                <%
                    List<Articulo> resultado = (List<Articulo>) request.getAttribute("lista");
                    if (resultado != null) {
                %>
                <div class="table-responsive">
                    <table class="table table-striped table-sm container">
                        <thead>
                            <tr>
                                <th>Id</th>
                                <th>Código</th>
                                <th>Nombre</th>
                                <th>Descripción</th>
                                <th>Precio</th>
                                <th>Editar</th>
                                <th>Eliminar</th>
                            </tr>
                        </thead>                   
                        <tbody >
                            <%
                                for (int i = 0; i < resultado.size(); i++) {
                                    String rutaEdit = "AlumnosController?action=showEdit&id=" + resultado.get(i).getId();
                                    String rutaRemove = "AlumnosController?action=remove&id=" + resultado.get(i).getId();;
                            %>
                            <tr >
                                <td><%=resultado.get(i).getId()%></td> 
                                <td><%=resultado.get(i).getCode()%></td> 
                                <td><%=resultado.get(i).getName()%></td> 
                                <td><%=resultado.get(i).getDescription()%></td> 
                                <td><%=resultado.get(i).getPrice()%></td> 

                                <td>  <a href=<%=rutaEdit%> >
                                        <button type="button" class="btn btn-warning">
                                            <i class="fas fa-edit"></i>
                                        </button>
                                    </a></td> 
                                <td >  <a href=<%=rutaRemove%> >
                                        <button type="button" class="btn btn-danger">
                                            <i class="fas fa-trash"></i>
                                        </button>
                                    </a></td> 
                            </tr>                   
                            <%
                                }
                            %>
                        </tbody>
                    </table>
                    <%
                        }
                    %>
                </div>

                <a href="ArticuloController?action=new" >
                    <button class="btn btn-primary" type="button">
                        <span data-feather="plus-circle"></span>
                        </span> Agregar Art&iacute;culo</button>
                </a>
                <a href="ArticuloController?action=index" >
                    <button class="btn btn-secondary" type="button">
                        <span data-feather="plus-circle"></span>
                        </span> Volver</button>
                </a>


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



