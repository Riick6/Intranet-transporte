package BaseDatos;

import Modelo.*;
import javax.swing.JOptionPane;

public class CRUD extends Conexion {

    public CRUD() {
    }

    public void InsertarAdministrador(Administrador adm) {
        try {
            String sqlInsert = "INSERT INTO administrador(nombre,apellido,dni,genero,edad,celular,correo,contraseña) VALUES (?,?,?,?,?,?,?,?);";
            ps = con.prepareStatement(sqlInsert);
            ps.setString(1, adm.getNombre());
            ps.setString(2, adm.getApellido());
            ps.setString(3, adm.getDni());
            ps.setString(4, adm.getSexo());
            ps.setInt(5, adm.getEdad());
            ps.setString(6, adm.getCelular());
            ps.setString(7, adm.getCorreo());
            ps.setString(8, adm.getContra());
            ps.executeUpdate();

        } catch (Exception ex) {
            System.out.println("ERRRRORRR");
            JOptionPane.showMessageDialog(null,
                    "ERROR no se puede insertar " + ex);
        }
    }
    
    public void InsertarChofer(Chofer cho) {
        try {
            String sqlInsert = "INSERT INTO chofer(id_chofer,dni,nombre,apellido,genero,edad,celular,email) VALUES (?,?,?,?,?,?,?,?);";
            ps = con.prepareStatement(sqlInsert);
            ps.setString(1, cho.getId_chofer());
            ps.setString(2, cho.getDni());
            ps.setString(3, cho.getNombre());
            ps.setString(4, cho.getApellido());
            ps.setString(5, cho.getSexo());
            ps.setInt(6, cho.getEdad());
            ps.setString(7, cho.getCelular());
            ps.setString(8, cho.getEmail());
            ps.executeUpdate();

        } catch (Exception ex) {
            System.out.println("ERRRRORRR");
            JOptionPane.showMessageDialog(null,
                    "ERROR no se puede insertar " + ex);
        }
    }

}
