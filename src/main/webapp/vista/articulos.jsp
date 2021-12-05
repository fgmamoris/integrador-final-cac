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

    <jsp:include page="../head.jsp" />

    <body class="d-flex flex-column h-100">
        <jsp:include page="../header.jsp" />
        <!-- Begin page content -->
        <main class="my-5 container" >
            <div class="text-center  px-md-4" style="margin-top: 50px;">
                <div class="d-flex justify-content-center flex-wrap flex-md-nowrap align-items-center pt-3 pb-2  border-bottom">
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
                                    String rutaEdit = "ArticuloController?action=showEdit";
                                    String rutaRemove = "ArticuloController?action=remove";
                            %>
                            <tr >
                                <td><%=resultado.get(i).getId()%></td> 
                                <td><%=resultado.get(i).getCode()%></td> 
                                <td><%=resultado.get(i).getName()%></td> 
                                <td><%=resultado.get(i).getDescription()%></td> 
                                <td><%=resultado.get(i).getPrice()%></td> 

                                <td> 
                                    <form  action = <%=rutaEdit%> method="POST" >
                                        <input type="hidden" id="id" name="id" value=<%=resultado.get(i).getId()%> >
                                            <button type="submit" class="btn btn-warning">
                                                <i class="fas fa-edit"></i>
                                            </button>
                                    </form>
                                </td> 
                                <td > 
                                    <form  action = <%=rutaRemove%> method="post" >
                                        <input type="hidden" id="id" name="id" value=<%=resultado.get(i).getId()%> >
                                            <button type="submit" class="btn btn-danger">
                                                <i class="fas fa-trash"></i>
                                            </button>

                                    </form>
                                </td> 
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
                <a href="ArticuloController?action" >
                    <button class="btn btn-secondary" type="button">
                        <span data-feather="plus-circle"></span>
                        </span> Volver</button>
                </a>


        </main>
        <jsp:include page="../footer.jsp" />
    </body>
</html>



