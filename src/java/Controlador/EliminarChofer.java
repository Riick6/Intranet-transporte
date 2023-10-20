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


public class EliminarChofer extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String idAdministrador = request.getParameter("id-chofer-delete");
            
            Chofer cho = new Chofer();
            cho.setId_chofer(idAdministrador);

            CRUD crud = new CRUD();
            crud.EliminarChofer(cho);

            response.sendRedirect(request.getContextPath() + "/vista/Choferes.jsp");// Reemplaza "exito.jsp" con la página que desees mostrar después de editar.
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, ex);
            ex.printStackTrace();
            response.sendRedirect(request.getContextPath() + "/vista/Choferes.jsp");
        }
    }

}