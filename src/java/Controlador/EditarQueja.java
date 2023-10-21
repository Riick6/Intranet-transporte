package Controlador;

import Modelo.Administrador; // Importa la clase Administrador o el modelo que utilices
import DAO.*;
import Modelo.Queja;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;


public class EditarQueja extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Recupera los datos del formulario
            String idQueja = request.getParameter("id-modal");
            String asunto = request.getParameter("asunto-modal");
            String descripcion = request.getParameter("descripcion-modal");
            
            // Crea un objeto Administrador con los datos
            Queja que = new Queja();
            que.setId_queja(idQueja);
            que.setAsunto(asunto);
            que.setDesc(descripcion);

            // Llama al método para editar el administrador en la base de datos
            CRUD crud = new CRUD();
            crud.EditarQueja(que);

            // Redirige a una página de éxito o a donde desees
            response.sendRedirect(request.getContextPath() + "/vista/Quejas.jsp");// Reemplaza "exito.jsp" con la página que desees mostrar después de editar.
        } catch (Exception ex) {
            // Maneja cualquier error que pueda ocurrir
            ex.printStackTrace();
            response.sendRedirect(request.getContextPath() + "/vista/Quejas.jsp");
        }
    }

}
