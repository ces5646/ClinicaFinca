package Modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class EnfermedadAntecedentesDAO {
    EnfermedadAntecedentes enfer = new EnfermedadAntecedentes();
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    //Validar si existe Enfermedad de antecedente
    public EnfermedadAntecedentes ValidarEnfermedad(String Enfermedad){
        String sql = "Select * from EnfermedadAntecedentes where enfermedad=?";
        try {
            con=cn.Conectar();
            ps=con.prepareStatement(sql);
            ps.setString(1, Enfermedad);
            rs=ps.executeQuery();
            while(rs.next()){
                enfer.setIdEnfermedad(rs.getString("IdEnfermedad"));
                enfer.setEnfermedad(rs.getString("Enfermedad"));
            }
        } catch (Exception e) {
        }
        return enfer;
    }
    //Inserta Nueva Enfermedad
    public void InsertarEnfermedad(String Enfermedad){
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

        String sql = "INSERT INTO EnfermedadAntecedentes (IdEnfermedad,Enfermedad)\n" +
        "	VALUES (?,?);";
            try {
                con = cn.Conectar();
                ps=con.prepareStatement(sql);
                ps.setString(1, clave);
                ps.setString(2, Enfermedad);
                ps.executeUpdate();
            } catch (Exception e) {
            }
    }
    
    //Retorna la Lista de Enfermedad
    public List<EnfermedadAntecedentes> getEnfermedadAntecedentes(){
        List<EnfermedadAntecedentes> lista = new ArrayList<>();
        String sql = "Select * from EnfermedadAntecedentes order by Enfermedad asc;";
        try {
            con=cn.Conectar();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                enfer = new EnfermedadAntecedentes();
                enfer.setIdEnfermedad(rs.getString("IdEnfermedad"));
                enfer.setEnfermedad(rs.getString("Enfermedad"));
                lista.add(enfer);
            }
           
        } catch (Exception e) {
        }
        
        return lista;
    }
}
