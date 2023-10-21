package Controlador;

import Modelo.Administrador; // Importa la clase Administrador o el modelo que utilices
import DAO.*;
import Modelo.Terminal;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;


public class EditarTerminal extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Recupera los datos del formulario
            String idTerminal = request.getParameter("id-modal");
            String estado = request.getParameter("estado-modal");
            String nombreTer = request.getParameter("nombre-modal");
            String direccion = request.getParameter("direccion-modal");
            
            // Crea un objeto Administrador con los datos
            Terminal ter = new Terminal();
            ter.setId_terminal(Integer.parseInt(idTerminal));
            ter.setId_estado(Integer.parseInt(estado));
            ter.setNombre_terminal(nombreTer);
            ter.setDireccion(direccion);

            // Llama al método para editar el administrador en la base de datos
            CRUD crud = new CRUD();
            crud.EditarTerminal(ter);

            // Redirige a una página de éxito o a donde desees
            response.sendRedirect(request.getContextPath() + "/vista/Registro_Terminal.jsp");// Reemplaza "exito.jsp" con la página que desees mostrar después de editar.
        } catch (Exception ex) {
            // Maneja cualquier error que pueda ocurrir
            ex.printStackTrace();
            response.sendRedirect(request.getContextPath() + "/vista/Registro_Terminal.jsp");
        }
    }

}
