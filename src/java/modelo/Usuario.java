
package modelo;

import java.sql.PreparedStatement;

/**
 *
 * @author ricar
 */
public class Usuario {
    private int id_usuario;
    private String nombre;
    private String ap_pat;
    private String ap_mat;
    private String correo_electronico;
    private String contrasena;
    private boolean existe;
    private int rol;
    
    public int getRol() {
        return rol;
    }

    public void setRol(int rol) {
        this.rol = rol;
    }
    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getAp_pat() {
        return ap_pat;
    }

    public void setAp_pat(String ap_pat) {
        this.ap_pat = ap_pat;
    }

    public String getAp_mat() {
        return ap_mat;
    }

    public void setAp_mat(String ap_mat) {
        this.ap_mat = ap_mat;
    }

    public String getCorreo_electronico() {
        return correo_electronico;
    }

    public void setCorreo_electronico(String correo_electronico) {
        this.correo_electronico = correo_electronico;
    }

    public String getContrasena() {
        return contrasena;
    }

    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }

    public boolean isExiste() {
        return existe;
    }

    public void setExiste(boolean existe) {
        this.existe = existe;
    }

    public Usuario() {
        
    }
    public boolean addUsuario() {   
        try {
            final String SQL = " Insert into usuario (nombre, apellido_paterno, apellido_materno, correo_electronico,contrasena,id_rol) values(?,?,?,?,?,?)";
            Conexion conexion = new Conexion();
            PreparedStatement sentencia = conexion.obtenerConexion().prepareStatement(SQL);
            sentencia.setString(1, getNombre());
            sentencia.setString(2, getAp_pat());
            sentencia.setString(3, getAp_mat());
            sentencia.setString(4, getCorreo_electronico());
            sentencia.setString(5, getContrasena());
            sentencia.setInt(6, getRol());
            sentencia.executeUpdate();
            return true; 
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
    
}
