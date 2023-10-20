package DAO;

import Modelo.*;
import Interfaces.*;
public class DAOusuario extends Conexion {

    public DAOusuario() {
    }

    public Administrador VerifcarUsuario(Administrador usu) {
        Administrador usuario = null;
        String consulta = "select * from administrador where "
                + "correo=? and contraseña=?";
        try {
            ps = con.prepareStatement(consulta);
            ps.setString(1, usu.getCorreo());
            ps.setString(2, usu.getContra());
            rs = ps.executeQuery();
            if (rs.next()) {
                usuario = new Administrador();
                usuario.setId_administrador(rs.getInt("id_administrador"));
                usuario.setNombre(rs.getString("nombre"));
                usuario.setApellido(rs.getString("apellido"));
                usuario.setDni(rs.getString("dni"));
                usuario.setSexo(rs.getString("genero"));
                usuario.setEdad(rs.getInt("edad"));
                usuario.setCelular(rs.getString("celular"));
                usuario.setCorreo(rs.getString("correo"));
                usuario.setContra(rs.getString("contraseña"));
            }
        } catch (Exception ex) {
            System.out.println("ERROR: " + ex.getMessage());
        }
        return usuario;
    }
}//fin de la clase
