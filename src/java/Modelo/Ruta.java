package Modelo;

public class Ruta {
    private int terminal_inicial;
    private int terminal_final;
    private int id_ruta;
    private int id_estado;

    public int getTerminal_final() {
        return terminal_final;
    }

    public void setTerminal_final(int terminal_final) {
        this.terminal_final = terminal_final;
    }

    public int getTerminal_inicial() {
        return terminal_inicial;
    }

    public void setTerminal_inicial(int terminal_inicial) {
        this.terminal_inicial = terminal_inicial;
    }

    public int getId_ruta() {
        return id_ruta;
    }

    public void setId_ruta(int id_ruta) {
        this.id_ruta = id_ruta;
    }

    public int getId_estado() {
        return id_estado;
    }

    public void setId_estado(int id_estado) {
        this.id_estado = id_estado;
    }  
}
