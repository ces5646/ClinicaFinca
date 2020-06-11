<%-- 
    Document   : Adulto
    Created on : 22/04/2020, 07:34:16 PM
    Author     : CESAR
--%>

<%@page import="Modelo.Quirurgico"%>
<%@page import="Modelo.QuirurgicoDAO"%>
<%@page import="Modelo.Traumatologico"%>
<%@page import="Modelo.TraumatologicoDAO"%>
<%@page import="Modelo.HabitoToxico"%>
<%@page import="Modelo.HabitoToxicoDAO"%>
<%@page import="Modelo.AlergiaMedicamento"%>
<%@page import="Modelo.AlergiaMedicamentoDAO"%>
<%@page import="Modelo.EnfermedadAntecedentes"%>
<%@page import="Modelo.EnfermedadAntecedentesDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="img/iconopesta2.png" type="image/png">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clinica / Palo Blanco</title>
    </head>
    <body>
        <div class="d-flex">
            <div class="col-sm-18">
                <div class="card" style="border:none">
                    <form action="Controlador?menu=Adultoasociado" method="POST"><!--va al packages Controlador Controlador-->
                        <div class="card-body">
                            <div class="form-group">
                                <h2>Datos del Paciente (Trabajador)</h2>
                            </div>
                            <div class="form-group d-flex">
                                <div class="col-sm-3 d-flex">
                                    <input type="number" name="CodigoPaciente" value="${adultoPaciente.getCue()}" class="form-control" placeholder="CUE">
                                    <input type="submit" name="accion" value="Buscar Paciente" class="btn btn-outline-info">    
                                </div>
                            </div>
                            <div class="form-group d-flex">     
                                <div class="col-sm-2">
                                    <label>Primer Nombre</label>
                                    <fieldset disabled>
                                        <input type="text" name="Nombre1Paciente" value="${adultoPaciente.getNombre1()}" class="form-control" placeholder="Primer Nombre">
                                    </fieldset>
                                </div>
                                <div class="col-sm-2">
                                    <label>Segundo Nombre</label>
                                    <fieldset disabled>
                                        <input type="text" name="Nombre2Paciente" value="${adultoPaciente.getNombre2()}" class="form-control" placeholder="Segundo Nombre">
                                    </fieldset>
                                </div>
                                <div class="col-sm-2">
                                    <label>Primer Apellido</label>
                                    <fieldset disabled>
                                        <input type="text" name="Apellido1Paciente" value="${adultoPaciente.getApellido1()}" class="form-control" placeholder="Primer Apellido">
                                    </fieldset>
                                </div>
                                <div class="col-sm-2">
                                    <label>Segundo Apellido</label>
                                    <fieldset disabled>
                                        <input type="text" name="Apellido2Paciente" value="${adultoPaciente.getApellido2()}" class="form-control" placeholder="Segundo Apellido">
                                    </fieldset>
                                </div>
                                <div class="col-sm-2">
                                    <fieldset disabled>
                                        <label>DPI</label>
                                        <input type="text" name="DpiPaciente" value="${adultoPaciente.getDpi()}" class="form-control" placeholder="Dpi">
                                    </fieldset>
                                </div>
                                <div class="col-sm-2">
                                    <fieldset disabled>
                                        <label>Estado Civil</label>
                                        <input type="text" name="EstadoCivilPaciente" value="${adultoPaciente.getEstadocivil()}" class="form-control" placeholder="Estado Civil">
                                    </fieldset>
                                </div>
                                
                            </div>
                     </div>
                     
                     <div class="card-body">
                            <div class="form-group d-flex">
                                <div class="col-sm-2">
                                    <label>Genero</label>
                                    <input type="text" name="GeneroPaciente" value="${adultoPaciente.getGenero()}" class="form-control" placeholder="Genero">
                                </div>
                                <div class="col-sm-3">
                                    <label>Fecha de Nacimiento</label>
                                    <input type="text" name="FechaNaciPaciente" value="${adultoPaciente.getFechanaci()}" class="form-control" placeholder="Fecha Nacimiento: año-mes-dia">
                                </div>
                                <div class="col-sm-2">
                                    <label>Nivel Escolar</label>
                                    <input type="text" name="EscolaridaPaciente" value="${adultoPaciente.getEscolaridad()}" class="form-control" placeholder="Nombre o inicial">
                                </div>
                            </div>
                     </div>
                                    
                     <div class="card-body">
                            <div class="form-group d-flex">
                                <div class="col-sm-7">
                                    <label>Direccion</label>
                                    <input type="text" name="DireccionPaciente" value="${adultoPaciente.getDireccion()}" class="form-control" placeholder="Direccion">
                                </div>
                            </div>
                     </div>

                    <div class="dropdown ml-auto text-center">
                        <h3>ANTECEDENTES</h3>
                    </div> 
                                    
                     <div class="card-body">
                            <div class="form-group d-flex">
                                <div class="form-check col-sm-3">
                                    <h6>PERSONALES</h6>
                                    <%
                                        EnfermedadAntecedentesDAO ea = new EnfermedadAntecedentesDAO();
                                        for (EnfermedadAntecedentes eal : ea.getEnfermedadAntecedentes()) {
                                            out.println("<input type='checkbox' name='antecedentespersonal' value='"+eal.getIdEnfermedad()+"'/>"+eal.getEnfermedad()+"<br>");
                                        }
                                    %>
                                    
                                    <div class="form-group col-sm-18">
                                        <p>
                                            <a class="btn btn-outline-info" data-toggle="collapse" href="#collapseAntecedente" role="button" aria-expanded="false" aria-controls="collapseAntecedente">
                                              Agregar Enfermedad
                                            </a>
                                        </p>
                                        <div class="collapse" id="collapseAntecedente">
                                            <div class="card card-body">
                                                <h7>Ingrese Nueva Enfermedad Personal/Familiar</h7>
                                                <input type="text" name="AntecedenteEnfermedad" class="form-control" placeholder="Ingresar"><br>
                                                <input type="submit" name="accion" value="Nueva Enfermedad" class="btn btn-primary">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="form-check col-sm-3">
                                    <h6>FAMILIARES</h6>
                                    <%
                                        //EnfermedadAntecedentesDAO ea = new EnfermedadAntecedentesDAO();
                                        EnfermedadAntecedentesDAO ea1 = new EnfermedadAntecedentesDAO();
                                        for (EnfermedadAntecedentes eal : ea.getEnfermedadAntecedentes()) {
                                            out.println("<input type='checkbox' name='antecedentefamiliar' value='"+eal.getIdEnfermedad()+"'/>"+eal.getEnfermedad()+"<br>");
                                        }
                                    %>
                                </div>
                                
                                <div class="form-check col-sm-3">
                                    <h6>TRAUMATOLÓGICOS</h6>
                                    
                                    <%
                                        TraumatologicoDAO trauma = new TraumatologicoDAO();
                                        //EnfermedadAntecedentesDAO ea = new EnfermedadAntecedentesDAO();
                                        for (Traumatologico trau : trauma.getTraumatologico()) {
                                            out.println("<input type='checkbox' name='antecedentefamiliar' value='"+trau.getIdTraumatologico()+"'/>"+trau.getTraumatologico()+"<br>");
                                        }
                                    %>
                                    
                                    <div class="form-group col-sm-18">
                                        <p>
                                            <a class="btn btn-outline-info" data-toggle="collapse" href="#collapseAntecedenteTraumatologico" role="button" aria-expanded="false" aria-controls="collapseAntecedenteTraumatologico">
                                              Agregar Traumatologico
                                            </a>
                                        </p>
                                        <div class="collapse" id="collapseAntecedenteTraumatologico">
                                            <div class="card card-body">
                                                <h7>Ingrese Nuevo Traumatologico</h7>
                                                <input type="text" name="AntecedenteTraumatologico" class="form-control" placeholder="Ingresar"><br>
                                                <input type="submit" name="accion" value="Nueva Traumatologia" class="btn btn-primary">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="col-sm-3">
                                    <h6>QUIRURGICOS</h6>
                                    
                                    <%
                                        QuirurgicoDAO quirurDAO = new QuirurgicoDAO();
                                        //EnfermedadAntecedentesDAO ea = new EnfermedadAntecedentesDAO();
                                        for (Quirurgico quirur : quirurDAO.getQuirurgico()) {
                                            out.println("<input type='checkbox' name='antecedentefamiliar' value='"+quirur.getIdQuirurgico()+"'/>"+quirur.getQuirurgico()+"<br>");
                                        }
                                    %>
                                    
                                    <div class="form-group col-sm-18">
                                        <p>
                                            <a class="btn btn-outline-info" data-toggle="collapse" href="#collapseAntecedenteQuirurgico" role="button" aria-expanded="false" aria-controls="collapseAntecedenteQuirurgico">
                                              Agregar Quirurgico
                                            </a>
                                        </p>
                                        <div class="collapse" id="collapseAntecedenteQuirurgico">
                                            <div class="card card-body">
                                                <h7>Ingrese Nuevo Quirurgico</h7>
                                                <input type="text" name="AntecedenteQuirurgico" class="form-control" placeholder="Ingresar"><br>
                                                <input type="submit" name="accion" value="Nueva Quirurgico" class="btn btn-primary">
                                            </div>
                                        </div>
                                    </div>
                                </div>  
                                
                            </div>
                     </div> 
                         
                     <div class="dropdown ml-auto text-center">
                        <h4>OTROS ANTECEDENTES</h4>
                    </div>
                                  
                     <div class="card-body">
                        <div class="form-group d-flex">      
                            <div class="form-check col-sm-3">
                                    <h6>ALERGIA A MEDICAMENTOS</h6>
                                    <div class="form-group col-sm-10">
                                        
                                        <%
                                            AlergiaMedicamentoDAO mediDao = new AlergiaMedicamentoDAO();
                                            for (AlergiaMedicamento medi : mediDao.getAlergiaMedicamentos()) {
                                                out.println("<input type='checkbox' name='antecedentespersonal' value='"+medi.getIdMedicamento()+"'/>"+medi.getMedicamento()+"<br>");
                                            }
                                        %>
                                        <p>
                                            <a class="btn btn-outline-info" data-toggle="collapse" href="#collapseMedicamento" role="button" aria-expanded="false" aria-controls="collapseMedicamento">
                                              Agregar Medicamento
                                            </a>
                                        </p>
                                        <div class="collapse" id="collapseMedicamento">
                                            <div class="card card-body">
                                                <input type="text" name="NuevoMedicamento" class="form-control" placeholder="Ingresar"><br>
                                                <input type="submit" name="accion" value="Nuevo Medicamento" class="btn btn-primary">
                                            </div>
                                        </div>
                                    </div>
                            </div>
                            
                            <div class="form-check col-sm-3">
                                    <h6>TRANSFUSIONES</h6>
                                    <input type="checkbox" name="Notransfusion"
                                            <a data-toggle="collapse" href="#collapseTransfusion"  aria-expanded="false" aria-controls="collapseTransfusion">
                                              SI
                                            </a>
                                    <br>
                                    <div class="collapse" id="collapseTransfusion">
                                            <div class="card card-body">
                                                <input type="text" name="NuevoTransfusion" class="form-control" placeholder="Ingrese la causa"><br>
                                            </div>
                                    </div>
                            </div>
                            
                            <div class="form-check col-sm-3">
                                <h6>HABITOS TOXICOS</h6>
                                <%
                                    HabitoToxicoDAO habitoDao = new HabitoToxicoDAO();
                                    for (HabitoToxico habito : habitoDao.getHabitoToxicos()) {
                                        out.println("<input type='checkbox' name='antecedentespersonal' value='"+habito.getIdHabitoToxico()+"'/>"+habito.getHabitoToxico()+"<br>");
                                    }
                                %>
                                <p>
                                    <a class="btn btn-outline-info" data-toggle="collapse" href="#collapseHabito" role="button" aria-expanded="false" aria-controls="collapseHabito">
                                      Agregar Habito
                                    </a>
                                </p>
                                <div class="collapse" id="collapseHabito">
                                    <div class="card card-body">
                                        <input type="text" name="NuevoHabito" class="form-control" placeholder="Ingresar"><br>
                                        <input type="submit" name="accion" value="Nuevo Habito" class="btn btn-primary">
                                    </div>
                                </div>
                            </div>
                                
                        </div>
                    </div>
                                    
                    <div class="card-body">
                        <div class="form-group d-flex text-center">
                            <div class="col-sm-2">
                                <label>PESO (KG):</label>
                                <input type="number" name="Datos del Paciente" class="form-control" placeholder="Ingresa el peso">
                            </div>
                            <div class="col-sm-2">
                                <label>TALLA (CM):</label>
                                <input type="number" name="Datos del Paciente" class="form-control" placeholder="Ingresa talla">
                            </div>
                        </div>
                    </div>
                                    
                    <div dropdown ml-auto>
                        <div class="card-body">
                            <div class="form-group d-flex">
                                <div class="col-sm-2">
                                    <input type="submit" name="accion" value="Guardar" class="btn btn-primary btn-block">
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
