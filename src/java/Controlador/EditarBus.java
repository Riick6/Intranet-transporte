package Controlador;

import Modelo.Administrador; // Importa la clase Administrador o el modelo que utilices
import DAO.*;
import Modelo.Bus;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;


public class EditarBus extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Recupera los datos del formulario
            String placa = request.getParameter("placa-modal");
            String idtipo = request.getParameter("idtipo-modal");
            String tarjeta = request.getParameter("tarjeta-modal");
            String color = request.getParameter("color-modal");
            String marca = request.getParameter("marca-modal");
            String anio = request.getParameter("anio-modal");
            String modelo = request.getParameter("modelo-modal");
            String peso = request.getParameter("peso-modal");
            String altura = request.getParameter("altura-modal");
            String ancho = request.getParameter("ancho-modal");
            String asientos = request.getParameter("asientos-modal");
            
            // Crea un objeto Administrador con los datos
            Bus bus = new Bus();
            bus.setPlaca((placa));
            bus.setId_tipo(Integer.parseInt(idtipo));
            bus.setTarjeta_circulacion(tarjeta);
            bus.setColor(color);
            bus.setMarca(marca);
            bus.setAnio_fabricacion(Integer.parseInt(anio));
            bus.setModelo(modelo);
            bus.setPeso(Double.parseDouble(peso));
            bus.setAltura(Double.parseDouble(altura));
            bus.setAncho(Double.parseDouble(ancho));
            bus.setNum_asientos(Integer.parseInt(asientos));
            
            // Llama al método para editar el administrador en la base de datos
            CRUD crud = new CRUD();
            crud.EditarBus(bus);

            // Redirige a una página de éxito o a donde desees
            response.sendRedirect(request.getContextPath() + "/vista/Registro_Buses.jsp");// Reemplaza "exito.jsp" con la página que desees mostrar después de editar.
        } catch (Exception ex) {
            // Maneja cualquier error que pueda ocurrir
            ex.printStackTrace();
            response.sendRedirect(request.getContextPath() + "/vista/Registro_Buses.jsp");
        }
    }

}
