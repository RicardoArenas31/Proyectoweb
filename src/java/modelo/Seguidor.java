
package modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Seguidor extends Usuario{
    private String sexo;
    private int edad;  
    
    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }
    
    public boolean addSeguidor() {   
        try {
            Conexion conexion = new Conexion();
             final String SQL1 = " Insert into seguidor (id_usuario, sexo, edad) values((Select id_usuario from usuario where correo_electronico=?),?,?)";
            PreparedStatement sentencia = conexion.getConnection().prepareStatement(SQL1);
            sentencia.setString(1, getCorreo_electronico());
            sentencia.setString(2, getSexo());
            sentencia.setInt(3, getEdad());
            sentencia.executeUpdate();
            return true;          
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}
