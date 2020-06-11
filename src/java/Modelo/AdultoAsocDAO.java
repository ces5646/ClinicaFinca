
package Modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AdultoAsocDAO {

    
    
    public AdultoAsoc BuscarPaciente(int cue){
        Conexion cn = new Conexion();
        AdultoAsoc c = new AdultoAsoc();
        Connection con;
        PreparedStatement ps;
        ResultSet rs;
        int cuevalidar;
        String sql = "select * from informacion_empleados where cue="+cue;     
        try {
            con = cn.Conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                cuevalidar=rs.getInt("cue");
                if(cuevalidar!=0){
                    c.setCue(cuevalidar);                
                    c.setNombre1(rs.getString("nombre1"));
                    c.setNombre2(rs.getString("nombre2"));
                    c.setApellido1(rs.getString("apellido1"));
                    c.setApellido2(rs.getString("apellido2"));
                    c.setGenero(rs.getString("genero"));
                    c.setFechanaci(rs.getString("fecha_nacimiento"));
                    c.setDpi(rs.getString("dpi"));
                    c.setEscolaridad(rs.getString("escolaridad"));
                    c.setDireccion(rs.getString("direccion"));
                    c.setEstadocivil(rs.getString("estado_civil"));
                }

            }
        } catch (Exception e) {
        }
        return c;
    }
    
}
