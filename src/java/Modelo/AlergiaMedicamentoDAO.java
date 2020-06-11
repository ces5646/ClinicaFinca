
package Modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class AlergiaMedicamentoDAO {
    AlergiaMedicamento medicamento = new AlergiaMedicamento();
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    //Validar si existe el Medicamento
    public AlergiaMedicamento ValidarMedicamento(String Medicamento){
        String sql = "Select * from Alergia where Alergia=?";
        try {
            con=cn.Conectar();
            ps=con.prepareStatement(sql);
            ps.setString(1, Medicamento);
            rs=ps.executeQuery();
            while(rs.next()){
                medicamento.setIdMedicamento(rs.getString("IdAlergia"));
                medicamento.setMedicamento(rs.getString("Alergia"));
            }
        } catch (Exception e) {
        }
        
        return medicamento;
    }
    //Insertar Nuevo Medicamento
    public void InsertarMedicamento(String Medicamento){
        String clave = "";
        Random rnd = new Random();
        //Genera la clave primaria que esta en Varchar en base
        for (int i = 0; i < 10; i++){
            if(i < 4){
                clave += rnd.nextInt(10);
            }
            else{
                clave += (char)(rnd.nextInt(91) + 65);
            }
        }
        String sql = "INSERT INTO Alergia (IdAlergia,Alergia)\n" +
        "	VALUES (?,?);";
            try {
                con = cn.Conectar();
                ps=con.prepareStatement(sql);
                ps.setString(1, clave);
                ps.setString(2, Medicamento);
                ps.executeUpdate();
            } catch (Exception e) {
            }
    }
    
    //Retorna la Lista de Enfermedad
    public List<AlergiaMedicamento> getAlergiaMedicamentos(){
        List<AlergiaMedicamento> lista = new ArrayList<>();
        String sql = "Select * from Alergia order by Alergia asc;";
        try {
            con=cn.Conectar();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                medicamento = new AlergiaMedicamento();
                medicamento.setIdMedicamento(rs.getString("IdAlergia"));
                medicamento.setMedicamento(rs.getString("Alergia"));
                lista.add(medicamento);
            } 
        } catch (Exception e) {
        }
        
        return lista;
    }
}
