package Modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UsuarioDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    public Usuario validarusuario(String user, String pass){
        Usuario em = new Usuario();
        String sql = "Select * from users where username=? and password=?";
        try {
            con=cn.Conectar();
            ps=con.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs=ps.executeQuery();
            while(rs.next()){
                em.setId(rs.getInt("id"));
                em.setUsuario(rs.getString("username"));
                em.setContraseña(rs.getString("password"));
                em.setCorreo(rs.getString("email"));
            }
        } catch (Exception e) {
        }
            return em;
    }
}
