
package Modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class QuirurgicoDAO {
    Quirurgico quirur = new Quirurgico();
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    //Valida si Existe Quirurgico
    public Quirurgico ValidaQuirurgico(String Quirurgico){
        String sql = "Select * from Quirurgico where Quirurgico=?";
        try {
            con=cn.Conectar();
            ps=con.prepareStatement(sql);
            ps.setString(1, Quirurgico);
            rs=ps.executeQuery();
            while(rs.next()){
                quirur.setIdQuirurgico(rs.getString("IdQuirurgico"));
                quirur.setQuirurgico(rs.getString("Quirurgico"));
            }
        } catch (Exception e) {
        }
        return quirur;
    }
    //Ingresar Quirurgico
    public void InsertarQuirurgico(String Quirurgico){
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
        String sql = "INSERT INTO Quirurgico (IdQuirurgico,Quirurgico)\n" +
        "	VALUES (?,?);";
        try {
            con = cn.Conectar();
            ps=con.prepareStatement(sql);
            ps.setString(1, clave);
            ps.setString(2, Quirurgico);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    //Retorna Lista Quirurgico
    public List<Quirurgico> getQuirurgico(){
        List<Quirurgico> lista = new ArrayList<>();
        String sql = "Select * from Quirurgico order by Quirurgico asc;";
        try {
            con=cn.Conectar();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                quirur = new Quirurgico();
                quirur.setIdQuirurgico(rs.getString("IdQuirurgico"));
                quirur.setQuirurgico(rs.getString("Quirurgico"));
                lista.add(quirur);
            }
        } catch (Exception e) {
        }
        
        return lista;
    }
}
