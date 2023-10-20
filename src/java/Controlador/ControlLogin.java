package Controlador;
//librerias
import DAO.*;
import Modelo.*;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "ControlLogin", urlPatterns = {"/ControlLogin"})

public class ControlLogin extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String accion = request.getParameter("accion");
        try {
            if (accion != null) {
                switch (accion) {
                    case "verificar":
                        VerificarLogin(request, response);
                        break;
                    case "cerrar":
                        CerrarSesion(request, response);
                        break;
                    default:
                        request.getRequestDispatcher("/vista/Login.jsp").forward(request, response);
                }
            } else {
                request.getRequestDispatcher("/vista/Login.jsp").forward(request, response);
            }

        } catch (Exception ex) {
            System.out.println("ERROR : " + ex.getMessage());
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private void VerificarLogin(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("holaaaa");
        try {
            HttpSession sesion;
            DAOusuario dao;
            Administrador user = new Administrador();
            //leyendo los datos del formulario
            user.setCorreo(request.getParameter("email"));
            user.setContra(request.getParameter("password"));

            dao = new DAOusuario();
            Administrador usuario = dao.VerifcarUsuario(user);
            sesion = request.getSession();
            sesion.setAttribute("username", usuario);
             if (usuario != null ) {             
                response.sendRedirect("/Intranet-transporte/intranet.jsp");
             }else {
                request.setAttribute("mensaje", "Credenciales Incorrectas");
                request.getRequestDispatcher("/vista/Login.jsp").forward(request, response);
            }
        } catch (Exception ex) {
            System.out.println("ERROR no se puede verificar " + ex.getMessage());
        }
    }//fin método

    private void CerrarSesion(HttpServletRequest request, HttpServletResponse response) {
        try {
            HttpSession sesion = request.getSession();
            sesion.setAttribute("usuario", null);
            sesion.invalidate();
            response.sendRedirect("../vista/Login.jsp");
        } catch (Exception ex) {
            System.out.println("ERROR no se puede cerrar sesion " + ex.getMessage());
        }
    }

}//fin del servlet