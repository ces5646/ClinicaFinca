/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.AdultoAsoc;
import Modelo.AdultoAsocDAO;
import Modelo.AlergiaMedicamento;
import Modelo.AlergiaMedicamentoDAO;
import Modelo.EnfermedadAntecedentes;
import Modelo.EnfermedadAntecedentesDAO;
import Modelo.HabitoToxico;
import Modelo.HabitoToxicoDAO;
import Modelo.Quirurgico;
import Modelo.QuirurgicoDAO;
import Modelo.Traumatologico;
import Modelo.TraumatologicoDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author CESAR
 */
public class Controlador extends HttpServlet {
    
    AdultoAsocDAO aduDAO = new AdultoAsocDAO();
    AdultoAsoc adulaso = new AdultoAsoc();
    EnfermedadAntecedentes enfermedad = new EnfermedadAntecedentes();
    EnfermedadAntecedentesDAO enfermedadDAO = new EnfermedadAntecedentesDAO();
    AlergiaMedicamento medi = new AlergiaMedicamento();
    AlergiaMedicamentoDAO mediDAO = new AlergiaMedicamentoDAO();
    HabitoToxico habito = new HabitoToxico();
    HabitoToxicoDAO habitoDAO = new HabitoToxicoDAO();
    Traumatologico trauma = new Traumatologico();
    TraumatologicoDAO traumaDAO = new TraumatologicoDAO();
    Quirurgico quirur = new Quirurgico();
    QuirurgicoDAO quirurDAO = new QuirurgicoDAO();


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
            
            String menu = request.getParameter("menu");
            String accion = request.getParameter("accion");
            
            if(menu.equals("Principal")){
                request.getRequestDispatcher("Principal.jsp").forward(request, response);
            }
            if(menu.equals("Adulto")){
                request.getRequestDispatcher("Adulto.jsp").forward(request, response);
            }
            if(menu.equals("Adultoasociado")){
                switch(accion){
                    //Busca Paciente en AdultoAsociado.jsp
                    case "Buscar Paciente":
                        String cues = request.getParameter("CodigoPaciente");
                        int cue = Integer.valueOf(cues);
                        adulaso.setCue(cue);
                        adulaso = aduDAO.BuscarPaciente(cue);
                        request.setAttribute("adultoPaciente", adulaso); 
                        break;
                    //Guardar en AdultoAsociado.jsp
                    case "Guardar":
                        String Femenina = request.getParameter("GeneroPaciente");
                        String sexo = request.getParameter("GeneroPaciente");
                        
                        if(Femenina.equals("Femenino")){
                            request.getRequestDispatcher("Ago.jsp").forward(request, response);
                            
                        } break;
                    //Guardar en Ago.jsp
                    case "Guardar ":  
                        String Embarazo = request.getParameter("OpcionEmbarazo");
                        if(Embarazo.equals("SI")){
                            request.getRequestDispatcher("Embarazo.jsp").forward(request, response);
                            
                        } break;
                        
                    case "Nueva Enfermedad":
                        String NuevoAntecedente = request.getParameter("AntecedenteEnfermedad").toUpperCase();
                        if(NuevoAntecedente!=""){
                            enfermedad = enfermedadDAO.ValidarEnfermedad(NuevoAntecedente);
                            if(enfermedad.getEnfermedad()!=null){}
                            else{
                                enfermedadDAO.InsertarEnfermedad(NuevoAntecedente);
                            }
                            request.setAttribute("adultoPaciente", adulaso);
                        }
                    break;
                    
                    case "Nueva Traumatologia":
                        String NuevoTraumatologico = request.getParameter("AntecedenteTraumatologico").toUpperCase();
                        if(NuevoTraumatologico!=""){
                            trauma = traumaDAO.ValidaTraumatologico(NuevoTraumatologico);
                            if(trauma.getTraumatologico()!=null){}
                            else{
                                traumaDAO.InsertarTraumatologico(NuevoTraumatologico);
                            }
                            request.setAttribute("adultoPaciente", adulaso);
                        }
                    break;
                    
                    case "Nueva Quirurgico":
                        String NuevoQuirurgico = request.getParameter("AntecedenteQuirurgico").toUpperCase();
                        if(NuevoQuirurgico!=""){
                            quirur = quirurDAO.ValidaQuirurgico(NuevoQuirurgico);
                            if(quirur.getQuirurgico()!=null){}
                            else{
                                quirurDAO.InsertarQuirurgico(NuevoQuirurgico);
                            }
                            request.setAttribute("adultoPaciente", adulaso);
                        }
                    break;
                    
                    case "Nuevo Medicamento":
                        String NuevoMedicamento = request.getParameter("NuevoMedicamento").toUpperCase();
                        if(NuevoMedicamento!=""){
                            medi = mediDAO.ValidarMedicamento(NuevoMedicamento);
                            if(medi.getMedicamento()!=null){}
                            else{
                                mediDAO.InsertarMedicamento(NuevoMedicamento);
                            }
                        request.setAttribute("adultoPaciente", adulaso);
                        }
                    break;
                    
                    case "Nuevo Habito":
                        String NuevoHabito = request.getParameter("NuevoHabito").toUpperCase();
                        if(NuevoHabito!=""){
                            habito = habitoDAO.ValidarHabitoToxico(NuevoHabito);
                            if(habito.getHabitoToxico()!=null){}
                            else{
                                habitoDAO.InsertarHabito(NuevoHabito);
                            }
                            request.setAttribute("adultoPaciente", adulaso);
                        }
                }
                request.getRequestDispatcher("Adultoasociado.jsp").forward(request, response);
            }
            if(menu.equals("Ago")){
                request.getRequestDispatcher("Ago.jsp").forward(request, response);
            }
            if(menu.equals("Pediatria")){
                request.getRequestDispatcher("Pediatria.jsp").forward(request, response);
            }
            if(menu.equals("Embarazo")){
                request.getRequestDispatcher("Embarazo.jsp").forward(request, response);
            }
            if(menu.equals("IngresoDatos")){
                request.getRequestDispatcher("IngresoDatos.jsp").forward(request, response);
            }
            
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    //vienen de Adultoasociado.jsp
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //llama al metodo que esta en la parte de arriba
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
