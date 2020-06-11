package config;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {
    private String url="jdbc:mysql://mysql.us.cloudlogin.co:3306/paloblanco_fp";
    private String user="paloblanco_fp";
    private String pass="1234joa1234";
    Connection con;
    
    public Connection Conectar(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection(url,user,pass);
        } catch (Exception e) {
        }
    return con;
    }
    
}
