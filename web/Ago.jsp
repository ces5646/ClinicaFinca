<%-- 
    Document   : Ago
    Created on : 22/04/2020, 07:34:29 PM
    Author     : CESAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <title>Clinica / Palo Blanco</title>
    </head>
    <body>
        <div class="d-flex">
            <div class="col-sm-18">
                <div class="card" style="border:none">
                    <form action="Controlador?menu=Adultoasociado" method="POST">
                        <div class="card-body">
                            <div class="form-group">
                                <h2>Datos de Ago</h2>
                            </div>
                            <div class="form-group d-flex">     
                                <div class="col-sm-2">
                                    <label>Fum</label>
                                    <input type="text" name="FumPaciente" class="form-control" placeholder="Fum">
                                </div>
                                <div class="col-sm-2">
                                    <label>Menarquia</label>
                                    <input type="text" name="MenarquiaPaciente" class="form-control" placeholder="Menarquia">
                                </div>
                                <div class="col-sm-2">
                                    <label>Coitarquia</label>
                                    <input type="text" name="CoitarquiaPaciente" class="form-control" placeholder="Coitarquia">
                                </div>
                                <div class="col-sm-2">
                                    <label>Gestacion</label>
                                    <input type="number" name="GestacionPaciente" class="form-control" placeholder="Gestacion">
                                </div>
                                <div class="col-sm-2">
                                    <label>Abortos</label>
                                    <input type="number" name="AbortosPaciente" class="form-control" placeholder="Abortos">
                                </div>
                                <div class="col-sm-2">
                                    <label>Partos</label>
                                    <input type="number" name="PartosPaciente" class="form-control" placeholder="Partos">
                                </div>
                            </div>
                        </div>
                     
                        <div class="card-body">
                            <div class="form-group d-flex">
                               <div class="col-sm-2">
                                    <label>Cesareas</label>
                                    <input type="number" name="CesareasPaciente" class="form-control" placeholder="Cesareas">
                                </div>
                                <div class="col-sm-2">
                                    <label>Ectópicos</label>
                                    <input type="number" name="EctopicosPaciente" class="form-control" placeholder="Ectopicos">
                                </div>
                                <div class="col-sm-2">
                                <h6>Ciclo</h6>
                                <input class="form-check-input" name="Irregular" type="checkbox" id="Irregular">
                                <label class="form-check-label" for="Irregular">Irregular</label><br>
                                <input class="form-check-input" name="Regular" type="checkbox" id="Regular">
                                <label class="form-check-label" for="Regular">Regular</label><br>
                                </div>
                                <div class="col-sm-2">
                                <h6>Mac</h6>
                                <input class="form-check-input" name="inyectable1mes" type="checkbox" id="inyectable1mes">
                                <label class="form-check-label" for="inyectable1mes">inyectable 1 mes</label><br>
                                <input class="form-check-input" name="inyectable3mes" type="checkbox" id="inyectable3mes">
                                <label class="form-check-label" for="inyectable3mes">inyectable 3 mes</label><br>
                                <input class="form-check-input" name="Tcobre" type="checkbox" id="Tcobre">
                                <label class="form-check-label" for="Tcobre">T de cobre</label><br>
                                <input class="form-check-input" name="Jadelle" type="checkbox" id="Jadelle">
                                <label class="form-check-label" for="Jadelle">Jadelle</label><br>
                                <input class="text" name="OtroMAc" class="form-control" placeholder="Otros">
                                </div>
                                <div class="col-sm-2">
                                    <h6>Pap</h6>
                                    <input type="date" name="FechaPap" class="form-control" placeholder="Fecha del Resultado"><br>
                                    <input type="text" name="ResultadoPap" class="form-control" placeholder="Resultado">
                                </div>
                                <div class="col-sm-2">
                                <h6>Embarazo</h6>
                                <input type="text" name="OpcionEmbarazo" class="form-control" placeholder="SI/NO">
                                </div>
                            </div>
                        </div>
                                    
                                   
                    <div dropdown ml-auto>
                        <div class="card-body">
                            <div class="form-group d-flex">
                                <div class="col-sm-2">
                                    <input type="submit" name="accion" value="Guardar " class="btn btn-primary btn-block">
                                </div>
                                <div class="col-sm-2">
                                    <input type="submit" name="accion" value="Nuevo" class="btn btn-primary btn-block">
                                </div>
                            </div>
                        </div>
                    </div>    
              
                   </form>

                </div>
             </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    
    </body>
</html>
