
package Modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class TraumatologicoDAO {
    Traumatologico trauma = new Traumatologico();
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    //Validar si existe Traumatologico
    public Traumatologico ValidaTraumatologico (String Traumatologico){
        String sql = "Select * from Traumatologico where Traumatologico=?";
        try {
            con=cn.Conectar();
            ps=con.prepareStatement(sql);
            ps.setString(1, Traumatologico);
            rs=ps.executeQuery();
            while(rs.next()){
                trauma.setIdTraumatologico(rs.getString("IdAntecedenteTraumatologico"));
                trauma.setTraumatologico(rs.getString("Traumatologico"));
            }
        } catch (Exception e) {
        }
        return trauma;
    }
    //Insertar Traumatologico
    public void InsertarTraumatologico(String Traumatologico){
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
        String sql = "INSERT INTO Traumatologico (IdAntecedenteTraumatologico,Traumatologico)\n" +
        "	VALUES (?,?);";
        try {
            con = cn.Conectar();
            ps=con.prepareStatement(sql);
            ps.setString(1, clave);
            ps.setString(2, Traumatologico);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    //Retorna Lista Traumatologico
    public List<Traumatologico> getTraumatologico(){
        List<Traumatologico> lista = new ArrayList<>();
        String sql = "Select * from Traumatologico order by Traumatologico asc;";
        try {
            con=cn.Conectar();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                trauma = new Traumatologico();
                trauma.setIdTraumatologico(rs.getString("IdAntecedenteTraumatologico"));
                trauma.setTraumatologico(rs.getString("Traumatologico"));
                lista.add(trauma);
            }
        } catch (Exception e) {
        }
        
        return lista;
    }
   
}
