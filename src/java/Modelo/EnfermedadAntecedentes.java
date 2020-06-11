package Modelo;

public class EnfermedadAntecedentes {
    private String idEnfermedad;
    private String enfermedad;

    public EnfermedadAntecedentes() {
    }

    public EnfermedadAntecedentes(String id, String enfermedad) {
        this.idEnfermedad = idEnfermedad;
        this.enfermedad = enfermedad;
    }

    public String getIdEnfermedad() {
        return idEnfermedad;
    }

    public void setIdEnfermedad(String id) {
        this.idEnfermedad = idEnfermedad;
    }

    public String getEnfermedad() {
        return enfermedad;
    }

    public void setEnfermedad(String enfermedad) {
        this.enfermedad = enfermedad;
    }
    
    
}
