
package Modelo;

public class AlergiaMedicamento {
    private String idMedicamento;
    private String Medicamento;

    public AlergiaMedicamento() {
    }

    public AlergiaMedicamento(String idMedicamento, String Medicamento) {
        this.idMedicamento = idMedicamento;
        this.Medicamento = Medicamento;
    }

    public String getIdMedicamento() {
        return idMedicamento;
    }

    public void setIdMedicamento(String idMedicamento) {
        this.idMedicamento = idMedicamento;
    }

    public String getMedicamento() {
        return Medicamento;
    }

    public void setMedicamento(String Medicamento) {
        this.Medicamento = Medicamento;
    }
    
    
}
