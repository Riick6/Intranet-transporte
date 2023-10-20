package Modelo;

public class Terminal {
    private int id_terminal;
    private int id_estado;
    private String nombre_terminal;
    private String direccion;

    public int getId_terminal() {
        return id_terminal;
    }

    public void setId_terminal(int id_terminal) {
        this.id_terminal = id_terminal;
    }

    public int getId_estado() {
        return id_estado;
    }

    public void setId_estado(int id_estado) {
        this.id_estado = id_estado;
    }

    public String getNombre_terminal() {
        return nombre_terminal;
    }

    public void setNombre_terminal(String nombre_terminal) {
        this.nombre_terminal = nombre_terminal;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }
    
}
