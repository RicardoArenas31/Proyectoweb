<%-- 
    Document   : index
    Created on : 14/07/2020, 12:31:43 AM
    Author     : ricar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <%--JQUERY--%>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <%--Bootstrap--%>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <%--Iconos de Fontawesome--%>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/solid.css">
        <script src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>
        <%--CSS--%>
        <link href="css/estilo.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <div class="modal-dialog text-center">
            <div class="col-sm-8 main-section">
                <div class="modal-content">
                    <div class="col-12 user-img">
                        <img src="img/music.png">
                    </div>
                    <form class="col-12">
                        <div class="form-group" id="user-group">
                            <input type="email" class="form-control" placeholder="Ingresa el e-mail" required/>
                        </div>
                        <div class="form-group" id="contrasena-group">
                            <input type="password" class="form-control" placeholder="Contraseña" required/>
                        </div>
                        <button type="submit" class="btn btn-primary"><i class="fas fa-sign-in-alt"></i>  Ingresar</button>
                    </form>
                    <div class="col-12 r1">
                        <a href="registrarParticipante.jsp">Registrar Usuario</a>
                    </div>
                    <div class="col-12 r2">
                        <a href="registrarBanda.jsp">Registrar Musico/Banda</a>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>

