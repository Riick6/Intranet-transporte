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


public class EliminarBus extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String placa = request.getParameter("id-bus-delete");
            
            Bus bus = new Bus();
            bus.setPlaca((placa));

            CRUD crud = new CRUD();
            crud.EliminarBus(bus);

            response.sendRedirect(request.getContextPath() + "/vista/Registro_Buses.jsp");// Reemplaza "exito.jsp" con la página que desees mostrar después de editar.
        } catch (Exception ex) {
            ex.printStackTrace();
            response.sendRedirect(request.getContextPath() + "/vista/Registro_Buses.jsp");
        }
    }

}