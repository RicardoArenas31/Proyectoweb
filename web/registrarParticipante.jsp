<%-- 
    Document   : registrarParticipante
    Created on : 15/07/2020, 04:59:28 PM
    Author     : ricar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modelo.Seguidor"%>
<%@page import="modelo.Usuario"%>
<%
    Usuario nuevo= new Usuario();
    Seguidor n = new Seguidor();
    String nombre="", ap_pat="",ap_mat="",correo="",contra="",sexo="",accion="";
    int edad=0;
    if(request.getParameter("txtNombre")!=null){
        nombre= request.getParameter("txtNombre");
    }
    if(request.getParameter("txtAp_pat")!=null){
        ap_pat= request.getParameter("txtAp_pat");
    }
    if(request.getParameter("txtAp_mat")!=null){
        ap_mat= request.getParameter("txtAp_mat");
    }
    if(request.getParameter("num")!=null){
        edad = Integer.parseInt(request.getParameter("num"));
    }
    if(request.getParameter("gn")!=null){
        sexo = request.getParameter("gn");
    }
    if(request.getParameter("txtCorreo")!=null){
        correo = request.getParameter("txtCorreo");
    } 
    if(request.getParameter("txtContra")!=null){
        contra = request.getParameter("txtContra");
    }
    if(request.getParameter("accion")!= null){
        accion = request.getParameter("accion");
        if(accion.equals("Registrar")){
            nuevo.setNombre(nombre);
            nuevo.setAp_pat(ap_pat);
            nuevo.setAp_mat(ap_mat);
            nuevo.setCorreo_electronico(correo);
            nuevo.setContrasena(contra);
            nuevo.setRol(2);
            nuevo.addUsuario();
        }
    }
    
%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <!-- Fuente roboto -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700&display=swap" rel="stylesheet">
    <%--Iconos de Fontawesome--%>
<script src="https://unpkg.com/ionicons@5.1.2/dist/ionicons.js"></script>    <%--Hoja de estilos--%>
    <link href="css/estiloRegU.css" rel="stylesheet">
    <title>Registrar Seguidor</title>
  </head>
  <body>
      <section class="contact-box">
          <div class="row no-gutters bg-dark">
              <div class="col-xl-5 col-lg-12 register-bg">
                  <div class="position-absolute testiomonial p-4">
                      <h3 class="font-weight-bold text-light"> Apoya a tus Artistas</h3>
                      <p class="lead text-light"> Busca eventos cercanos para ti.</p>
                  </div>
              </div>
              <div class="col-xl-7 col-lg-12 d-flex">
                  <div class="container align-self-center p-6">
                      <h1 class="font-weight-bold">Registrate Seguidor</h1>
                      <div class="form-group">
                          <button class="btn btn-outline-dark d-inline-block text-light mr-2 mb-3">
                              <ion-icon name="logo-google">
                              </ion-icon>Google
                          </button>
                          <button class="btn btn-outline-dark d-inline-block text-light mb-3">
                              <ion-icon name="logo-facebook">
                              </ion-icon>Facebook
                          </button>
                      </div>
                      <p class="text-muted mb-5">Ingresa la siguiente información para poder registrarte.</p>
                      
                      <form action="registrarParticipante.jsp" id="" name="formulario" method="POST">
                        <div class="form-row mb-2">
                            <div class="form-group col-md-4">
                                <label class="font-weight-bold">Nombre <span class="text-danger">*</span></label>
                                <input id="txtNombre" type="text" class="form-control" placeholder="Tu nombre" required>
                            </div>
                            <div class="form-group col-md-4">
                                <label class="font-weight-bold">Apellido P <span class="text-danger">*</span></label>
                                <input id="txtAp_pat" type="text" class="form-control" placeholder="Tu apellido" required>
                            </div>
                            <div class="form-group col-md-4">
                                <label class="font-weight-bold">Apellido M <span class="text-danger">*</span></label>
                                <input id="txtAp_mat" type="text" class="form-control" placeholder="Tu apellido" required>
                            </div>
                        </div>
                        <div class="form-row mb-2">
                            <div class="form-group col-md-6">
                                <label class="font-weight-bold">Edad <span class="text-danger">*</span></label>
                                <input id="num" type="number" min="1" class="form-control" placeholder="Edad" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label class="font-weight-bold">Sexo <span class="text-danger">*</span></label>
                                <div class="col-md-12">
                                    <input type="radio" name="gn"  value="Femenino" required> <small>Femenino</small>
                                    <input type="radio" name="gn"  value="Masculino" required> <small>Masculino</small>
                                </div>
                            </div>
                        </div>
                        <div class="form-group mb-3">
                            <label id="txtCorreo" class="font-weight-bold">Correo electrónico <span class="text-danger">*</span></label>
                            <input type="email" class="form-control" placeholder="Ingresa tu correo electrónico" required  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" title="Muestre un correo valido">
                        </div>
                        <div class="form-group mb-3">
                            <label class="font-weight-bold">Contraseña <span class="text-danger">*</span></label>
                            <input id="txtContra" type="password" class="form-control" placeholder="Ingresa una contraseña" required>
                        </div>
                        <div class="form-group mb-5">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" required>
                                <label class="form-check-label text-muted">Al seleccionar esta casilla aceptas nuestro aviso de privacidad y los términos y condiciones</label>
                            </div>
                        </div>
                          <input type="submit" name="accion" class="btn btn-primary width-100" value="Registrar">
                    </form>
                      <small class="d-inline-block text-muted mt-5">Ya tienes una cuenta? <a href="#">Iniciar sesion</a></small>
                  </div>
              </div>
          </div>
      </section>
   

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>
