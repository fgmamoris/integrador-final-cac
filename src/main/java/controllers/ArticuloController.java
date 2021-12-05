/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controllers;

import dao.ArticuloDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.Articulo;
import services.ArticuloDaoImp;

/**
 *
 * @author Federico Mamoris
 */
@WebServlet(name = "ArticuloController", urlPatterns = {"/ArticuloController"})
public class ArticuloController extends HttpServlet {

    private static final long serialVersionUID = 1L;
    ArticuloDaoImp articuloDAO;

    @Override
    public void init() {
        try {

            articuloDAO = new ArticuloDaoImp();
        } catch (Exception e) {
            // TODO: handle exception
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
        String action = request.getParameter("action");
        System.out.println(action);
        try {
            switch (action) {
                case "index":
                    System.out.println("index");
                    index(request, response);
                    break;
                case "":
                    System.out.println("vacio");
                    index(request, response);
                    break;
                case "new":
                    newData(request, response);
                    break;
                case "register":
                    register(request, response);
                    break;
                case "showEdit":
                    showEdit(request, response);
                    break;
                case "show":
                    showAll(request, response);
                    break;
                case "edit":
                    edit(request, response);
                    break;
                case "remove":
                    remove(request, response);
                    break;
                default:
                    index(request, response);
                    break;
            }
        } catch (SQLException e) {
            e.getStackTrace();
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
        doGet(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Servlet CRUD Articulos";
    }// </editor-fold>

    private void index(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        List<Articulo> listaArticulos = articuloDAO.getAll();
        request.setAttribute("lista", listaArticulos);
        System.out.println(listaArticulos.size());
        dispatcher.forward(request, response);
    }

    private void showAll(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("vista/articulos.jsp");
        List<Articulo> listaArticulos = articuloDAO.getAll();
        request.setAttribute("lista", listaArticulos);
        System.out.println(listaArticulos.size());
        dispatcher.forward(request, response);
    }

    private void register(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        Articulo articulo = new Articulo(0, request.getParameter("code"), request.getParameter("name"), request.getParameter("description"), Double.parseDouble(request.getParameter("price")));
        articuloDAO.create(articulo);
        RequestDispatcher dispatcher = request.getRequestDispatcher("vista/articulos.jsp");
        dispatcher.forward(request, response);
    }

    private void newData(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/vista/newData.jsp");
        dispatcher.forward(request, response);
    }

    private void showEdit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        Articulo articulo = articuloDAO.read(Integer.parseInt(request.getParameter("id")));
        request.setAttribute("articulo", articulo);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/vista/editar.jsp");
        dispatcher.forward(request, response);
    }

    private void edit(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        Articulo articulo;
        articulo = new Articulo(0, request.getParameter("code"), request.getParameter("name"), request.getParameter("description"), Double.parseDouble(request.getParameter("price")));
        articuloDAO.update(articulo);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/vista/index.jsp");
        dispatcher.forward(request, response);

    }

    private void remove(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        articuloDAO.delete(Integer.parseInt(request.getParameter("id")));
        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        dispatcher.forward(request, response);
    }
}
