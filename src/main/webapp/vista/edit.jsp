<%-- 
    Document   : Editar Artículo
    Created on : 16/11/2021, 20:20:34
    Author     : Federico Mamoris
--%>

<%@page import="models.Articulo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><jsp:include page="../head.jsp" />

    <body class="d-flex flex-column h-100">
        <jsp:include page="../header.jsp" />
        <!-- Begin page content -->
        <main class="d-flex justify-content-center px-md-4 " style="margin-top:100px; margin-bottom: 100px;">
            <div class="col-md-7 col-lg-8" >
                <h2 class="text-center mb-3 border-bottom">Formulario editar art&iacute;culo</h2>  
                <%
                    Articulo resultado = (Articulo) request.getAttribute("articulo");
                    if (resultado != null) {
                %>
                <form  class="needs-validation" novalidate  action = "ArticuloController?action=edit" method="post" >
                    <input type="hidden" id="id" name="id" value=<%=resultado.getId()%> >
                    <div class="row g-3">
                        <div class="col-sm-6">
                            <label for="codeLabel" class="form-label">Código</label>
                            <input type="text"max="40" minlength="5"   class="form-control" id="code" name="code"placeholder="" value=<%=resultado.getCode()%> required>
                            <div class="invalid-feedback">
                                El código es requerido.
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <label for="nameLabel" class="form-label">Nombre</label>
                            <input type="text" max="40" minlength="5" class="form-control" id="name" name="name" placeholder="" value=<%=resultado.getName()%>  required>
                            <div class="invalid-feedback">
                                El nombre es requerido.
                            </div>
                        </div>                      
                        <div class="col-md-6">
                            <label class="form-label" for="descriptionLabel">Descripci&oacute;n del art&iacute;culo</label>
                            <textarea class="form-control"max="100" minlength="5"  id="description" name="description" value=<%=resultado.getDescription()%>  rows="4" required><%=resultado.getDescription()%> </textarea>
                            <div class="invalid-feedback">
                                Debe ingresar una descripci&oacute;n.
                            </div>
                        </div>
                        <div class="col-md-6">
                            <label for="nampriceLabel" class="form-label">Precio</label>
                            <input type="text" class="form-control" type=number step=0.01 min="0.01"id="price" name="price" placeholder="" value=<%=resultado.getPrice()%>  required>
                            <div class="invalid-feedback">
                                El precio es requerido.
                            </div>
                        </div>
                    </div>
                    <div class="mt-3 mb-4">
                        <button class="btn btn-success" type="submit">
                            <span data-feather="check-circle"></span>
                            </span> Confimar</button>
                        <a href="ArticuloController?action=show" >
                            <button class="btn btn-secondary" type="button">
                                <span data-feather="plus-circle"></span>
                                </span> Volver</button>
                        </a>
                    </div>
                </form>
                <%
                    }
                %>
            </div>
        </main> 
        <jsp:include page="../footer.jsp" />
    <js:include page="../static/js/form-validation.js" >

    </body>

</html>




