<%-- 
    Document   : modificar
    Created on : 16/11/2021, 20:20:45
    Author     : Federico Mamoris
--%>

<%@page import="models.Alumno"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Alumno</title>
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"><!-- comment -->
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
   
    </head>
    <body>        
        <div class="container" >
            <h1 class="text-center" >Modificar</h1>
                <div class="row" >
                    <form class="p-5" method="POST" action="AlumnosController?accion=actualizar">
                        <% Alumno resultado = null;%>
                        <div class="mb-3">
                            <label for="id" class="form-label" ></label>
                            <input type="hidden" class="form-control"  id="id" name="id" value=<%=resultado.getId()%>   >                          
                        </div> 
                        <div class="mb-3">
                            <label for="nombre" class="form-label" >Nombre</label>
                            <input type="text" class="form-control"  minlength="3" id="nombre" name="nombre" value=<%=resultado.getNombre()%> >                          
                        </div> 
                        <div class="mb-3">
                            <label for="apellido" class="form-label" >Apellido</label>
                            <input type="text" class="form-control"  minlength="3" id="apellido" name="apellido" value=<%=resultado.getApellido()%> >                          
                        </div> 
                        <div class="mb-3">
                            <label for="mail" class="form-label" >E-Mail</label>
                            <input type="text" class="form-control" id="mail" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$ name="mail" value=<%=resultado.getMail()%>  >                          
                        </div>                         
                        <button type="submit" class="btn btn-primary" >Modificar </button>
                        
                    </form>                
                </div>
       </div>
        
        
        
    </body>
</html>
