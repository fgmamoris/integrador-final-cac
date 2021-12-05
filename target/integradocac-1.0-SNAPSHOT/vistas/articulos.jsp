<%-- 
    Document   : alumnos
    Created on : 28 nov. 2021, 16:57:14
    Author     : Federico Mamoris
--%>

<%@page import="models.Articulo"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"><!-- comment -->
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <title>Trabajo integrador - Codo a Codo</title>
    </head>
    <body>
        <h1>Trabajo integrador!</h1>
        <div class="row">
            <div class="col-12">
                <h1>Listado de estudiantes</h1>
                <a href="AlumnosController?accion=nuevo" class="btn btn-info my-2"><i class="bi bi-person-plus-fill"></i>Nuevo</a>
            </div>
            <div class="col-12 table-responsive">
                <table class="table table-bordered">
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
                    <tbody>
                    <c:forEach items="${lista}" var="resultado" varStatus="theCount">


                        <%
                            //List<Articulo> resultado = request.getParameter("lista");
                            //  for (int i = 0; i < resultado.size(); i++) {
                            //    String rutaRemove = "AlumnosController?action=showEdit&id=" + resultado.get(i).getId();
                            //  String rutaEdit = "AlumnosController?action=remove&id=" + resultado.get(i).getId();
                        %> 
                        <tr>
                            <td>resultado.get(i).getId(</td>
                            <td>resultado.get(i).getCode()</td>
                            <td>resultado.get(i).getName()</td>
                            <td>resultado.get(i).getDescription()</td>
                            <td>resultado.get(i).getPrice()</td>
                            <td><a class="text-success" href=AlumnosController?action=showEdit&id=" + resultado.get(i).getId()><i class="bi bi-pencil"></i>Editar</a></td>
                            <td><a class="text-success" href=AlumnosController?action=remove&id=" + resultado.get(i).getId()><i class="bi bi-pencil"></i>Editar</a></td>

                        </tr> 
                        <%
                            }
                        %> 
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>
