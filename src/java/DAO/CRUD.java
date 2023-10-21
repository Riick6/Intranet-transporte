package DAO;

import Modelo.*;
import javax.swing.JOptionPane;

public class CRUD extends Conexion {

    public CRUD() {
    }

    //INSERTARRRRR
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

    public void InsertarTerminal(Terminal ter) {
        try {
            String sqlInsert = "INSERT INTO terminal(id_terminal,nombre_terminal,direccion,id_estado) VALUES (?,?,?,?);";
            ps = con.prepareStatement(sqlInsert);
            ps.setInt(1, ter.getId_terminal());
            ps.setString(2, ter.getNombre_terminal());
            ps.setString(3, ter.getDireccion());
            ps.setInt(4, ter.getId_estado());
            ps.executeUpdate();
        } catch (Exception ex) {
            System.out.println("ERRRRORRR");
            JOptionPane.showMessageDialog(null,
                    "ERROR no se puede insertar " + ex);
        }
    }

    public void InsertarRuta(Ruta rut) {
        try {
            String sqlInsert = "INSERT INTO ruta(id_estado,id_ruta,terminal_inicial,terminal_final) VALUES (?,?,?,?);";
            ps = con.prepareStatement(sqlInsert);
            ps.setInt(1, rut.getId_estado());
            ps.setInt(2, rut.getId_ruta());
            ps.setInt(3, rut.getTerminal_inicial());
            ps.setInt(4, rut.getTerminal_final());
            ps.executeUpdate();
        } catch (Exception ex) {
            System.out.println("ERRRRORRR");
            JOptionPane.showMessageDialog(null,
                    "ERROR no se puede insertar " + ex);
        }
    }

    public void InsertarBus(Bus bus) {
        try {
            String sqlInsert = "INSERT INTO bus(placa, id_tipo, tarjeta_circulacion, color, marca, año_fabricacion, modelo, peso, altura, ancho, num_asientos) VALUES (?,?,?,?,?,?,?,?,?,?,?);";
            ps = con.prepareStatement(sqlInsert);
            ps.setString(1, bus.getPlaca());
            ps.setInt(2, bus.getId_tipo());
            ps.setString(3, bus.getTarjeta_circulacion());
            ps.setString(4, bus.getColor());
            ps.setString(5, bus.getMarca());
            ps.setInt(6, bus.getAnio_fabricacion());
            ps.setString(7, bus.getModelo());
            ps.setDouble(8, bus.getPeso());
            ps.setDouble(9, bus.getAltura());
            ps.setDouble(10, bus.getAncho());
            ps.setInt(11, bus.getNum_asientos());
            ps.executeUpdate();
        } catch (Exception ex) {
            System.out.println("ERRRRORRR");
            JOptionPane.showMessageDialog(null,
                    "ERROR no se puede insertar " + ex);
        }
    }

    public void InsertarQueja(Queja que) {
        try {
            String sqlInsert = "INSERT INTO quejas(asunto,descripcion) VALUES (?,?);";
            ps = con.prepareStatement(sqlInsert);
            ps.setString(1, que.getAsunto());
            ps.setString(2, que.getDesc());
            ps.executeUpdate();

        } catch (Exception ex) {
            System.out.println("ERRRRORRR");
            JOptionPane.showMessageDialog(null,
                    "ERROR no se puede insertar " + ex);
        }
    }

    public void InsertarChobu(Chofer_Bus chobu) {
        try {
            String sqlInsert = "INSERT INTO bus_chofer(placa,id_chofer,id_tipo,id_estado) VALUES (?,?,?,?);";
            ps = con.prepareStatement(sqlInsert);
            ps.setString(1, chobu.getPlaca());
            ps.setInt(2, chobu.getId_chofer());
            ps.setInt(3, chobu.getId_tipo());
            ps.setInt(4, chobu.getId_estado());
            ps.executeUpdate();

        } catch (Exception ex) {
            System.out.println("ERRRRORRR");
            JOptionPane.showMessageDialog(null,
                    "ERROR no se puede insertar " + ex);
        }
    }

    //EDITAR (ACTUALIZARRRRRR)}
    public void EditarAdministrador(Administrador admin) {

        try {
            String sqlUpdate = "UPDATE administrador SET nombre=?, apellido=?, dni=?, genero=?, edad=?, celular=?, correo=? WHERE id_administrador=?";
            ps = con.prepareStatement(sqlUpdate);
            ps.setString(1, admin.getNombre());
            ps.setString(2, admin.getApellido());
            ps.setString(3, admin.getDni());
            ps.setString(4, admin.getSexo());
            ps.setInt(5, admin.getEdad());
            ps.setString(6, admin.getCelular());
            ps.setString(7, admin.getCorreo());
            ps.setInt(8, admin.getId_administrador());
            ps.executeUpdate();

        } catch (Exception ex) {
            System.out.println("ERROR");
            JOptionPane.showMessageDialog(null, "error no se puede " + ex);
        }
    }

    public void EditarBus(Bus bus) {
        try {
            String sqlUpdate = "UPDATE bus SET id_tipo=?, tarjeta_circulacion=?, color=?, marca=?, año_fabricacion=?, modelo=?, peso=?, altura=?, ancho=?, num_asientos=? WHERE placa=?";
            ps = con.prepareStatement(sqlUpdate);
            ps.setInt(1, bus.getId_tipo());
            ps.setString(2, bus.getTarjeta_circulacion());
            ps.setString(3, bus.getColor());
            ps.setString(4, bus.getMarca());
            ps.setInt(5, bus.getAnio_fabricacion());
            ps.setString(6, bus.getModelo());
            ps.setDouble(7, bus.getPeso());
            ps.setDouble(8, bus.getAltura());
            ps.setDouble(9, bus.getAncho());
            ps.setInt(10, bus.getNum_asientos());
            ps.setString(11, bus.getPlaca());
            ps.executeUpdate();
        } catch (Exception ex) {
            System.out.println("ERROR");
            JOptionPane.showMessageDialog(null, "Error al actualizar el autobús: " + ex);
        }
    }

    public void EditarChofer(Chofer cho) {

        try {
            String sqlUpdate = "UPDATE chofer SET nombre=?, apellido=?, dni=?, genero=?, edad=?, celular=?, email=? WHERE id_chofer=?";
            ps = con.prepareStatement(sqlUpdate);
            ps.setString(1, cho.getNombre());
            ps.setString(2, cho.getApellido());
            ps.setString(3, cho.getDni());
            ps.setString(4, cho.getSexo());
            ps.setInt(5, cho.getEdad());
            ps.setString(6, cho.getCelular());
            ps.setString(7, cho.getEmail());
            ps.setString(8, cho.getId_chofer());
            ps.executeUpdate();

        } catch (Exception ex) {
            System.out.println("ERROR");
            JOptionPane.showMessageDialog(null, "error no se puede " + ex);
        }
    }

    public void EditarQueja(Queja que) {

        try {
            String sqlUpdate = "UPDATE quejas SET asunto=?, descripcion=? WHERE id_tabla=?";
            ps = con.prepareStatement(sqlUpdate);
            ps.setString(1, que.getAsunto());
            ps.setString(2, que.getDesc());
            ps.setString(3, que.getId_queja());
            ps.executeUpdate();

        } catch (Exception ex) {
            System.out.println("ERROR");
            JOptionPane.showMessageDialog(null, "error no se puede " + ex);
        }
    }
    
    public void EditarTerminal(Terminal ter) {

        try {
            String sqlUpdate = "UPDATE terminal SET id_estado=?, nombre_terminal=?, direccion=? WHERE id_terminal=?";
            ps = con.prepareStatement(sqlUpdate);
            ps.setInt(1, ter.getId_estado());
            ps.setString(2, ter.getNombre_terminal());
            ps.setString(3, ter.getDireccion());
            ps.setInt(4, ter.getId_terminal());
            ps.executeUpdate();

        } catch (Exception ex) {
            System.out.println("ERROR");
            JOptionPane.showMessageDialog(null, "error no se puede " + ex);
        }
    }

    //eliminarrrr 
    public void EliminarAdministrador(Administrador admin) {

        try {
            String sqlUpdate = "DELETE from administrador WHERE id_administrador=?";
            ps = con.prepareStatement(sqlUpdate);
            ps.setInt(1, admin.getId_administrador());
            ps.executeUpdate();

        } catch (Exception ex) {
            System.out.println("ERROR");
            JOptionPane.showMessageDialog(null, "error no se puede " + ex);
        }
    }

    public void EliminarChofer(Chofer cho) {

        try {
            String sqlUpdate = "DELETE from chofer WHERE id_chofer=?";
            ps = con.prepareStatement(sqlUpdate);
            ps.setString(1, cho.getId_chofer());
            ps.executeUpdate();

        } catch (Exception ex) {
            System.out.println("ERROR");
            JOptionPane.showMessageDialog(null, "error no se puede " + ex);
        }
    }

    public void EliminarBus(Bus bus) {

        try {
            String sqlUpdate = "DELETE from bus WHERE placa=?";
            ps = con.prepareStatement(sqlUpdate);
            ps.setString(1, bus.getPlaca());
            ps.executeUpdate();

        } catch (Exception ex) {
            System.out.println("ERROR");
            JOptionPane.showMessageDialog(null, "error no se puede " + ex);
        }
    }

    public void EliminarQueja(Queja que) {

        try {
            String sqlUpdate = "DELETE from quejas WHERE id_tabla=?";
            ps = con.prepareStatement(sqlUpdate);
            ps.setString(1, que.getId_queja());
            ps.executeUpdate();

        } catch (Exception ex) {
            System.out.println("ERROR");
            JOptionPane.showMessageDialog(null, "error no se puede " + ex);
        }
    }
    
    public void EliminarTerminal(Terminal ter) {

        try {
            String sqlUpdate = "DELETE from terminal WHERE id_terminal=?";
            ps = con.prepareStatement(sqlUpdate);
            ps.setInt(1, ter.getId_terminal());
            ps.executeUpdate();

        } catch (Exception ex) {
            System.out.println("ERROR");
            JOptionPane.showMessageDialog(null, "error no se puede " + ex);
        }
    }

}
