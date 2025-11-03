/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author Laboratorios
 */
@WebServlet(name = "UsuariosServlet", urlPatterns = {"/UsuariosServlet"})
public class UsuarioServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UsuariosServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UsuariosServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    protected void processParameterErrorRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UsuariosServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>No se encontro el parametro nombre</h1>");
            out.println("</body>");
            out.println("</html>");
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
        String nombre = request.getParameter("nombre");
        if (nombre == null || nombre.isBlank()) {
            processParameterErrorRequest(request, response);
            return;
        }
        String message = String.format("\"Bienvenido %s!\"", nombre);
        response.setContentType("application/json");
        try (PrintWriter out = response.getWriter()) {
            out.println("{ \"mensaje\": " + message + " }");
        }
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
        String nombre = request.getParameter("txt_name");
        String correo = request.getParameter("txt_mail");
        String contrasenia = request.getParameter("txt_password");
        String estado = request.getParameter("radios_colocados");
        String tipoCuenta = request.getParameter("txt_dob");
        String fechaNacimiento = request.getParameter("txt_dob");
        String terminos = request.getParameter("chk_tyc");

        if (terminos.equalsIgnoreCase("aceptado")) {
            String content = String.format("""
                                           Usuario registrado <br/>
                                           Nombre: %s <br/>
                                           Correo:  %s <br/>
                                           Contraseña: ****** <br/>
                                           Estado: %s <br/>
                                           Tipo de cuenta: %s <br/>
                                           Fecha de nacimiento: %s <br/>
                                           """, nombre, correo, estado, tipoCuenta, fechaNacimiento
            );
            response.setContentType("text/html;charset=UTF-8");
            try (PrintWriter out = response.getWriter()) {
                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>");
                out.println("<title>Servlet UsuariosServlet</title>");
                out.println("</head>");
                out.println("<body>");
                out.println("<h1>Usuario registrado</h1>");
                out.println("<h3>+content+</h3>");
                out.println("</body>");
                out.println("</html>");
            }
        }

    }
}
