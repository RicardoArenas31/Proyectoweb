<%-- 
    Document   : registrarBanda
    Created on : 15/07/2020, 08:48:51 PM
    Author     : ricar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    <link href="css/estiloRegA.css" rel="stylesheet">
    <title>Registrar Artista/Banda</title>
  </head>
  <body>
      <section class="contact-box">
          <div class="row no-gutters bg-dark">
              <div class="col-xl-5 col-lg-12 register-bg">
                  <div class="position-absolute testiomonial p-4">
                      <h3 class="font-weight-bold text-light"> Sube tus eventos</h3>
                      <p class="lead text-light"> Tus seguidores podrán apoyartes.</p>
                  </div>
              </div>
              <div class="col-xl-7 col-lg-12 d-flex">
                  <div class="container align-self-center p-6">
                      <h1 class="font-weight-bold">Registrate Banda/Artista</h1>
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
                      
                    <form>
                        <div class="form-row mb-2">
                            <div class="form-group col-md-4">
                                <label class="font-weight-bold">Nombre <span class="text-danger">*</span></label>
                                <input id="nombre" type="text" class="form-control" placeholder="Tu nombre" required>
                            </div>
                            <div class="form-group col-md-4">
                                <label class="font-weight-bold">Apellido P <span class="text-danger">*</span></label>
                                <input id="ap_pat" type="text" class="form-control" placeholder="Tu apellido" required>
                            </div>
                            <div class="form-group col-md-4">
                                <label class="font-weight-bold">Apellido M <span class="text-danger">*</span></label>
                                <input id="ap_mat" type="text" class="form-control" placeholder="Tu apellido" required>
                            </div>
                        </div>
                        <div class="form-row mb-2">
                            <div class="form-group col-md-12">
                                <label class="font-weight-bold">Nombre de Agrupación/Artista <span class="text-danger">*</span></label>
                                <input id="nombreBanda" type="text" class="form-control" placeholder="Tu nombre" required>
                            </div>
                        </div>
                        <div class="form-row mb-2">
                            <div class="form-group col-md-12">
                                <label class="font-weight-bold">Fecha de Inicio <span class="text-danger">*</span></label>
                                <input id="fecha_inicio" type="date" class="form-control" placeholder="Tu nombre" required>
                            </div>
                        </div>
                        <div class="form-row mb-2">
                            <div class="form-group col-md-12">
                                <label class="font-weight-bold">Descripción </label>
                                <textarea id="descripcion" class="form-control"  ></textarea>
                            </div>
                        </div>
                        <div class="form-group mb-3">
                            <label class="font-weight-bold">Correo electrónico <span class="text-danger">*</span></label>
                            <input type="email" class="form-control" placeholder="Ingresa tu correo electrónico" required  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" title="Muestre un correo valido">
                        </div>
                        <div class="form-group mb-3">
                            <label class="font-weight-bold">Contraseña <span class="text-danger">*</span></label>
                            <input type="password" class="form-control" placeholder="Ingresa una contraseña" required>
                        </div>
                        <div class="form-group mb-3">
                            <label class="font-weight-bold">Telfono 1 <span class="text-danger">*</span></label>
                            <input id="tel_cel2" type="text" class="form-control" placeholder="Ingresa tu numero de contacto" required>
                        </div>
                        <div class="form-group mb-3">
                            <label class="font-weight-bold">Telefono 2</label>
                            <input id="tel_cel2" type="text" class="form-control" placeholder="Ingresa tu celular">
                        </div>
                        <div class="form-group mb-3">
                            <label class="font-weight-bold">Domicilio <span class="text-danger">*</span></label>
                            <input id="domicilio" type="text" class="form-control" placeholder="Calle, numero, Localidad y ciudad" required>
                        </div>
                        <div class="form-group mb-5">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" required>
                                <label class="form-check-label text-muted">Al seleccionar esta casilla aceptas nuestro aviso de privacidad y los términos y condiciones</label>
                            </div>
                        </div>
                        <button class="btn btn-primary width-100">Regístrate</button>
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

