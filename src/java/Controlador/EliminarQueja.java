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


public class EliminarQueja extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String idQueja = request.getParameter("id-queja-delete");
            
            Queja que = new Queja();
            que.setId_queja(idQueja);

            CRUD crud = new CRUD();
            crud.EliminarQueja(que);

            response.sendRedirect(request.getContextPath() + "/vista/Quejas.jsp");// Reemplaza "exito.jsp" con la página que desees mostrar después de editar.
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, ex);
            ex.printStackTrace();
            response.sendRedirect(request.getContextPath() + "/vista/Quejas.jsp");
        }
    }

}