package Controlador;

import Modelo.Administrador; // Importa la clase Administrador o el modelo que utilices
import DAO.*;
import Modelo.Chofer;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;


public class EditarChofer extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Recupera los datos del formulario
            String idAdministrador = request.getParameter("id-modal");
            String nombre = request.getParameter("nombre-modal");
            String apellido = request.getParameter("apellido-modal");
            String dni = request.getParameter("dni-modal");
            String genero = request.getParameter("genero-modal");
            String edad = request.getParameter("edad-modal");
            String celular = request.getParameter("celular-modal");
            String email = request.getParameter("email-modal");
            
            // Crea un objeto Administrador con los datos
            Chofer cho = new Chofer();
            cho.setId_chofer(idAdministrador);
            cho.setNombre(nombre);
            cho.setApellido(apellido);
            cho.setDni(dni);
            cho.setSexo(genero);
            cho.setEdad(Integer.parseInt(edad));
            cho.setCelular(celular);
            cho.setEmail(email);

            // Llama al método para editar el administrador en la base de datos
            CRUD crud = new CRUD();
            crud.EditarChofer(cho);

            // Redirige a una página de éxito o a donde desees
            response.sendRedirect(request.getContextPath() + "/vista/Choferes.jsp");// Reemplaza "exito.jsp" con la página que desees mostrar después de editar.
        } catch (Exception ex) {
            // Maneja cualquier error que pueda ocurrir
            ex.printStackTrace();
            response.sendRedirect(request.getContextPath() + "/vista/Choferes.jsp");
        }
    }

}
