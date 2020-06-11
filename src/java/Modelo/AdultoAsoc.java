
package Modelo;

import java.time.LocalDate;
import java.time.Period;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.GregorianCalendar;

public class AdultoAsoc {
    private int cue;
    private String nombre1;
    private String nombre2;
    private String apellido1;
    private String apellido2;
    private String genero;
    private String fechanaci;
    private String dpi;
    private String escolaridad;
    private String direccion;
    private String estadocivil;

    public AdultoAsoc() {
    }

    public AdultoAsoc(int cue, String nombre1, String nombre2, String apellido1, String apellido2, String genero, String fechanaci, String dpi, String escolaridad, String direccion, String estadocivil) {
        this.cue = cue;
        this.nombre1 = nombre1;
        this.nombre2 = nombre2;
        this.apellido1 = apellido1;
        this.apellido2 = apellido2;
        this.genero = genero;
        this.fechanaci = fechanaci;
        this.dpi = dpi;
        this.escolaridad = escolaridad;
        this.direccion = direccion;
        this.estadocivil = estadocivil;
    }


    

    public int getCue() {
        return cue;
    }

    public void setCue(int cue) {
        this.cue = cue;
    }

    public String getNombre1() {
        return nombre1;
    }

    public void setNombre1(String nombre1) {
        this.nombre1 = nombre1;
    }

    public String getNombre2() {
        return nombre2;
    }

    public void setNombre2(String nombre2) {
        if(nombre2==null || nombre2.equals("")){
            nombre2="No posee";
        }
        this.nombre2 = nombre2;
    }

    public String getApellido1() {
        return apellido1;
    }

    public void setApellido1(String apellido1) {
        this.apellido1 = apellido1;
    }

    public String getApellido2() {
        return apellido2;
    }

    public void setApellido2(String apellido2) {
        if(apellido2==null || apellido2.equals("")){
            apellido2="No posee";
        }
        this.apellido2 = apellido2;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public String getFechanaci() {
        return fechanaci;
    }

    public void setFechanaci(String fechanaci) {
        this.fechanaci = fechanaci;
    }

    public String getDpi() {
        return dpi;
    }

    public void setDpi(String dpi) {
        this.dpi = dpi;
    }

    public String getEscolaridad() {
        return escolaridad;
    }

    public void setEscolaridad(String escolaridad) {
        if(escolaridad==null || escolaridad.equals("")){
            escolaridad="No posee";
        }
        this.escolaridad = escolaridad;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getEstadocivil() {
        return estadocivil;
    }

    public void setEstadocivil(String estadocivil) {
        this.estadocivil = estadocivil;
    }
    
    public String CalcularEdad(){
        String Edad="";
        String EdadAnio = fechanaci.substring(0,4);
        int EdadNumero = Integer.parseInt(EdadAnio);//1992
        Calendar fecha = new GregorianCalendar();
        int anio = fecha.get(Calendar.YEAR);//2020
        int restaAnio=anio-EdadNumero;
        Edad = String.valueOf(restaAnio);
        
        return Edad;
    }
    
}
