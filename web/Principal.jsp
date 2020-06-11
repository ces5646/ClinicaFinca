
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="img/iconopesta2.png" type="image/png">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clinica / Palo Blanco</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-info">
            <nav class="navbar navbar-inverse bg-inverse navbar-toggleable-sm">
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                  <div class="navbar-nav mr-auto  txt-center">
                    <a style="margin-left: 10px; border: none" class="btn btn-outline-light" href="Controlador?menu=Adulto" target="myFrame">Familia</a>
                    <a style="margin-left: 10px; border: none" class="btn btn-outline-light" href="Controlador?menu=Adultoasociado&accion=accion" target="myFrame">Adulto Trabajador</a>
                    <a style="margin-left: 10px; border: none" class="btn btn-outline-light" href="Controlador?menu=Ago" target="myFrame">Ago</a>
                    <a style="margin-left: 10px; border: none" class="btn btn-outline-light" href="Controlador?menu=Pediatria" target="myFrame">Pediatría</a>
                    <a style="margin-left: 10px; border: none" class="btn btn-outline-light" href="Controlador?menu=Embarazo" target="myFrame">Embarazo</a>
                    <a style="margin-left: 10px; border: none" class="btn btn-outline-light" href="Controlador?menu=IngresoDatos" target="myFrame">Ingreso Datos</a>
                  </div>   
                </div>
            </nav>

            <div class="dropdown ml-auto">
                <button style="border: none" class="btn btn-outline-light dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  ${usuario.getCorreo()}
                </button>
                <div class="dropdown-menu text-center" aria-labelledby="dropdownMenuButton">
                    <a class="dropdown-item" href="#">
                        <img src="img/usuarioregistrado.png" alt="60" width="60"/>
                    </a>
                    <a class="dropdown-item" href="#">${usuario.getUsuario()}</a>
                    <div class="dropdown-divider"></div>
                    <form action="Validar" method="POST">
                        <button name="accion" value="Salir" class="dropdown-item" href="#">Salir</button>
                    </form>
                </div>
            </div>
        </nav>
        
        <div class="m-4" style="height: 615px">
            <iframe name="myFrame" style="height: 100%; width: 100%; border: none"></iframe>
        </div>
        
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
</html>
