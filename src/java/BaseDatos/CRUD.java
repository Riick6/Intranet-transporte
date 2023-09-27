package BaseDatos;

import Modelo.*;
import javax.swing.JOptionPane;

public class CRUD extends Conexion {

    public CRUD() {
    }

    public void InsertarAdministrador(Administrador adm) {
        try {
            String sqlInsert
                    = "INSERT INTO administrador(nombre,apellido,dni,genero,edad,celular,correo,contraseña) "
                    + "VALUE (?,?,?,?,?,?,?,?);";
            ps = con.prepareStatement(sqlInsert);
            ps.setString(1, adm.getNombre());
            ps.setString(2, adm.getApellido());
            ps.setString(3, adm.getDni());
            ps.setString(4, adm.getGenero());
            ps.setInt(5, adm.getEdad());
            ps.setString(6, adm.getCelular());
            ps.setString(7, adm.getCorreo());
            ps.setString(8, adm.getContraseña());
            ps.executeUpdate();

        } catch (Exception ex) {
            System.out.println("ERRRRORRR");
            JOptionPane.showMessageDialog(null,
                    "ERROR no se puede insertar " + ex);
        }
    }

}
