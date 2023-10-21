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


public class EliminarTerminal extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String idTerminal = request.getParameter("id-terminal-delete");
            
            Terminal ter = new Terminal();
            ter.setId_terminal(Integer.parseInt(idTerminal));

            CRUD crud = new CRUD();
            crud.EliminarTerminal(ter);

            response.sendRedirect(request.getContextPath() + "/vista/Registro_Terminal.jsp");// Reemplaza "exito.jsp" con la página que desees mostrar después de editar.
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, ex);
            ex.printStackTrace();
            response.sendRedirect(request.getContextPath() + "/vista/Registro_Terminal.jsp");
        }
    }

}