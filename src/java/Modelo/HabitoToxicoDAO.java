
package Modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class HabitoToxicoDAO {
    HabitoToxico habito = new HabitoToxico();
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    //Validar si existe HabitoToxico
    public HabitoToxico ValidarHabitoToxico(String HabitoToxico){
        
        String sql = "Select * from HabitoToxico where HabitoToxico=?";
        try {
            con=cn.Conectar();
            ps=con.prepareStatement(sql);
            ps.setString(1, HabitoToxico);
            rs=ps.executeQuery();
            while(rs.next()){
                habito.setIdHabitoToxico(rs.getString("IdHabitoToxico"));
                habito.setHabitoToxico(rs.getString("HabitoToxico"));
            }
        } catch (Exception e) {
        }
        return habito;
    }
    //Insertar Nuevo HabitoToxico
    public void InsertarHabito(String habito){
        String clave = "";
        Random rnd = new Random();
        for (int i = 0; i < 10; i++){
            if(i < 4){
                clave += rnd.nextInt(10);
            }
            else{
                clave += (char)(rnd.nextInt(91) + 65);
            }
        }
        String sql = "INSERT INTO HabitoToxico (IdHabitoToxico,HabitoToxico)\n" +
        "	VALUES (?,?);";
        try {
            con = cn.Conectar();
            ps=con.prepareStatement(sql);
            ps.setString(1, clave);
            ps.setString(2, habito);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    //Retorna la Lista de HabitoToxico
    public List<HabitoToxico> getHabitoToxicos(){
        List<HabitoToxico> lista = new ArrayList<>();
        String sql = "Select * from HabitoToxico order by HabitoToxico asc;";
        try {
            con=cn.Conectar();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                habito = new HabitoToxico();
                habito.setIdHabitoToxico(rs.getString("IdHabitoToxico"));
                habito.setHabitoToxico(rs.getString("HabitoToxico"));
                lista.add(habito);
            }
        } catch (Exception e) {
        }
        
        return lista;
    }
}
