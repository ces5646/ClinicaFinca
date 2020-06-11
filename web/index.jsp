<%-- 
    Document   : index
    Created on : 20/04/2020, 07:50:21 PM
    Author     : CESAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="img/iconopesta.png" type="image/png">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clinica Medica</title>
    </head>
    <body>
        <div class="card-body d-flex">
            <div class="container mt-4 col-lg-4">
                <div class="card  col-sm-10">
                    <div class="card-body">
                        <form class="form-sign" action="Validar" method="POST"><!--dirige al packages Controlador Controladorvalidar-->
                            <div class="form-group text-center">
                                <h3>Login</h3>
                                <img src="img/usuario.png" alt="70" width="150"/>
                                <label>Bienvenidos al Sistema Médico</label>
                            </div>
                            <div class="form-group">
                                <label>Usuario:</label>
                                <input type="text" name="txtuser" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Password:</label>
                                <input type="password" name="txtpass" class="form-control">
                            </div><br>
                            <input type="submit" name="accion" value="Ingresar" class="btn btn-primary btn-block">
                        </form>
                    </div>   
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
</html>
