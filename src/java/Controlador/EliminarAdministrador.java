package Controlador;

import Modelo.Administrador; // Importa la clase Administrador o el modelo que utilices
import DAO.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;


public class EliminarAdministrador extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String idAdministrador = request.getParameter("id-admin-delete");
            
            Administrador admin = new Administrador();
            admin.setId_administrador(Integer.parseInt(idAdministrador));

            CRUD crud = new CRUD();
            crud.EliminarAdministrador(admin);

            response.sendRedirect(request.getContextPath() + "/vista/Administradores.jsp");// Reemplaza "exito.jsp" con la página que desees mostrar después de editar.
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, ex);
            ex.printStackTrace();
            response.sendRedirect(request.getContextPath() + "/vista/Administradores.jsp");
        }
    }

}